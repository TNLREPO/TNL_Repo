report 50171 "Vehicle Sales Analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VehicleSalesAnalysis.rdlc';

    dataset
    {
        dataitem(DataItem5444; Table2000000026)
        {
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
            column(SUMMARY_OF_UNIT_SALESCaption; SUMMARY_OF_UNIT_SALESCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Integer_Number; Number)
            {
            }
            dataitem(DataItem4301; Table50)
            {
                column(VariancesText_1_; VariancesText[1])
                {
                }
                column(VariancesText_2_; VariancesText[2])
                {
                }
                column(VariancesText_3_; VariancesText[3])
                {
                }
                column(VariancesText_4_; VariancesText[4])
                {
                }
                column(VariancesText_5_; VariancesText[5])
                {
                }
                column(VariancesText_6_; VariancesText[6])
                {
                }
                column(VariancesText_7_; VariancesText[7])
                {
                }
                column(VariancesText_8_; VariancesText[8])
                {
                }
                column(VariancesText_9_; VariancesText[9])
                {
                }
                column(VariancesText_10_; VariancesText[10])
                {
                }
                column(VariancesText_11_; VariancesText[11])
                {
                }
                column(VariancesText_12_; VariancesText[12])
                {
                }
                column(Name__________FORMAT_aYear_; Name + ', ' + FORMAT(aYear))
                {
                }
                column(Variances_1_; Variances[1])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_2_; Variances[2])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_3_; Variances[3])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_4_; Variances[4])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_5_; Variances[5])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_6_; Variances[6])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_7_; Variances[7])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_8_; Variances[8])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_9_; Variances[9])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_10_; Variances[10])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_11_; Variances[11])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_12_; Variances[12])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Totals__; 'Totals ')
                {
                }
                column(Variances_1__Control1000000004; Variances[1])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_2__Control1000000005; Variances[2])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_3__Control1000000006; Variances[3])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_4__Control1000000070; Variances[4])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_5__Control1000000071; Variances[5])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_6__Control1000000072; Variances[6])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_7__Control1000000073; Variances[7])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_8__Control1000000074; Variances[8])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_9__Control1000000075; Variances[9])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_10__Control1000000076; Variances[10])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_11__Control1000000077; Variances[11])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Variances_12__Control1000000078; Variances[12])
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Accounting_Period_Starting_Date; "Starting Date")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT ShowSalesQty THEN CurrReport.SKIP;

                    aYear := DATE2DMY("Accounting Period"."Starting Date", 3);
                    FOR j := 1 TO i DO BEGIN
                        PGrpREc2.SETRANGE(PGrpREc2.Code, Variancescode[j]);
                        PGrpREc2.FIND('-');
                        PeriodEndDate := CALCDATE('CM', "Accounting Period"."Starting Date");
                        PGrpREc2.SETRANGE(PGrpREc2."Date Filter", "Accounting Period"."Starting Date", PeriodEndDate);
                        PGrpREc2.CALCFIELDS(PGrpREc2."Sales (Qty.)");
                        Variances[j] := PGrpREc2."Sales (Qty.)";
                    END;
                end;

                trigger OnPreDataItem()
                begin


                    "Accounting Period".SETRANGE("Accounting Period"."Starting Date", StartDate, EndDate);
                    CurrReport.CREATETOTALS(Variances);
                end;
            }
            dataitem(Period1; Table50)
            {
                column(VariancesText_1__Control1000000040; VariancesText[1])
                {
                }
                column(VariancesText_2__Control1000000042; VariancesText[2])
                {
                }
                column(VariancesText_3__Control1000000045; VariancesText[3])
                {
                }
                column(VariancesText_4__Control1000000046; VariancesText[4])
                {
                }
                column(VariancesText_5__Control1000000050; VariancesText[5])
                {
                }
                column(VariancesText_6__Control1000000062; VariancesText[6])
                {
                }
                column(VariancesText_7__Control1000000064; VariancesText[7])
                {
                }
                column(VariancesText_8__Control1000000065; VariancesText[8])
                {
                }
                column(VariancesText_9__Control1000000066; VariancesText[9])
                {
                }
                column(VariancesText_10__Control1000000079; VariancesText[10])
                {
                }
                column(VariancesText_11__Control1000000091; VariancesText[11])
                {
                }
                column(VariancesText_12__Control1000000093; VariancesText[12])
                {
                }
                column(Name__________FORMAT_aYear__Control1000000163; Name + ', ' + FORMAT(aYear))
                {
                }
                column(Variances1_1_; Variances1[1])
                {
                }
                column(Variances1_2_; Variances1[2])
                {
                }
                column(Variances1_3_; Variances1[3])
                {
                }
                column(Variances1_4_; Variances1[4])
                {
                }
                column(Variances1_5_; Variances1[5])
                {
                }
                column(Variances1_6_; Variances1[6])
                {
                }
                column(Variances1_7_; Variances1[7])
                {
                }
                column(Variances1_8_; Variances1[8])
                {
                }
                column(Variances1_9_; Variances1[9])
                {
                }
                column(Variances1_10_; Variances1[10])
                {
                }
                column(Variances1_11_; Variances1[11])
                {
                }
                column(Variances1_12_; Variances1[12])
                {
                }
                column(Totals___Control1000000188; 'Totals ')
                {
                }
                column(Variances1_1__Control1000000189; Variances1[1])
                {
                }
                column(Variances1_2__Control1000000190; Variances1[2])
                {
                }
                column(Variances1_3__Control1000000191; Variances1[3])
                {
                }
                column(Variances1_4__Control1000000192; Variances1[4])
                {
                }
                column(Variances1_5__Control1000000193; Variances1[5])
                {
                }
                column(Variances1_6__Control1000000194; Variances1[6])
                {
                }
                column(Variances1_7__Control1000000195; Variances1[7])
                {
                }
                column(Variances1_8__Control1000000196; Variances1[8])
                {
                }
                column(Variances1_9__Control1000000197; Variances1[9])
                {
                }
                column(Variances1_10__Control1000000198; Variances1[10])
                {
                }
                column(Variances1_11__Control1000000199; Variances1[11])
                {
                }
                column(Variances1_12__Control1000000200; Variances1[12])
                {
                }
                column(SUMMARY_OF_TURNOVER_ON_VEHICLESCaption; SUMMARY_OF_TURNOVER_ON_VEHICLESCaptionLbl)
                {
                }
                column(Period1_Starting_Date; "Starting Date")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT ShowSalesAmount THEN CurrReport.SKIP;

                    aYear := DATE2DMY("Accounting Period"."Starting Date", 3);
                    PGrpREc2.RESET;
                    FOR k := 1 TO i DO BEGIN
                        PGrpREc2.SETRANGE(PGrpREc2.Code, Variancescode[k]);
                        PGrpREc2.FIND('-');
                        PeriodEndDate := CALCDATE('CM', Period1."Starting Date");
                        PGrpREc2.SETRANGE(PGrpREc2."Date Filter", Period1."Starting Date", PeriodEndDate);
                        PGrpREc2.CALCFIELDS(PGrpREc2."Sales (LCY)");
                        Variances1[k] := PGrpREc2."Sales (LCY)";
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    Period1.SETRANGE(Period1."Starting Date", StartDate, EndDate);
                    CurrReport.CREATETOTALS(Variances1);
                end;
            }
            dataitem(Period2; Table50)
            {
                column(VariancesText_1__Control1000000111; VariancesText[1])
                {
                }
                column(VariancesText_2__Control1000000112; VariancesText[2])
                {
                }
                column(VariancesText_3__Control1000000113; VariancesText[3])
                {
                }
                column(VariancesText_4__Control1000000114; VariancesText[4])
                {
                }
                column(VariancesText_5__Control1000000115; VariancesText[5])
                {
                }
                column(VariancesText_6__Control1000000116; VariancesText[6])
                {
                }
                column(VariancesText_7__Control1000000117; VariancesText[7])
                {
                }
                column(VariancesText_8__Control1000000118; VariancesText[8])
                {
                }
                column(VariancesText_9__Control1000000119; VariancesText[9])
                {
                }
                column(VariancesText_10__Control1000000120; VariancesText[10])
                {
                }
                column(VariancesText_11__Control1000000121; VariancesText[11])
                {
                }
                column(VariancesText_12__Control1000000122; VariancesText[12])
                {
                }
                column(Name__________FORMAT_aYear__Control1000000267; Name + ', ' + FORMAT(aYear))
                {
                }
                column(Variances2_1_; Variances2[1])
                {
                }
                column(Variances2_2_; Variances2[2])
                {
                }
                column(Variances2_3_; Variances2[3])
                {
                }
                column(Variances2_4_; Variances2[4])
                {
                }
                column(Variances2_5_; Variances2[5])
                {
                }
                column(Variances2_6_; Variances2[6])
                {
                }
                column(Variances2_7_; Variances2[7])
                {
                }
                column(Variances2_8_; Variances2[8])
                {
                }
                column(Variances2_9_; Variances2[9])
                {
                }
                column(Variances2_10_; Variances2[10])
                {
                }
                column(Variances2_11_; Variances2[11])
                {
                }
                column(Variances2_12_; Variances2[12])
                {
                }
                column(Totals___Control1000000214; 'Totals ')
                {
                }
                column(Variances2_1__Control1000000215; Variances2[1])
                {
                }
                column(Variances2_2__Control1000000216; Variances2[2])
                {
                }
                column(Variances2_3__Control1000000217; Variances2[3])
                {
                }
                column(Variances2_4__Control1000000218; Variances2[4])
                {
                }
                column(Variances2_5__Control1000000219; Variances2[5])
                {
                }
                column(Variances2_6__Control1000000220; Variances2[6])
                {
                }
                column(Variances2_7__Control1000000221; Variances2[7])
                {
                }
                column(Variances2_8__Control1000000222; Variances2[8])
                {
                }
                column(Variances2_9__Control1000000223; Variances2[9])
                {
                }
                column(Variances2_10__Control1000000224; Variances2[10])
                {
                }
                column(Variances2_11__Control1000000225; Variances2[11])
                {
                }
                column(Variances2_12__Control1000000226; Variances2[12])
                {
                }
                column(SUMMARY_OF_COST_OF_SALES_ON_VEHICLESCaption; SUMMARY_OF_COST_OF_SALES_ON_VEHICLESCaptionLbl)
                {
                }
                column(Period2_Starting_Date; "Starting Date")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT ShowCostOfSales THEN CurrReport.SKIP;

                    aYear := DATE2DMY("Accounting Period"."Starting Date", 3);
                    FOR j := 1 TO i DO BEGIN
                        PGrpREc2.SETRANGE(PGrpREc2.Code, Variancescode[j]);
                        PGrpREc2.FIND('-');
                        PeriodEndDate := CALCDATE('CM', Period2."Starting Date");
                        PGrpREc2.SETRANGE(PGrpREc2."Date Filter", Period2."Starting Date", PeriodEndDate);
                        PGrpREc2.CALCFIELDS(PGrpREc2."COGS (LCY)");
                        Variances2[j] := PGrpREc2."COGS (LCY)";
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    Period2.SETRANGE(Period2."Starting Date", StartDate, EndDate);
                    CurrReport.CREATETOTALS(Variances2);
                end;
            }
            dataitem(Period3; Table50)
            {
                column(VariancesText_1__Control1000000137; VariancesText[1])
                {
                }
                column(VariancesText_2__Control1000000138; VariancesText[2])
                {
                }
                column(VariancesText_3__Control1000000139; VariancesText[3])
                {
                }
                column(VariancesText_4__Control1000000140; VariancesText[4])
                {
                }
                column(VariancesText_5__Control1000000141; VariancesText[5])
                {
                }
                column(VariancesText_6__Control1000000142; VariancesText[6])
                {
                }
                column(VariancesText_7__Control1000000143; VariancesText[7])
                {
                }
                column(VariancesText_8__Control1000000144; VariancesText[8])
                {
                }
                column(VariancesText_9__Control1000000145; VariancesText[9])
                {
                }
                column(VariancesText_10__Control1000000146; VariancesText[10])
                {
                }
                column(VariancesText_11__Control1000000147; VariancesText[11])
                {
                }
                column(VariancesText_12__Control1000000148; VariancesText[12])
                {
                }
                column(Name__________FORMAT_aYear__Control1000000293; Name + ', ' + FORMAT(aYear))
                {
                }
                column(Variances3_1_; Variances3[1])
                {
                }
                column(Variances3_2_; Variances3[2])
                {
                }
                column(Variances3_3_; Variances3[3])
                {
                }
                column(Variances3_4_; Variances3[4])
                {
                }
                column(Variances3_5_; Variances3[5])
                {
                }
                column(Variances3_6_; Variances3[6])
                {
                }
                column(Variances3_7_; Variances3[7])
                {
                }
                column(Variances3_8_; Variances3[8])
                {
                }
                column(Variances3_9_; Variances3[9])
                {
                }
                column(Variances3_10_; Variances3[10])
                {
                }
                column(Variances3_11_; Variances3[11])
                {
                }
                column(Variances3_12_; Variances3[12])
                {
                }
                column(Totals___Control1000000240; 'Totals ')
                {
                }
                column(Variances3_1__Control1000000241; Variances3[1])
                {
                }
                column(Variances3_2__Control1000000242; Variances3[2])
                {
                }
                column(Variances3_3__Control1000000243; Variances3[3])
                {
                }
                column(Variances3_4__Control1000000244; Variances3[4])
                {
                }
                column(Variances3_5__Control1000000245; Variances3[5])
                {
                }
                column(Variances3_6__Control1000000246; Variances3[6])
                {
                }
                column(Variances3_7__Control1000000247; Variances3[7])
                {
                }
                column(Variances3_8__Control1000000248; Variances3[8])
                {
                }
                column(Variances3_9__Control1000000249; Variances3[9])
                {
                }
                column(Variances3_10__Control1000000250; Variances3[10])
                {
                }
                column(Variances3_11__Control1000000251; Variances3[11])
                {
                }
                column(Variances3_12__Control1000000252; Variances3[12])
                {
                }
                column(SUMMARY_OF_CONTRIBUTION_ON_VEHICLESCaption; SUMMARY_OF_CONTRIBUTION_ON_VEHICLESCaptionLbl)
                {
                }
                column(Period3_Starting_Date; "Starting Date")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT ShowContribution THEN CurrReport.SKIP;

                    aYear := DATE2DMY("Accounting Period"."Starting Date", 3);
                    FOR j := 1 TO i DO BEGIN
                        PGrpREc2.SETRANGE(PGrpREc2.Code, Variancescode[j]);
                        PGrpREc2.FIND('-');
                        PeriodEndDate := CALCDATE('CM', Period3."Starting Date");
                        PGrpREc2.SETRANGE(PGrpREc2."Date Filter", Period3."Starting Date", PeriodEndDate);
                        PGrpREc2.CALCFIELDS(PGrpREc2."COGS (LCY)", PGrpREc2."Sales (LCY)");
                        Variances3[j] := PGrpREc2."Sales (LCY)" - PGrpREc2."COGS (LCY)";
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    Period3.SETRANGE(Period3."Starting Date", StartDate, EndDate);
                    CurrReport.CREATETOTALS(Variances3);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF AllDone THEN CurrReport.BREAK;
                FOR i := 1 TO 13 DO BEGIN
                    VariancesText[i] := '';
                    Variancescode[i] := '';
                    Variances[i] := 0;
                END;

                i := 0;
                PageExtract := FALSE;
                REPEAT
                    i := i + 1;
                    VariancesText[i] := PGrpREc.Description;
                    Variancescode[i] := PGrpREc.Code;

                    IF i = 13 THEN
                        PageExtract := TRUE
                    ELSE BEGIN
                        IF PGrpREc.NEXT = 0 THEN
                            PageExtract := TRUE;
                    END;
                UNTIL PageExtract;

                IF PGrpREc.NEXT = 0 THEN
                    AllDone := TRUE
                ELSE
                    PGrpREc.NEXT(-1);
            end;

            trigger OnPreDataItem()
            begin
                AllDone := FALSE;
                PGrpREc.RESET;
                PGrpREc.SETRANGE(PGrpREc."Item Category Code", 'CARS');
                PGrpREc.FIND('-');

                IF (StartDate = 0D) OR (EndDate = 0D) THEN ERROR('Please State the Start Date and End date for the Report!');
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
        Variances: array[20] of Decimal;
        Variances1: array[20] of Decimal;
        Variances2: array[20] of Decimal;
        Variances3: array[20] of Decimal;
        DimValue: Record "5723";
        GlSetup: Record "98";
        VariancesText: array[20] of Text[50];
        i: Integer;
        j: Integer;
        k: Integer;
        Variancescode: array[20] of Code[20];
        PGrpREc: Record "5723";
        PGrpREc2: Record "5723";
        PGrpREc3: Record "5723";
        AllDone: Boolean;
        CcCode: array[100] of Code[20];
        CcName: array[100] of Text[50];
        PageExtract: Boolean;
        Totals: array[100] of Decimal;
        EndDate: Date;
        PeriodEndDate: Date;
        StartDate: Date;
        aYear: Integer;
        ShowSalesQty: Boolean;
        ShowSalesAmount: Boolean;
        ShowCostOfSales: Boolean;
        ShowContribution: Boolean;
        SUMMARY_OF_UNIT_SALESCaptionLbl: Label 'SUMMARY OF UNIT SALES';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        SUMMARY_OF_TURNOVER_ON_VEHICLESCaptionLbl: Label 'SUMMARY OF TURNOVER ON VEHICLES';
        SUMMARY_OF_COST_OF_SALES_ON_VEHICLESCaptionLbl: Label 'SUMMARY OF COST OF SALES ON VEHICLES';
        SUMMARY_OF_CONTRIBUTION_ON_VEHICLESCaptionLbl: Label 'SUMMARY OF CONTRIBUTION ON VEHICLES';
}

