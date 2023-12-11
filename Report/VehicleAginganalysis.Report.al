report 50347 "Vehicle Aging analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VehicleAginganalysis.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Item No.)
                                WHERE (Inventory Posting Group=CONST(N_CARS),
                                      Remaining Quantity=CONST(1));
            RequestFilterFields = "Posting Date","Inventory Posting Group","Entry Type";
            column(FORMAT_TODAY_0_4_;FORMAT(TODAY,0,4))
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(USERID;USERID)
            {
            }
            column(Item_Ledger_Entry__Item_No__;"Item No.")
            {
            }
            column(Item_Ledger_Entry__Remaining_Quantity_;"Remaining Quantity")
            {
            }
            column(Item_Ledger_Entry__Document_No__;"Document No.")
            {
            }
            column(Item_Ledger_Entry__Location_Code_;"Location Code")
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry__Serial_No__;"Serial No.")
            {
            }
            column(Item_Ledger_Entry__Engine_No__;"Engine No.")
            {
            }
            column(Purch_Date_;"Purch Date")
            {
            }
            column(ExtDocNo;ExtDocNo)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000016;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry__Remaining_Quantity__Control1000000019;"Remaining Quantity")
            {
            }
            column(Item_Ledger_EntryCaption;Item_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(Item_Ledger_Entry__Remaining_Quantity_Caption;FIELDCAPTION("Remaining Quantity"))
            {
            }
            column(Item_Ledger_Entry__Document_No__Caption;FIELDCAPTION("Document No."))
            {
            }
            column(Item_Ledger_Entry__Location_Code_Caption;FIELDCAPTION("Location Code"))
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__Caption;FIELDCAPTION("Cost Amount (Actual)"))
            {
            }
            column(Item_Ledger_Entry__Serial_No__Caption;FIELDCAPTION("Serial No."))
            {
            }
            column(Item_Ledger_Entry__Engine_No__Caption;FIELDCAPTION("Engine No."))
            {
            }
            column(Purchase_DateCaption;Purchase_DateCaptionLbl)
            {
            }
            column(External_Document_No_Caption;External_Document_No_CaptionLbl)
            {
            }
            column(Item_Ledger_Entry_Entry_No_;"Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            var
                SerialNo: Code[20];
            begin
                /*SerialNo := '';
                ItemLedgEntry.SETCURRENTKEY("Entry Type","Serial No.",Open,Positive,"Posting Date");
                ItemLedgEntry.SETRANGE("Entry Type",0);
                ItemLedgEntry.SETRANGE(ItemLedgEntry."Serial No.");
                ItemLedgEntry.SETFILTER("Serial No.",'<>%1','');
                ItemLedgEntry.SETRANGE(Positive,TRUE);
                ItemLedgEntry.SETRANGE(Open,FALSE);
                IF ItemLedgEntry.FINDSET THEN REPEAT
                  IF SerialNo <> ItemLedgEntry."Serial No." THEN BEGIN
                    SerialNo := ItemLedgEntry."Serial No.";
                    ItemLedgEntry2.SETCURRENTKEY("Entry Type","Serial No.",Open,Positive,"Posting Date");
                    ItemLedgEntry2.SETRANGE(ItemLedgEntry2."Serial No.",SerialNo);
                    ItemLedgEntry2.SETRANGE("Entry Type",0);
                    ItemLedgEntry2.SETRANGE(Positive,TRUE);
                    ItemLedgEntry2.SETRANGE(Open,FALSE);    */
                ItemLedgEntry.SETCURRENTKEY("Entry Type","Serial No.",Open,Positive,"Posting Date");
                ItemLedgEntry.SETRANGE("Entry Type",0);
                ItemLedgEntry.SETFILTER(ItemLedgEntry."Serial No.","Serial No.");
                ItemLedgEntry.SETRANGE(Positive,TRUE);
                
                    IF ItemLedgEntry.FINDFIRST THEN BEGIN
                        "Purch Date" := ItemLedgEntry."Posting Date";
                        ExtDocNo := ItemLedgEntry."External Document No.";
                    END;
                 /* END;
                UNTIL ItemLedgEntry.NEXT = 0;*/

            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        ItemLedgEntry: Record "32";
        ItemLedgEntry2: Record "32";
        "Purch Date": Date;
        ExtDocNo: Text[30];
        Item_Ledger_EntryCaptionLbl: Label 'Item Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Purchase_DateCaptionLbl: Label 'Purchase Date';
        External_Document_No_CaptionLbl: Label 'External Document No.';
}

