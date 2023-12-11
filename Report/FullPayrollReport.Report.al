report 50272 "Full Payroll Report"
{
    // This report prints a salary schedule for employees. The user should enter
    // the Payroll period and if necessary also the specific Employee number(s) that
    // are required to appear in the report. The E/Ds that are to appear in the
    // schedule MUST be entered.(In this revised edition default EDs have been entered.
    // The schedule is a matrix of employees on the vertical axis and the required
    // E/Ds in the Horizontal axis.
    // The user can specify that the ED.Descriptions appear in the column headers
    // instead of the ED.Codes.
    DefaultLayout = RDLC;
    RDLCLayout = './FullPayrollReport.rdlc';


    dataset
    {
        dataitem(DataItem1581; Table50006)
        {
            PrintOnlyIfDetail = false;
            RequestFilterFields = "Payroll Period", "Global Dimension 2 Code", "Global Dimension 1 Code", "Employee No";
            RequestFilterHeading = 'Payroll Period && Employees';
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(Payroll_Payslip_Lines___GETFILTER__Payroll_Period___________PeriodTxt; "Payroll-Payslip Lines.".GETFILTER("Payroll Period") + ' ' + PeriodTxt)
            {
            }
            column(EmplHeadTxt; EmplHeadTxt)
            {
            }
            column(TODAY; TODAY)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(EDText_1_1_; EDText[1, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_1_2_; EDText[1, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_2_1_; EDText[2, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_2_2_; EDText[2, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_3_1_; EDText[3, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_3_2_; EDText[3, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_4_1_; EDText[4, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_4_2_; EDText[4, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_5_1_; EDText[5, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_5_2_; EDText[5, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_6_1_; EDText[6, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_6_2_; EDText[6, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_7_1_; EDText[7, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_7_2_; EDText[7, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_8_1_; EDText[8, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_8_2_; EDText[8, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_9_1_; EDText[9, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_9_2_; EDText[9, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_10_1_; EDText[10, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_10_2_; EDText[10, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_27_1_; EDText[27, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_27_2_; EDText[27, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_11_1_; EDText[11, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_11_2_; EDText[11, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_12_1_; EDText[12, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_12_2_; EDText[12, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_13_1_; EDText[13, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_13_2_; EDText[13, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_14_1_; EDText[14, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_14_2_; EDText[14, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_15_1_; EDText[15, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_15_2_; EDText[15, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_16_1_; EDText[16, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_16_2_; EDText[16, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_17_1_; EDText[17, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_17_2_; EDText[17, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_18_1_; EDText[18, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_18_2_; EDText[18, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_19_1_; EDText[19, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_19_2_; EDText[19, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_20_1_; EDText[20, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_20_2_; EDText[20, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_21_1_; EDText[21, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_21_2_; EDText[21, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_22_1_; EDText[22, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_22_2_; EDText[22, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_23_1_; EDText[23, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_23_2_; EDText[23, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_24_1_; EDText[24, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_24_2_; EDText[24, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_25_1_; EDText[25, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_25_2_; EDText[25, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_26_1_; EDText[26, 1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDText_26_2_; EDText[26, 2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EmployeeName; EmployeeName)
            {
            }
            column(Payroll_Payslip_Lines___Employee_No_; "Employee No")
            {
            }
            column(EDAmountsArray_1_; EDAmountsArray[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_2_; EDAmountsArray[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_3_; EDAmountsArray[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_4_; EDAmountsArray[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_5_; EDAmountsArray[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_6_; EDAmountsArray[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_7_; EDAmountsArray[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_8_; EDAmountsArray[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_9_; EDAmountsArray[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_10_; EDAmountsArray[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_24_; EDAmountsArray[24])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_23_; EDAmountsArray[23])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_11_; EDAmountsArray[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_12_; EDAmountsArray[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_13_; EDAmountsArray[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_14_; EDAmountsArray[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_15_; EDAmountsArray[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_16_; EDAmountsArray[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_17_; EDAmountsArray[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_18_; EDAmountsArray[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_19_; EDAmountsArray[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_20_; EDAmountsArray[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_21_; EDAmountsArray[21])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_22_; EDAmountsArray[22])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_25_; EDAmountsArray[25])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_26_; EDAmountsArray[26])
            {
                DecimalPlaces = 0 : 0;
            }
            column(EDAmountsArray_27_; EDAmountsArray[27])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Salary_schedule_for_Period_Caption; Salary_schedule_for_Period_CaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(Report_page_Caption; Report_page_CaptionLbl)
            {
            }
            column(Employee_NumberCaption; Employee_NumberCaptionLbl)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(Payroll_Payslip_Lines__Payroll_Period; "Payroll Period")
            {
            }
            column(Payroll_Payslip_Lines__E_D_Code; "E/D Code")
            {
            }
            column(Payroll_Payslip_Lines__Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Payroll_Payslip_Lines__Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }

            trigger OnAfterGetRecord()
            var
                PayEmp: Record 5200;
            begin
                EDAmountsArray[1] := 0;
                EDAmountsArray[2] := 0;
                EDAmountsArray[3] := 0;
                EDAmountsArray[4] := 0;
                EDAmountsArray[5] := 0;
                EDAmountsArray[6] := 0;
                EDAmountsArray[7] := 0;
                EDAmountsArray[8] := 0;
                EDAmountsArray[9] := 0;
                EDAmountsArray[10] := 0;
                EDAmountsArray[11] := 0;
                EDAmountsArray[12] := 0;
                IF NOT PayEmp.GET("Payroll-Payslip Lines."."Employee No") THEN CurrReport.SKIP; //Added by Adam to skip Deleted? Employees//

                IF PayEmp.GET("Payroll-Payslip Lines."."Employee No") THEN
                    EmployeeName := PayEmp."First Name" + ' ' + PayEmp."Last Name";
                // Not: Employees are normally kept
                IF PayEmp.Blocked THEN CurrReport.SKIP; //Added by Adam to skip Blocked Employees

                CASE "E/D Code" OF
                    RequestEDsArray[1]."E/D Code":
                        EDAmountsArray[1] := Amount;
                    RequestEDsArray[2]."E/D Code":
                        EDAmountsArray[2] := Amount;
                    RequestEDsArray[3]."E/D Code":
                        EDAmountsArray[3] := Amount;
                    RequestEDsArray[4]."E/D Code":
                        EDAmountsArray[4] := Amount;
                    RequestEDsArray[5]."E/D Code":
                        EDAmountsArray[5] := Amount;
                    RequestEDsArray[6]."E/D Code":
                        EDAmountsArray[6] := Amount;
                    RequestEDsArray[7]."E/D Code":
                        EDAmountsArray[7] := Amount;
                    RequestEDsArray[8]."E/D Code":
                        EDAmountsArray[8] := Amount;
                    RequestEDsArray[9]."E/D Code":
                        EDAmountsArray[9] := Amount;
                    RequestEDsArray[10]."E/D Code":
                        EDAmountsArray[10] := Amount;
                    RequestEDsArray[11]."E/D Code":
                        EDAmountsArray[11] := Amount;
                    RequestEDsArray[12]."E/D Code":
                        EDAmountsArray[12] := Amount;
                    RequestEDsArray[13]."E/D Code":
                        EDAmountsArray[13] := Amount;
                    RequestEDsArray[14]."E/D Code":
                        EDAmountsArray[14] := Amount;
                    RequestEDsArray[15]."E/D Code":
                        EDAmountsArray[15] := Amount;
                    RequestEDsArray[16]."E/D Code":
                        EDAmountsArray[16] := Amount;
                    RequestEDsArray[17]."E/D Code":
                        EDAmountsArray[17] := Amount;
                    RequestEDsArray[18]."E/D Code":
                        EDAmountsArray[18] := Amount;
                    RequestEDsArray[19]."E/D Code":
                        EDAmountsArray[19] := Amount;
                    RequestEDsArray[20]."E/D Code":
                        EDAmountsArray[20] := Amount;
                    RequestEDsArray[21]."E/D Code":
                        EDAmountsArray[21] := Amount;
                    RequestEDsArray[22]."E/D Code":
                        EDAmountsArray[22] := Amount;
                    RequestEDsArray[23]."E/D Code":
                        EDAmountsArray[23] := Amount;
                    RequestEDsArray[24]."E/D Code":
                        EDAmountsArray[24] := Amount;
                    RequestEDsArray[25]."E/D Code":
                        EDAmountsArray[25] := Amount;
                    RequestEDsArray[26]."E/D Code":
                        EDAmountsArray[26] := Amount;
                    RequestEDsArray[27]."E/D Code":
                        BEGIN
                            EDAmountsArray[27] := Amount;
                            Total27 := Total27 + Amount;
                        END;
                    RequestEDsArray[ArrayTop]."E/D Code":
                        BEGIN
                            EDAmountsArray[ArrayTop] := Amount;
                            Total28 := Total28 + Amount;
                        END;

                END;
            end;

            trigger OnPreDataItem()
            begin
                CompanyData.GET;
                IF GETFILTER("Employee No") <> '' THEN
                    EmplHeadTxt := 'Employee Filter: ' + GETFILTER("Employee No")
                ELSE
                    EmplHeadTxt := 'Schedule for All Employees.';

                /* Create column header text*/
                FOR ArrayIndex := 1 TO ArrayTop DO
                    IF (RequestEDsArray[ArrayIndex]."E/D Code") <> '' THEN BEGIN
                        RequestEDsArray[ArrayIndex].GET(RequestEDsArray[ArrayIndex]."E/D Code");
                        EDString := COPYSTR(RequestEDsArray[ArrayIndex]."Payslip Text", 1, 20);
                        FOR i := 1 TO 26 DO BEGIN
                            CharTest := COPYSTR(EDString, i, 1);
                            IF CharTest = ' ' THEN BEGIN
                                EDText[ArrayIndex, 1] := COPYSTR(EDString, 1, i - 1);
                                EDText[ArrayIndex, 2] := COPYSTR(EDString, i + 1, 10);
                                i := 26;
                            END;
                        END;
                        IF EDText[ArrayIndex, 1] = '' THEN BEGIN
                            EDText[ArrayIndex, 1] := COPYSTR(EDString, 1, 10);
                            EDText[ArrayIndex, 2] := COPYSTR(EDString, 11, 10);
                        END
                    END;


                CurrReport.CREATETOTALS(EDAmountsArray[1], EDAmountsArray[2], EDAmountsArray[3],
                                 EDAmountsArray[4], EDAmountsArray[5], EDAmountsArray[6],
                                 EDAmountsArray[7], EDAmountsArray[8], EDAmountsArray[9],
                                 EDAmountsArray[10]);

                CurrReport.CREATETOTALS(EDAmountsArray[11], EDAmountsArray[12], EDAmountsArray[13],
                                 EDAmountsArray[14], EDAmountsArray[15], EDAmountsArray[16],
                                 EDAmountsArray[17], EDAmountsArray[18], EDAmountsArray[19],
                                 EDAmountsArray[20]);

                CurrReport.CREATETOTALS(EDAmountsArray[21], EDAmountsArray[22], EDAmountsArray[23],
                                 EDAmountsArray[24], EDAmountsArray[25], EDAmountsArray[26],
                                 EDAmountsArray[27]);

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
                field(RequestEDsArray[1]."E/D Code";RequestEDsArray[1]."E/D Code")
                {
                    Caption = '1';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[2]."E/D Code";RequestEDsArray[2]."E/D Code")
                {
                    Caption = '2';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[3]."E/D Code";RequestEDsArray[3]."E/D Code")
                {
                    Caption = '3';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[4]."E/D Code";RequestEDsArray[4]."E/D Code")
                {
                    Caption = '4';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[5]."E/D Code";RequestEDsArray[5]."E/D Code")
                {
                    Caption = '5';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[6]."E/D Code";RequestEDsArray[6]."E/D Code")
                {
                    Caption = '6';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[7]."E/D Code";RequestEDsArray[7]."E/D Code")
                {
                    Caption = '7';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[8]."E/D Code";RequestEDsArray[8]."E/D Code")
                {
                    Caption = '8';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[9]."E/D Code";RequestEDsArray[9]."E/D Code")
                {
                    Caption = '9';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[10]."E/D Code";RequestEDsArray[10]."E/D Code")
                {
                    Caption = '10';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[11]."E/D Code";RequestEDsArray[11]."E/D Code")
                {
                    Caption = '11';
                    TableRelation = "Payroll-E/D Codes.";
                }
                field(RequestEDsArray[12]."E/D Code";RequestEDsArray[12]."E/D Code")
                {
                    Caption = '12';
                    TableRelation = "Payroll-E/D Codes.";
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        ArrayTop := 28;
        EmplCount := 0;
        
        /*Get Period Records within the delimitation*/
         "Payroll-Payslip Lines.".COPYFILTER("Payroll Period", PeriodRec."Period Code");
        IF  PeriodRec.COUNT > 1 THEN
          PeriodTxt := STRSUBSTNO('(#1 periods)', PeriodRec.COUNT);

    end;

    var
        CompanyData: Record "79";
        EmployeeRec: Record "5200";
        PeriodRec: Record "50004";
        EmployeeName: Text[40];
        RequestEDsArray: array [28] of Record "50001";
        EDAmountsArray: array [28] of Decimal;
        EDText: array [28,2] of Text[20];
        EDString: Text[20];
        ArrayIndex: Integer;
        ArrayTop: Integer;
        EmplCount: Integer;
        EmplHeadTxt: Text[60];
        PeriodTxt: Text[15];
        "BANK/CASH": Text[30];
        IsDescription: Boolean;
        Total27: Decimal;
        Total28: Decimal;
        i: Integer;
        CharTest: Text[1];
        Text001: ;
        Text002: Label 'Payroll Report';
        Salary_schedule_for_Period_CaptionLbl: Label 'Salary schedule for Period:';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        Report_page_CaptionLbl: Label 'Report page:';
        Employee_NumberCaptionLbl: Label 'Employee Number';
        NameCaptionLbl: Label 'Name';
}

