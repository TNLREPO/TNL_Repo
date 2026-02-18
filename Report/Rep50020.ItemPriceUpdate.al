namespace AL_TNL.AL_TNL;

using Microsoft.Inventory.Item;
using Microsoft.Inventory.Ledger;
using Microsoft.Finance.GeneralLedger.Setup;
using Microsoft.Purchases.History;
using Microsoft.Inventory.Setup;
using Microsoft.Sales.Setup;

report 51020 "Item Price Update"
{
    ApplicationArea = All;
    Caption = 'Item Price Update';
    UsageCategory = Lists;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = where("Inventory Posting Group" = filter('<>N_CARS'));
            RequestFilterFields = "Item Price Group";
            column(No; "No.")
            {
            }

            trigger OnAfterGetRecord()

            begin


                SalesSetup.GET;
                IF (SalesSetup."Spare Parts Fixed Cost Markup%" = 0) OR (SalesSetup."Spare Parts Fixed Cost Markup%" < 1) THEN
                    ERROR('Markup Percentage for Spare Part is incorrect or not setup. Contact your System Administrator');

                IF (SalesSetup."SP Fixed Exch. Rate USD" = 0) OR (SalesSetup."SP Fixed Exch. Rate USD" < 1) THEN
                    ERROR('The fixed Exchange Rate for Spare Part pricing is incorrect or not setup. Contact your System Administrator');

                IF (SalesSetup."SP Fixed Exch. Rate JPY" = 0) OR (SalesSetup."SP Fixed Exch. Rate JPY" < 1) THEN
                    ERROR('The fixed Exchange Rate for Spare Part pricing is incorrect or not setup. Contact your System Administrator');

                //IF (SalesSetup."SP Fixed Exch. Rate CNY" = 0) OR (SalesSetup."SP Fixed Exch. Rate CNY" < 1)  THEN
                //  ERROR('The fixed Exchange Rate for Spare Part pricing is incorrect or not setup. Contact your System Administrator');

                //IF Rec."Last Direct Cost" <> xRec."Last Direct Cost" THEN BEGIN

                ItemRec.GET("No.");

                ItemLedEntry.SETCURRENTKEY("Item No.", "Document Type");
                ItemLedEntry.SETFILTER(ItemLedEntry."Item No.", ItemRec."No.");
                ItemLedEntry.SETFILTER(ItemLedEntry."Document Type", 'Purchase Receipt');
                IF ItemLedEntry.FINDLAST THEN BEGIN
                    //Filter Value Entry Table by this entry no (where 'Item Ledger Entry No.' = ItemLedEntry."Entry No.")
                    ValueEntry.SETCURRENTKEY("Item Ledger Entry No.", "Document No.", "Document Line No.");
                    ValueEntry.SETFILTER(ValueEntry."Item Ledger Entry No.", '%1', ItemLedEntry."Entry No.");
                    //and get Purchase Invoice Document No
                    IF ValueEntry.FINDFIRST THEN BEGIN
                        //Filter Purch. Inv Hdr with Doc No and get Currency Code
                        IF PurchInvHeader.GET(ValueEntry."Document No.") THEN
                            IF (PurchInvHeader."Currency Code" = 'USD') OR (PurchInvHeader."Currency Code" = 'JPY') OR (PurchInvHeader."Currency Code" = 'CNY') THEN BEGIN
                                IF PurchInvHeader."Currency Code" = 'USD' THEN FixedExchRate := SalesSetup."SP Fixed Exch. Rate USD";

                                IF PurchInvHeader."Currency Code" = 'JPY' THEN FixedExchRate := SalesSetup."SP Fixed Exch. Rate JPY";

                                IF PurchInvHeader."Currency Code" = 'CNY' THEN FixedExchRate := SalesSetup."SP Fixed Exch. Rate CNY";

                                //Then filter Purch. Inv. Line with Document No and Item No and get "Direct Unit Cost Excl VAT"
                                PurchInvLine.SETCURRENTKEY("Document No.", "Line No.");
                                PurchInvLine.SETFILTER(PurchInvLine."Document No.", ValueEntry."Document No.");
                                PurchInvLine.SETFILTER(PurchInvLine."No.", ItemRec."No.");
                                IF PurchInvLine.FINDFIRST THEN
                                    ItemRec."Fixed Cost" := (1 + SalesSetup."Spare Parts Fixed Cost Markup%" / 100) * FixedExchRate * PurchInvLine."Direct Unit Cost";
                                ItemRec."FOB (FIXED)" := FixedExchRate * PurchInvLine."Direct Unit Cost";
                            END ELSE BEGIN
                                //Then filter Purch. Inv. Line with Document No and Item No and get "Direct Unit Cost Excl VAT"
                                PurchInvLine.SETCURRENTKEY("Document No.", "Line No.");
                                PurchInvLine.SETFILTER(PurchInvLine."Document No.", ValueEntry."Document No.");
                                PurchInvLine.SETFILTER(PurchInvLine."No.", ItemRec."No.");
                                IF PurchInvLine.FINDFIRST THEN
                                    ItemRec."Fixed Cost" := (1 + SalesSetup."Spare Parts Fixed Cost Markup%" / 100) * PurchInvLine."Direct Unit Cost";
                                ItemRec."FOB (FIXED)" := PurchInvLine."Direct Unit Cost";

                            END;
                    END;
                    "Fixed Cost" := ItemRec."Fixed Cost";
                    "FOB (FIXED)" := ItemRec."FOB (FIXED)";
                    MODIFY;
                END;

                //Updating Prices of Parts Without Purchases Last direct Cost

                InvtSetup.GET;
                ItemLedEntry.SETCURRENTKEY("Item No.", "Document Type");
                ItemLedEntry.SETFILTER("Item No.", "No.");
                ItemLedEntry.SETFILTER("Document Type", 'Purchase Receipt');
                //JAO to be run after running the one below//IF NOT ItemLedEntry.FINDFIRST THEN BEGIN
                IF ItemLedEntry.FINDFIRST THEN BEGIN
                    IF FixedPrice.GET("No.") THEN BEGIN
                        "Fixed Cost" := (1.35) * InvtSetup."Exchange Rate" * FixedPrice."Unit Cost";
                        "FOB (FIXED)" := InvtSetup."Exchange Rate" * FixedPrice."Unit Cost";
                        //     "Fixed Cost" :=  (1.35)* 1600 * FixedPrice."Unit Cost";    
                        //     "FOB (FIXED)" := 1600 * FixedPrice."Unit Cost" ;
                        MODIFY;
                    END;

                    IF FixedPrice2.GET("No.") THEN BEGIN
                        "Fixed Cost" := (1.35) * InvtSetup."Exchange Rate" * FixedPrice2."Unit Cost";
                        "FOB (FIXED)" := InvtSetup."Exchange Rate" * FixedPrice2."Unit Cost";
                        //     "Fixed Cost" :=  (1.35) * 1600 * FixedPrice2."Unit Cost";
                        //     "FOB (FIXED)" := 1600 * FixedPrice2."Unit Cost" ;
                        MODIFY;
                    END;
                END;


                //Validate Unit Price

                IF (ItemRec."Inventory Posting Group" = 'N_PARTS') OR (ItemRec."Inventory Posting Group" = 'ACCESSORY') THEN BEGIN
                    //ItemRec.TESTFIELD("Item Price Group");
                    IF PriceGrp.GET(ItemRec."Item Price Group") THEN
                        ItemRec."TNL Profit %" := PriceGrp."Profit % On Cost B4 Discount";
                    "TNL Profit %" := ItemRec."TNL Profit %";
                    MODIFY;
                END;

                IF ItemRec."TNL Profit %" < 100 THEN BEGIN
                    //GetGLSetup;
                    GLSetup.Get();
                    //TESTFIELD("Inventory Posting Group");
                    IF (ItemRec."Inventory Posting Group" = 'N_PARTS') OR (ItemRec."Inventory Posting Group" = 'ACCESSORY') THEN
                        ItemRec."Unit Price" :=
                                 ROUND(ItemRec."Fixed Cost" * (1 + (ItemRec."TNL Profit %" / 100)) * (1 + CalcVAT),
                                 GLSetup."Unit-Amount Rounding Precision");
                    "Unit Price" := ItemRec."Unit Price";
                    MODIFY;
                END;
                //END;



                IF ("Inventory Posting Group" = 'N_PARTS') OR ("Inventory Posting Group" = 'ACCESORIES') THEN BEGIN
                    TESTFIELD("Item Price Group");
                    IF PriceGrp.GET("Item Price Group") THEN
                        "TNL Profit %" := PriceGrp."Profit % On Cost B4 Discount";
                END;
                VALIDATE("Last Direct Cost");

                CASE "Price/Profit Calculation" OF
                    "Price/Profit Calculation"::"Profit=Price-Cost":
                        IF "Unit Price" <> 0 THEN
                            IF "Unit Cost" = 0 THEN
                                "Profit %" := 0
                            ELSE
                                "Profit %" :=
                                  ROUND(
                                    100 * (1 - "Unit Cost" /
                                           ("Unit Price" / (1 + CalcVAT))), 0.00001)
                        ELSE
                            "Profit %" := 0;
                    "Price/Profit Calculation"::"Price=Cost+Profit":
                        IF "Profit %" < 100 THEN BEGIN
                            GLSetup.Get();
                            //TESTFIELD("Inventory Posting Group");
                            IF ("Inventory Posting Group" = 'N_PARTS') OR ("Inventory Posting Group" = 'ACCESORIES') THEN BEGIN
                                "Unit Price" :=
                                         ROUND("Fixed Cost" * (1 + ("TNL Profit %" / 100)) * (1 + CalcVAT),
                                         GLSetup."Unit-Amount Rounding Precision");

                            END ELSE BEGIN
                                "Unit Price" :=
                                  ROUND(
                                    ("Unit Cost" / (1 - "Profit %" / 100)) *
                                    (1 + CalcVAT),
                                    GLSetup."Unit-Amount Rounding Precision");
                            END;

                        END;
                END;



                Validate("Price/Profit Calculation");
                Modify();

            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }

    var
        SalesSetup: Record "Sales & Receivables Setup";
        InvtSetup: Record "Inventory Setup";
        ItemRec: Record Item;
        ItemLedEntry: Record "Item Ledger Entry";
        ValueEntry: Record "Value Entry";
        PurchInvHeader: Record "Purch. Inv. Header";
        FixedExchRate: Decimal;
        PurchInvLine: Record "Purch. Inv. Line";
        FixedPrice: Record "Fixed Price2";
        FixedPrice2: Record "Fixed Price3";
        GLSetup: Record "General Ledger Setup";
        PriceGrp: Record "Item Price Group";

}
