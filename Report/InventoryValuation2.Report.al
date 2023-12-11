report 50351 "Inventory Valuation2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './InventoryValuation2.rdlc';
    Caption = 'Inventory Valuation';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (Inventory Posting Group);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Inventory Posting Group", "Statistics Group";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(STRSUBSTNO___1___2__Item_TABLECAPTION_ItemFilter_; STRSUBSTNO('%1: %2', Item.TABLECAPTION, ItemFilter))
            {
            }
            column(STRSUBSTNO_Text005_StartDateText_; STRSUBSTNO(Text005, StartDateText))
            {
            }
            column(EmptyString; '')
            {
            }
            column(EmptyString_Control46; '')
            {
            }
            column(EmptyString_Control47; '')
            {
            }
            column(STRSUBSTNO_Text005_FORMAT_EndDate__; STRSUBSTNO(Text005, FORMAT(EndDate)))
            {
            }
            column(EmptyString_Control57; '')
            {
            }
            column(StartDate; StartDate)
            {
            }
            column(EndDate; EndDate)
            {
            }
            column(ShowExpected; ShowExpected)
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(STRSUBSTNO_Text006__Inventory_Posting_Group__; STRSUBSTNO(Text006, "Inventory Posting Group"))
            {
            }
            column(STRSUBSTNO_Text007__Inventory_Posting_Group__; STRSUBSTNO(Text007, "Inventory Posting Group"))
            {
            }
            column(ValueOfInvoicedQty; ValueOfInvoicedQty)
            {
                AutoFormatType = 1;
            }
            column(ValueOfInvIncreases; ValueOfInvIncreases)
            {
                AutoFormatType = 1;
            }
            column(CostOfInvDecreases; CostOfInvDecreases)
            {
                AutoFormatType = 1;
            }
            column(Value_Entry___Cost_Amount__Actual__; "Value Entry"."Cost Amount (Actual)")
            {
            }
            column(InvCostPostedToGL; InvCostPostedToGL)
            {
                AutoFormatType = 1;
            }
            column(InvoicedQty; InvoicedQty)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvIncreases; InvIncreases)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvDecreases; InvDecreases)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvoicedQtyInvIncreasesInvDecreases; InvoicedQty + InvIncreases - InvDecreases)
            {
            }
            column(STRSUBSTNO_Text008__Inventory_Posting_Group__; STRSUBSTNO(Text008, "Inventory Posting Group"))
            {
            }
            column(ValueOfQtyOnHand; ValueOfQtyOnHand)
            {
                AutoFormatType = 1;
            }
            column(ValueOfRcdIncreases; ValueOfRcdIncreases)
            {
                AutoFormatType = 1;
            }
            column(CostOfShipDecreases; CostOfShipDecreases)
            {
                AutoFormatType = 1;
            }
            column(ValueOfQtyOnHand___ValueOfRcdIncreases___CostOfShipDecreases; ValueOfQtyOnHand + ValueOfRcdIncreases - CostOfShipDecreases)
            {
                AutoFormatType = 1;
            }
            column(CostPostedToGL; CostPostedToGL)
            {
                AutoFormatType = 1;
            }
            column(InvoicedQty1; InvoicedQty)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvIncreases1; InvIncreases)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvDecreases1; InvDecreases)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvoicedQtyInvIncreasesInvDecreases1; InvoicedQty + InvIncreases - InvDecreases)
            {
            }
            column(ExpCostPostedToGL; ExpCostPostedToGL)
            {
                AutoFormatType = 1;
            }
            column(STRSUBSTNO_Text009__Inventory_Posting_Group__; STRSUBSTNO(Text009, "Inventory Posting Group"))
            {
            }
            column(Value_Entry___Cost_Amount__Actual___Control80; "Value Entry"."Cost Amount (Actual)")
            {
            }
            column(CostOfInvDecreases_Control82; CostOfInvDecreases)
            {
                AutoFormatType = 1;
            }
            column(ValueOfInvIncreases_Control83; ValueOfInvIncreases)
            {
                AutoFormatType = 1;
            }
            column(ValueOfInvoicedQty_Control84; ValueOfInvoicedQty)
            {
                AutoFormatType = 1;
            }
            column(InvCostPostedToGL_Control18; InvCostPostedToGL)
            {
                AutoFormatType = 1;
            }
            column(InvoicedQty2; InvoicedQty)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvIncreases2; InvIncreases)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvDecreases2; InvDecreases)
            {
                DecimalPlaces = 0 : 5;
            }
            column(InvoicedQtyInvIncreasesInvDecreases2; InvoicedQty + InvIncreases - InvDecreases)
            {
            }
            column(ValueOfQtyOnHand_Control25; ValueOfQtyOnHand)
            {
                AutoFormatType = 1;
            }
            column(ValueOfRcdIncreases_Control26; ValueOfRcdIncreases)
            {
                AutoFormatType = 1;
            }
            column(CostOfShipDecreases_Control27; CostOfShipDecreases)
            {
                AutoFormatType = 1;
            }
            column(ValueOfQtyOnHand___ValueOfRcdIncreases___CostOfShipDecreases_Control48; ValueOfQtyOnHand + ValueOfRcdIncreases - CostOfShipDecreases)
            {
                AutoFormatType = 1;
            }
            column(CostPostedToGL_Control19; CostPostedToGL)
            {
                AutoFormatType = 1;
            }
            column(ExpCostPostedToGL_Control51; ExpCostPostedToGL)
            {
                AutoFormatType = 1;
            }
            column(Inventory_ValuationCaption; Inventory_ValuationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(This_report_includes_entries_that_have_been_posted_with_expected_costs_Caption; This_report_includes_entries_that_have_been_posted_with_expected_costs_CaptionLbl)
            {
            }
            column(Value_Entry__Item_No__Caption; "Value Entry".FIELDCAPTION("Item No."))
            {
            }
            column(Item_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Item__Bill_of_Materials_Caption; CAPTIONCLASSTRANSLATE(Item.FIELDCAPTION("Assembly BOM")))
            {
            }
            column(Item__Base_Unit_of_Measure_Caption; FIELDCAPTION("Base Unit of Measure"))
            {
            }
            column(InvIncreasesCaption; InvIncreasesCaptionLbl)
            {
            }
            column(InvDecreasesCaption; InvDecreasesCaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(ValueCaption; ValueCaptionLbl)
            {
            }
            column(ValueCaption_Control28; ValueCaption_Control28Lbl)
            {
            }
            column(QuantityCaption_Control31; QuantityCaption_Control31Lbl)
            {
            }
            column(ValueCaption_Control32; ValueCaption_Control32Lbl)
            {
            }
            column(QuantityCaption_Control40; QuantityCaption_Control40Lbl)
            {
            }
            column(InvCostPostedToGL_Control53Caption; InvCostPostedToGL_Control53CaptionLbl)
            {
            }
            column(ValueCaption_Control56; ValueCaption_Control56Lbl)
            {
            }
            column(QuantityCaption_Control58; QuantityCaption_Control58Lbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Expected_Cost_Included_TotalCaption; Expected_Cost_Included_TotalCaptionLbl)
            {
            }
            column(Expected_Cost_TotalCaption; Expected_Cost_TotalCaptionLbl)
            {
            }
            column(Item_No_; "No.")
            {
            }
            column(Item_Inventory_Posting_Group; "Inventory Posting Group")
            {
            }
            dataitem(DataItem8894; Table5802)
            {
                DataItemTableView = SORTING (Item No., Posting Date, Item Ledger Entry Type);
                column(InvCostPostedToGL_Control53; InvCostPostedToGL)
                {
                    AutoFormatType = 1;
                }
                column(Value_Entry__Value_Entry___Cost_Amount__Actual__; "Value Entry"."Cost Amount (Actual)")
                {
                }
                column(Value_Entry__Invoiced_Quantity_; "Invoiced Quantity")
                {
                }
                column(CostOfInvDecreases_Control21; CostOfInvDecreases)
                {
                    AutoFormatType = 1;
                }
                column(InvDecreases3; InvDecreases)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(ValueOfInvIncreases_Control16; ValueOfInvIncreases)
                {
                    AutoFormatType = 1;
                }
                column(InvIncreases3; InvIncreases)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(ValueOfInvoicedQty_Control15; ValueOfInvoicedQty)
                {
                    AutoFormatType = 1;
                }
                column(InvoicedQty3; InvoicedQty)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(Item__Base_Unit_of_Measure_; Item."Base Unit of Measure")
                {
                }
                column(Item__Bill_of_Materials_; FORMAT(Item."Assembly BOM"))
                {
                }
                column(Item_Description; Item.Description)
                {
                }
                column(Value_Entry__Item_No__; "Item No.")
                {
                }
                column(QtyOnHand; QtyOnHand)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(ValueOfQtyOnHand_Control50; ValueOfQtyOnHand)
                {
                    AutoFormatType = 1;
                }
                column(RcdIncreases; RcdIncreases)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(ValueOfRcdIncreases_Control45; ValueOfRcdIncreases)
                {
                    AutoFormatType = 1;
                }
                column(ShipDecreases; ShipDecreases)
                {
                    DecimalPlaces = 0 : 5;
                }
                column(CostOfShipDecreases_Control44; CostOfShipDecreases)
                {
                    AutoFormatType = 1;
                }
                column(Value_Entry__Item_Ledger_Entry_Quantity_; "Item Ledger Entry Quantity")
                {
                }
                column(ValueOfQtyOnHand___ValueOfRcdIncreases___CostOfShipDecreases_Control43; ValueOfQtyOnHand + ValueOfRcdIncreases - CostOfShipDecreases)
                {
                    AutoFormatType = 1;
                }
                column(CostPostedToGL_Control17; CostPostedToGL)
                {
                    AutoFormatType = 1;
                }
                column(Expected_Cost_IncludedCaption; Expected_Cost_IncludedCaptionLbl)
                {
                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    QtyOnHand := 0;
                    RcdIncreases := 0;
                    ShipDecreases := 0;
                    ValueOfQtyOnHand := 0;
                    ValueOfInvoicedQty := 0;
                    InvoicedQty := 0;

                    ValueOfRcdIncreases := 0;
                    ValueOfInvIncreases := 0;
                    InvIncreases := 0;

                    CostOfShipDecreases := 0;
                    CostOfInvDecreases := 0;
                    InvDecreases := 0;

                    IsPositive := GetSign;
                    IF "Item Ledger Entry Quantity" <> 0 THEN BEGIN
                        IF "Posting Date" < StartDate THEN
                            QtyOnHand := "Item Ledger Entry Quantity"
                        ELSE BEGIN
                            IF IsPositive THEN
                                RcdIncreases := "Item Ledger Entry Quantity"
                            ELSE
                                ShipDecreases := -"Item Ledger Entry Quantity";
                        END;
                    END;

                    IF "Posting Date" < StartDate THEN
                        SetAmount(ValueOfQtyOnHand, ValueOfInvoicedQty, InvoicedQty, 1)
                    ELSE BEGIN
                        IF IsPositive THEN
                            SetAmount(ValueOfRcdIncreases, ValueOfInvIncreases, InvIncreases, 1)
                        ELSE
                            SetAmount(CostOfShipDecreases, CostOfInvDecreases, InvDecreases, -1);
                    END;

                    ValueOfQtyOnHand := ValueOfQtyOnHand + ValueOfInvoicedQty;
                    ValueOfRcdIncreases := ValueOfRcdIncreases + ValueOfInvIncreases;
                    CostOfShipDecreases := CostOfShipDecreases + CostOfInvDecreases;

                    ExpCostPostedToGL := "Expected Cost Posted to G/L";
                    InvCostPostedToGL := "Cost Posted to G/L";
                    CostPostedToGL := ExpCostPostedToGL + InvCostPostedToGL;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Item No.", Item."No.");
                    SETFILTER("Variant Code", Item.GETFILTER("Variant Filter"));
                    SETFILTER("Location Code", Item.GETFILTER("Location Filter"));
                    SETFILTER("Global Dimension 1 Code", Item.GETFILTER("Global Dimension 1 Filter"));
                    SETFILTER("Global Dimension 2 Code", Item.GETFILTER("Global Dimension 2 Filter"));
                    IF EndDate <> 0D THEN
                        SETRANGE("Posting Date", 0D, EndDate);

                    CurrReport.CREATETOTALS(QtyOnHand, RcdIncreases, ShipDecreases, "Item Ledger Entry Quantity", InvoicedQty, InvIncreases,
                      InvDecreases, "Value Entry"."Invoiced Quantity");
                    CurrReport.CREATETOTALS(
                      ValueOfQtyOnHand, ValueOfRcdIncreases, CostOfShipDecreases, CostPostedToGL, ExpCostPostedToGL,
                      ValueOfInvoicedQty, ValueOfInvIncreases, CostOfInvDecreases, "Value Entry"."Cost Amount (Actual)",
                      InvCostPostedToGL);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CALCFIELDS("Assembly BOM");
                InvandShipDiffer := FALSE;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS(QtyOnHand, RcdIncreases, ShipDecreases, "Value Entry"."Item Ledger Entry Quantity");
                CurrReport.CREATETOTALS(InvoicedQty, InvIncreases, InvDecreases);
                CurrReport.CREATETOTALS(
                  ValueOfQtyOnHand, ValueOfRcdIncreases, CostOfShipDecreases, CostPostedToGL, ExpCostPostedToGL);
                CurrReport.CREATETOTALS(
                  ValueOfInvoicedQty, ValueOfInvIncreases, CostOfInvDecreases,
                  "Value Entry"."Cost Amount (Actual)", InvCostPostedToGL);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(StartDate; StartDate)
                    {
                        Caption = 'Starting Date';
                    }
                    field(EndDate; EndDate)
                    {
                        Caption = 'Ending Date';
                    }
                    field(ShowExpected; ShowExpected)
                    {
                        Caption = 'Include Expected Cost';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            IF (StartDate = 0D) AND (EndDate = 0D) THEN
                EndDate := WORKDATE;
        end;
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        IF (StartDate = 0D) AND (EndDate = 0D) THEN
            EndDate := WORKDATE;

        IF StartDate IN [0D, 01010000D] THEN
            StartDateText := ''
        ELSE
            StartDateText := FORMAT(StartDate - 1);

        ItemFilter := Item.GETFILTERS;
    end;

    var
        Text005: Label 'As of %1';
        Text006: Label 'Inventory Posting Group: %1';
        Text007: Label 'Inventory Posting Group Total: %1';
        Text008: Label 'Expected Cost Included Total: %1';
        Text009: Label 'Expected Cost Total: %1';
        StartDate: Date;
        EndDate: Date;
        ShowExpected: Boolean;
        ItemFilter: Text[250];
        StartDateText: Text[10];
        ValueOfInvoicedQty: Decimal;
        ValueOfQtyOnHand: Decimal;
        ValueOfInvIncreases: Decimal;
        ValueOfRcdIncreases: Decimal;
        CostOfInvDecreases: Decimal;
        CostOfShipDecreases: Decimal;
        InvCostPostedToGL: Decimal;
        CostPostedToGL: Decimal;
        InvoicedQty: Decimal;
        QtyOnHand: Decimal;
        InvIncreases: Decimal;
        RcdIncreases: Decimal;
        InvDecreases: Decimal;
        ShipDecreases: Decimal;
        ExpCostPostedToGL: Decimal;
        InvandShipDiffer: Boolean;
        IsPositive: Boolean;
        Inventory_ValuationCaptionLbl: Label 'Inventory Valuation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        This_report_includes_entries_that_have_been_posted_with_expected_costs_CaptionLbl: Label 'This report includes entries that have been posted with expected costs.';
        InvIncreasesCaptionLbl: Label 'Increases (LCY)';
        InvDecreasesCaptionLbl: Label 'Decreases (LCY)';
        QuantityCaptionLbl: Label 'Quantity';
        ValueCaptionLbl: Label 'Value';
        ValueCaption_Control28Lbl: Label 'Value';
        QuantityCaption_Control31Lbl: Label 'Quantity';
        ValueCaption_Control32Lbl: Label 'Value';
        QuantityCaption_Control40Lbl: Label 'Quantity';
        InvCostPostedToGL_Control53CaptionLbl: Label 'Cost Posted to G/L';
        ValueCaption_Control56Lbl: Label 'Value';
        QuantityCaption_Control58Lbl: Label 'Quantity';
        TotalCaptionLbl: Label 'Total';
        Expected_Cost_Included_TotalCaptionLbl: Label 'Expected Cost Included Total';
        Expected_Cost_TotalCaptionLbl: Label 'Expected Cost Total';
        Expected_Cost_IncludedCaptionLbl: Label 'Expected Cost Included';

    [Scope('Internal')]
    procedure InvAndShipDiffers(): Boolean
    begin
        EXIT(
          (QtyOnHand + RcdIncreases - ShipDecreases) <>
          (InvoicedQty + InvIncreases - InvDecreases));
    end;

    [Scope('Internal')]
    procedure GetSign(): Boolean
    begin
        WITH "Value Entry" DO
            CASE "Item Ledger Entry Type" OF
                "Item Ledger Entry Type"::Purchase,
              "Item Ledger Entry Type"::"Positive Adjmt.",
              "Value Entry"."Item Ledger Entry Type"::"Negative Adjmt.",
              "Item Ledger Entry Type"::Output:
                    EXIT(TRUE);
                "Item Ledger Entry Type"::Transfer:
                    BEGIN
                        IF "Valued Quantity" < 0 THEN
                            EXIT(FALSE)
                        ELSE
                            EXIT(GetOutboundItemEntry("Item Ledger Entry No."));
                    END;
                ELSE
                    EXIT(FALSE)
            END;
    end;

    [Scope('Internal')]
    procedure SetAmount(var CostAmtExp: Decimal; var CostAmtActual: Decimal; var InvQty: Decimal; Sign: Integer)
    begin
        WITH "Value Entry" DO BEGIN
            CostAmtExp := "Cost Amount (Expected)" * Sign;
            CostAmtActual := "Cost Amount (Actual)" * Sign;
            InvQty := "Invoiced Quantity" * Sign;
        END;
    end;

    local procedure GetOutboundItemEntry(ItemLedgerEntryNo: Integer): Boolean
    var
        ItemApplnEntry: Record "339";
        ItemLedgEntry: Record 32;
    begin
        ItemApplnEntry.SETCURRENTKEY("Item Ledger Entry No.");
        ItemApplnEntry.SETRANGE("Item Ledger Entry No.", ItemLedgerEntryNo);
        IF NOT ItemApplnEntry.FIND('-') THEN
            EXIT(TRUE);

        ItemLedgEntry.SETRANGE("Item No.", Item."No.");
        ItemLedgEntry.SETFILTER("Variant Code", Item.GETFILTER("Variant Filter"));
        ItemLedgEntry.SETFILTER("Location Code", Item.GETFILTER("Location Filter"));
        ItemLedgEntry.SETFILTER("Global Dimension 1 Code", Item.GETFILTER("Global Dimension 1 Filter"));
        ItemLedgEntry.SETFILTER("Global Dimension 2 Code", Item.GETFILTER("Global Dimension 2 Filter"));
        ItemLedgEntry."Entry No." := ItemApplnEntry."Outbound Item Entry No.";
        EXIT(NOT ItemLedgEntry.FIND);
    end;

    [Scope('Internal')]
    procedure SetStartDate(DateValue: Date)
    begin
        StartDate := DateValue;
    end;

    [Scope('Internal')]
    procedure SetEndDate(DateValue: Date)
    begin
        EndDate := DateValue;
    end;
}

