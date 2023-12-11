report 50172 "Car Sales Analysis By Category"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CarSalesAnalysisByCategory.rdlc';
    Caption = 'Car Sales Analysis By Category';

    dataset
    {
        dataitem(DataItem1809; Table250)
        {
            DataItemTableView = WHERE (Show on Sales Report=CONST(Yes));
            RequestFilterFields = "Code";
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
            column(GETFILTERS; GETFILTERS)
            {
            }
            column(GRAND_TOTAL_; 'GRAND TOTAL')
            {
            }
            column(Units; Units)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Sales; Sales)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Cost; Cost)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Profit; Profit)
            {
                DecimalPlaces = 0 : 0;
            }
            column(tPct; tPct)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SUMMARY_OF_UNIT_SALESCaption; SUMMARY_OF_UNIT_SALESCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Gen__Business_Posting_Group_Code; Code)
            {
            }
            dataitem(DataItem4301; Table50)
            {
                column(UNITS_; 'UNITS')
                {
                }
                column(SALES_; 'SALES')
                {
                }
                column(COST_; 'COST')
                {
                }
                column(PROFIT_LOSS_; 'PROFIT/LOSS')
                {
                }
                column(EmptyString; '%')
                {
                }
                column(Gen__Business_Posting_Group__Description; "Gen. Business Posting Group".Description)
                {
                }
                column(Accounting_Period_Name; Name)
                {
                }
                column(Units_Control1000000000; Units)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Sales_Control1000000007; Sales)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Cost_Control1000000010; Cost)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Profit_Control1000000013; Profit)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Pct; Pct)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Totals__; 'Totals ')
                {
                }
                column(tPct_Control1000000003; tPct)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Profit_Control1000000004; Profit)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Cost_Control1000000006; Cost)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Sales_Control1000000012; Sales)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Units_Control1000000017; Units)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Accounting_Period_Starting_Date; "Starting Date")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    BGrp.RESET;
                    BGrp.GET("Gen. Business Posting Group".Code);

                    PeriodEndDate := CALCDATE('CM', "Accounting Period"."Starting Date");
                    BGrp.SETRANGE("Date Filter", "Accounting Period"."Starting Date", PeriodEndDate);
                    BGrp.SETRANGE(BGrp."Inventory Posting Grp Filter", 'N_CARS');
                    BGrp.SETRANGE(BGrp."Item Category Filter", 'CARS');
                    BGrp.CALCFIELDS(BGrp."Sales (Qty.)", BGrp."Sales (LCY)", BGrp."COGS (LCY)");



                    Sales := BGrp."Sales (LCY)";
                    Cost := BGrp."COGS (LCY)";
                    Units := BGrp."Sales (Qty.)";
                    dUnits := Units;
                    Profit := Sales - Cost;
                    IF Cost <> 0 THEN
                        Pct := (Profit / Cost) * 100
                    ELSE
                        Pct := 0;

                    tSales := tSales + Sales;
                    tCost := tCost + Cost;
                    tProfit := tSales - tCost;
                end;

                trigger OnPreDataItem()
                begin


                    "Accounting Period".SETRANGE("Accounting Period"."Starting Date", StartDate, EndDate);
                    CurrReport.CREATETOTALS(Sales, dUnits, Cost, Profit);
                end;
            }

            trigger OnAfterGetRecord()
            begin

                tSales := 0;
                tCost := 0;
                tProfit := 0;
                tPct := 0;
            end;

            trigger OnPreDataItem()
            begin
                IF (StartDate = 0D) OR (EndDate = 0D) THEN ERROR('Please State the Start Date and End date for the Report!');

                CurrReport.CREATETOTALS(Sales, dUnits, Cost, Profit);
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
        PageExtract: Boolean;
        Totals: array[100] of Decimal;
        EndDate: Date;
        PeriodEndDate: Date;
        StartDate: Date;
        Units: Integer;
        Sales: Decimal;
        Cost: Decimal;
        Pct: Decimal;
        dUnits: Decimal;
        Profit: Decimal;
        BGrp: Record "250";
        tSales: Decimal;
        tCost: Decimal;
        tPct: Decimal;
        tProfit: Decimal;
        SUMMARY_OF_UNIT_SALESCaptionLbl: Label 'SUMMARY OF UNIT SALES';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

