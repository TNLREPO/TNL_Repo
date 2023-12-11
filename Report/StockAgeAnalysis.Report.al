report 50447 "Stock Age Analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockAgeAnalysis.rdlc';

    dataset
    {
        dataitem(ReportData; Table2000000026)
        {
            DataItemTableView = SORTING (Number);

            trigger OnAfterGetRecord()
            begin

                //N_PARTS
                Item.RESET;
                Item.SETCURRENTKEY("Inventory Posting Group");
                Item.SETFILTER("Inventory Posting Group", 'N_PARTS');
                IF Item.FINDSET THEN
                    REPEAT
                        IF Item."Costing Method" = Item."Costing Method"::Average THEN
                            ItemCostMgt.CalculateAverageCost(Item, AverageCost, AverageCostACY);
                        ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                        ItemLedgEntry.SETRANGE("Item No.", Item."No.");
                        ItemLedgEntry.SETRANGE(Open, TRUE);
                        ItemLedgEntry.SETFILTER("Posting Date", Year[ReportData.Number]);
                        IF ItemLedgEntry.FINDSET THEN
                            REPEAT
                                LinesNpart[ReportData.Number] += 1;
                                QtyNpart[ReportData.Number] += ItemLedgEntry."Remaining Quantity";
                                //ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                                //StockValueNpart[ReportData.Number] += ItemLedgEntry."Cost Amount (Actual)";
                                IF Item."Costing Method" = Item."Costing Method"::Average THEN
                                    StockValueNpart[ReportData.Number] += AverageCost * ItemLedgEntry."Remaining Quantity"
                                ELSE BEGIN
                                    CalcUnitCost(ItemLedgEntry."Entry No.", ItemLedgEntry.Quantity);
                                    StockValueNpart[ReportData.Number] += UnitCost * ABS(ItemLedgEntry."Remaining Quantity");
                                END;

                            UNTIL ItemLedgEntry.NEXT = 0;
                    UNTIL Item.NEXT = 0;
                LinesTotal1 += LinesNpart[ReportData.Number];
                QtyTotal1 += QtyNpart[ReportData.Number];
                StockValueTotal1 += StockValueNpart[ReportData.Number];

                //OTHERS
                Item.RESET;
                Item.SETCURRENTKEY("Inventory Posting Group");
                Item.SETFILTER("Inventory Posting Group", '%1|%2|%3', 'ACCESSORY', 'BNP', 'N_PARTCONS');
                IF Item.FINDSET THEN
                    REPEAT
                        IF Item."Costing Method" = Item."Costing Method"::Average THEN
                            ItemCostMgt.CalculateAverageCost(Item, AverageCost, AverageCostACY);

                        ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                        ItemLedgEntry.SETRANGE("Item No.", Item."No.");
                        ItemLedgEntry.SETRANGE(Open, TRUE);
                        ItemLedgEntry.SETFILTER("Posting Date", Year[ReportData.Number]);
                        IF ItemLedgEntry.FINDSET THEN
                            REPEAT
                                LinesOthers[ReportData.Number] += 1;
                                QtyOthers[ReportData.Number] += ItemLedgEntry."Remaining Quantity";
                                //ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                                //StockValueOthers[ReportData.Number] += ItemLedgEntry."Cost Amount (Actual)";
                                IF Item."Costing Method" = Item."Costing Method"::Average THEN
                                    StockValueOthers[ReportData.Number] += AverageCost * ItemLedgEntry."Remaining Quantity"
                                ELSE BEGIN
                                    CalcUnitCost(ItemLedgEntry."Entry No.", ItemLedgEntry.Quantity);
                                    StockValueOthers[ReportData.Number] += UnitCost * ABS(ItemLedgEntry."Remaining Quantity");
                                END;

                            UNTIL ItemLedgEntry.NEXT = 0;
                    UNTIL Item.NEXT = 0;
                LinesTotal2 += LinesOthers[ReportData.Number];
                QtyTotal2 += QtyOthers[ReportData.Number];
                StockValueTotal2 += StockValueOthers[ReportData.Number];

                LinesTotal += (LinesNpart[ReportData.Number] + LinesOthers[ReportData.Number]);
                QtyTotal += (QtyNpart[ReportData.Number] + QtyOthers[ReportData.Number]);
                StockValueTotal += (StockValueNpart[ReportData.Number] + StockValueOthers[ReportData.Number]);
            end;

            trigger OnPostDataItem()
            begin
                FOR i := 1 TO 5 DO BEGIN
                    IF StockValueTotal1 <> 0 THEN
                        StockValuePercentNpart[i] := ROUND((StockValueNpart[i] / StockValueTotal1) * 100, 1)
                    ELSE
                        StockValuePercentNpart[i] := 0;

                    IF StockValueTotal2 <> 0 THEN
                        StockValuePercentOthers[i] := ROUND((StockValueOthers[i] / StockValueTotal2) * 100, 1)
                    ELSE
                        StockValuePercentOthers[i] := 0;

                    StockValuePercentTotal1 += StockValuePercentNpart[i];
                    StockValuePercentTotal2 += StockValuePercentOthers[i];

                    IF StockValueTotal <> 0 THEN
                        StockValuePercentLineTotal[i] := ROUND(((StockValueNpart[i] + StockValueOthers[i]) / StockValueTotal) * 100, 1)
                    ELSE
                        StockValuePercentLineTotal[i] := 0;
                    StockValuePercentTotal += StockValuePercentLineTotal[i];
                END;
            end;

            trigger OnPreDataItem()
            begin
                ReportData.SETRANGE(Number, 1, 5);
                CLEAR(LinesNpart);
                CLEAR(QtyNpart);
                CLEAR(StockValueNpart);
                CLEAR(StockValuePercentNpart);
                CLEAR(LinesOthers);
                CLEAR(QtyOthers);
                CLEAR(StockValueOthers);
                CLEAR(StockValuePercentOthers);
            end;
        }
        dataitem(StockReport; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(CompanyName_; COMPANYNAME)
            {
            }
            column(DescLblCaption; DescLbl)
            {
            }
            column(LinesLblCaption; LinesLbl)
            {
            }
            column(QtyLblCaption; QtyLbl)
            {
            }
            column(StkValLblCaption; StkValLbl)
            {
            }
            column(PerStkValLblCaption; PerStkValLbl)
            {
            }
            column(AgeLblCaption; AgeLbl)
            {
            }
            column(NpartLblCaption; NpartLbl)
            {
            }
            column(OthersLblCaption; OthersLbl)
            {
            }
            column(TotalLblCaption; TotalLbl)
            {
            }
            column(DateText; FORMAT(RefDate, 0, '<Year4> <Month Text>'))
            {
            }
            column(RefDate; 'Reference Date: ' + FORMAT(RefDate))
            {
            }
            column(ReportNum; Number)
            {
            }
            column(LinesNpart_1; LinesNpart[1])
            {
            }
            column(QtyNpart_1; QtyNpart[1])
            {
            }
            column(StockValueNpart_1; StockValueNpart[1])
            {
            }
            column(StockValuePercentNpart_1; StockValuePercentNpart[1])
            {
            }
            column(LinesNpart_2; LinesNpart[2])
            {
            }
            column(QtyNpart_2; QtyNpart[2])
            {
            }
            column(StockValueNpart_2; StockValueNpart[2])
            {
            }
            column(StockValuePercentNpart_2; StockValuePercentNpart[2])
            {
            }
            column(LinesNpart_3; LinesNpart[3])
            {
            }
            column(QtyNpart_3; QtyNpart[3])
            {
            }
            column(StockValueNpart_3; StockValueNpart[3])
            {
            }
            column(StockValuePercentNpart_3; StockValuePercentNpart[3])
            {
            }
            column(LinesNpart_4; LinesNpart[4])
            {
            }
            column(QtyNpart_4; QtyNpart[4])
            {
            }
            column(StockValueNpart_4; StockValueNpart[4])
            {
            }
            column(StockValuePercentNpart_4; StockValuePercentNpart[4])
            {
            }
            column(LinesNpart_5; LinesNpart[5])
            {
            }
            column(QtyNpart_5; QtyNpart[5])
            {
            }
            column(StockValueNpart_5; StockValueNpart[5])
            {
            }
            column(StockValuePercentNpart_5; StockValuePercentNpart[5])
            {
            }
            column(LinesOthers_1; LinesOthers[1])
            {
            }
            column(QtyOthers_1; QtyOthers[1])
            {
            }
            column(StockValueOthers_1; StockValueOthers[1])
            {
            }
            column(StockValuePercentOthers_1; StockValuePercentOthers[1])
            {
            }
            column(LinesOthers_2; LinesOthers[2])
            {
            }
            column(QtyOthers_2; QtyOthers[2])
            {
            }
            column(StockValueOthers_2; StockValueOthers[2])
            {
            }
            column(StockValuePercentOthers_2; StockValuePercentOthers[2])
            {
            }
            column(LinesOthers_3; LinesOthers[3])
            {
            }
            column(QtyOthers_3; QtyOthers[3])
            {
            }
            column(StockValueOthers_3; StockValueOthers[3])
            {
            }
            column(StockValuePercentOthers_3; StockValuePercentOthers[3])
            {
            }
            column(LinesOthers_4; LinesOthers[4])
            {
            }
            column(QtyOthers_4; QtyOthers[4])
            {
            }
            column(StockValueOthers_4; StockValueOthers[4])
            {
            }
            column(StockValuePercentOthers_4; StockValuePercentOthers[4])
            {
            }
            column(LinesOthers_5; LinesOthers[5])
            {
            }
            column(QtyOthers_5; QtyOthers[5])
            {
            }
            column(StockValueOthers_5; StockValueOthers[5])
            {
            }
            column(StockValuePercentOthers_5; StockValuePercentOthers[5])
            {
            }
            column(LinesTotal1; LinesTotal1)
            {
            }
            column(QtyTotal1; QtyTotal1)
            {
            }
            column(StockValueTotal1; StockValueTotal1)
            {
            }
            column(StockValuePercentTotal1; StockValuePercentTotal1)
            {
            }
            column(LinesTotal2; LinesTotal2)
            {
            }
            column(QtyTotal2; QtyTotal2)
            {
            }
            column(StockValueTotal2; StockValueTotal2)
            {
            }
            column(StockValuePercentTotal2; StockValuePercentTotal2)
            {
            }
            column(StockValuePercentTotal; StockValuePercentTotal)
            {
            }
            column(StockValuePercentLineTotal_1; StockValuePercentLineTotal[1])
            {
            }
            column(StockValuePercentLineTotal_2; StockValuePercentLineTotal[2])
            {
            }
            column(StockValuePercentLineTotal_3; StockValuePercentLineTotal[3])
            {
            }
            column(StockValuePercentLineTotal_4; StockValuePercentLineTotal[4])
            {
            }
            column(StockValuePercentLineTotal_5; StockValuePercentLineTotal[5])
            {
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(ReportOptions)
                {
                    Caption = 'Report Options';
                    field(RefDate; RefDate)
                    {
                        Caption = 'Reference Date';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            IF RefDate = 0D THEN
                RefDate := TODAY;
        end;
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        PeriodStart[1] := CALCDATE('<-CY>', RefDate);
        PeriodEnd[1] := CALCDATE('<CY>', RefDate);
        PeriodStart[5] := DMY2DATE(1, 1, 1900);
        Year[1] := FORMAT(PeriodStart[1]) + '..' + FORMAT(PeriodEnd[1]);
        FOR i := 2 TO 4 DO BEGIN
            PeriodStart[i] := CALCDATE('<-1Y>', PeriodStart[i - 1]);
            PeriodEnd[i] := CALCDATE('<-1Y>', PeriodEnd[i - 1]);
            Year[i] := FORMAT(PeriodStart[i]) + '..' + FORMAT(PeriodEnd[i]);
        END;
        PeriodEnd[5] := CALCDATE('<-1D>', PeriodStart[4]);
        Year[5] := FORMAT(PeriodStart[5]) + '..' + FORMAT(PeriodEnd[5]);
    end;

    var
        RefDate: Date;
        PeriodStart: array[5] of Date;
        PeriodEnd: array[5] of Date;
        Year: array[5] of Text;
        DescLbl: Label 'Description';
        LinesLbl: Label 'Lines';
        QtyLbl: Label 'Quantity';
        StkValLbl: Label 'Stock Value';
        PerStkValLbl: Label '% Stock Value';
        AgeLbl: Label 'AGE';
        NpartLbl: Label 'N_PARTS';
        OthersLbl: Label 'OTHERS';
        TotalLbl: Label 'TOTAL';
        i: Integer;
        ItemLedgEntry: Record 32;
        Item: Record 27;
        LinesNpart: array[5] of Integer;
        QtyNpart: array[5] of Decimal;
        StockValueNpart: array[5] of Decimal;
        StockValuePercentNpart: array[5] of Decimal;
        LinesOthers: array[5] of Integer;
        QtyOthers: array[5] of Decimal;
        StockValueOthers: array[5] of Decimal;
        StockValuePercentOthers: array[5] of Decimal;
        LinesTotal1: Integer;
        QtyTotal1: Decimal;
        StockValueTotal1: Decimal;
        StockValuePercentTotal1: Decimal;
        LinesTotal2: Integer;
        QtyTotal2: Decimal;
        StockValueTotal2: Decimal;
        StockValuePercentTotal2: Decimal;
        LinesTotal: Integer;
        QtyTotal: Decimal;
        StockValueTotal: Decimal;
        StockValuePercentTotal: Decimal;
        StockValuePercentLineTotal: array[5] of Decimal;
        ItemCostMgt: Codeunit "5804";
        UnitCost: Decimal;
        AverageCost: Decimal;
        AverageCostACY: Decimal;

    [Scope('Internal')]
    procedure CalcUnitCost(EntryNo: Integer; Qty: Decimal)
    var
        ValueEntry: Record 5802;
    begin
        WITH ValueEntry DO BEGIN
            SETRANGE("Item Ledger Entry No.", EntryNo);
            UnitCost := 0;

            IF FIND('-') THEN
                REPEAT
                    IF "Partial Revaluation" THEN
                        SumUnitCost(UnitCost, "Cost Amount (Actual)" + "Cost Amount (Expected)", "Valued Quantity")
                    ELSE
                        SumUnitCost(UnitCost, "Cost Amount (Actual)" + "Cost Amount (Expected)", Qty);
                UNTIL NEXT = 0;
        END;
    end;

    local procedure SumUnitCost(var UnitCost: Decimal; CostAmount: Decimal; Quantity: Decimal)
    begin
        IF Quantity <> 0 THEN
            UnitCost := UnitCost + CostAmount / ABS(Quantity);
    end;
}

