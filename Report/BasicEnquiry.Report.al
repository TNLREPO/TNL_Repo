report 50016 "Basic Enquiry"
{
    DefaultLayout = RDLC;
    RDLCLayout = './BasicEnquiry.rdlc';

    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (No.);
            RequestFilterFields = "No.", "Period Filter";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(PeriodName; PeriodName)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(postGroup_Description___Staff_Basic_Enquiry_____; '(' + postGroup.Description + ' Staff Basic Enquiry' + ')')
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(Employee__First_Name_; "First Name")
            {
            }
            column(Employee__Middle_Name_; "Middle Name")
            {
            }
            column(Employee__Last_Name_; "Last Name")
            {
            }
            column(Employee__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(Employee__Global_Dimension_2_Code_; "Global Dimension 2 Code")
            {
            }
            column(Employee__Employment_Date_; "Employment Date")
            {
            }
            column(Employee__Employment_Group_; "Employment Group")
            {
            }
            column(Employee__Posting_Group_; "Posting Group")
            {
            }
            column(Employee_Designation; Designation)
            {
            }
            column(Employee_Gender; Gender)
            {
            }
            column(Employee_Married; Married)
            {
            }
            column(Employee__Alt__Address_Code_; "Alt. Address Code")
            {
            }
            column(Employee__Alt__Address_Start_Date_; "Alt. Address Start Date")
            {
            }
            column(Employee__Alt__Address_End_Date_; "Alt. Address End Date")
            {
            }
            column(Employee_Address; Address)
            {
            }
            column(Employee_City; City)
            {
            }
            column(Employee__Post_Code_; "Post Code")
            {
            }
            column(Employee_State; State)
            {
            }
            column(Employee__Place_of_Birth_; "Place of Birth")
            {
            }
            column(Employee__Annual_Tax_Freepay_; "Annual Tax Freepay")
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Employee__First_Name_Caption; FIELDCAPTION("First Name"))
            {
            }
            column(Employee__Middle_Name_Caption; FIELDCAPTION("Middle Name"))
            {
            }
            column(Employee__Last_Name_Caption; FIELDCAPTION("Last Name"))
            {
            }
            column(Employee__Global_Dimension_1_Code_Caption; FIELDCAPTION("Global Dimension 1 Code"))
            {
            }
            column(Employee__Global_Dimension_2_Code_Caption; FIELDCAPTION("Global Dimension 2 Code"))
            {
            }
            column(Employee__Employment_Date_Caption; FIELDCAPTION("Employment Date"))
            {
            }
            column(Employee__Employment_Group_Caption; FIELDCAPTION("Employment Group"))
            {
            }
            column(Employee__Posting_Group_Caption; FIELDCAPTION("Posting Group"))
            {
            }
            column(Employee_DesignationCaption; FIELDCAPTION(Designation))
            {
            }
            column(Employee_GenderCaption; FIELDCAPTION(Gender))
            {
            }
            column(Employee_MarriedCaption; FIELDCAPTION(Married))
            {
            }
            column(Employee__Alt__Address_Code_Caption; FIELDCAPTION("Alt. Address Code"))
            {
            }
            column(Employee__Alt__Address_Start_Date_Caption; FIELDCAPTION("Alt. Address Start Date"))
            {
            }
            column(Employee__Alt__Address_End_Date_Caption; FIELDCAPTION("Alt. Address End Date"))
            {
            }
            column(Employee_AddressCaption; FIELDCAPTION(Address))
            {
            }
            column(Employee_CityCaption; FIELDCAPTION(City))
            {
            }
            column(Employee__Post_Code_Caption; FIELDCAPTION("Post Code"))
            {
            }
            column(Employee_StateCaption; FIELDCAPTION(State))
            {
            }
            column(Employee__Place_of_Birth_Caption; FIELDCAPTION("Place of Birth"))
            {
            }
            column(Employee__Annual_Tax_Freepay_Caption; FIELDCAPTION("Annual Tax Freepay"))
            {
            }
            dataitem(DataItem7581; Table50001)
            {
                DataItemTableView = SORTING (Sequence No)
                                    WHERE (Basic Enquiry=CONST(Yes));
                column(periodamount; periodamount)
                {
                }
                column(ytdamount; ytdamount)
                {
                }
                column(Cumamount; Cumamount)
                {
                }
                column(Payroll_E_D_Codes___Payslip_Text_; "Payslip Text")
                {
                }
                column(Period_AmountCaption; Period_AmountCaptionLbl)
                {
                }
                column(YTD_AmountCaption; YTD_AmountCaptionLbl)
                {
                }
                column(Cum__to_DateCaption; Cum__to_DateCaptionLbl)
                {
                }
                column(Payroll_E_D_Codes___Payslip_Text_Caption; FIELDCAPTION("Payslip Text"))
                {
                }
                column(Payroll_E_D_Codes__E_D_Code; "E/D Code")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    Employee.SETRANGE(Employee."ED Filter", "Payroll-E/D Codes."."E/D Code");
                    Employee.SETRANGE(Employee."Period Filter", period);
                    Employee.CALCFIELDS(Employee.EDAmount);
                    periodamount := Employee.EDAmount;
                    ytdamount := 'N/A';
                    Cumamount := 'N/A';

                    IF "Payroll-E/D Codes."."Basic Enquiry-YTD" THEN BEGIN
                        Employee.SETFILTER(Employee."Period Filter", YearStartPeriod + '..' + period);
                        Employee.CALCFIELDS(Employee.EDAmount);
                        ytdamount := FORMAT(Employee.EDAmount);


                    END;

                    IF "Payroll-E/D Codes."."Basic Enquiry-CUM2DATE" THEN BEGIN
                        Employee.SETFILTER(Employee."Period Filter", '..' + period);
                        Employee.CALCFIELDS(Employee.EDAmount);
                        Cumamount := FORMAT(Employee.EDAmount);

                    END;
                end;
            }

            trigger OnPreDataItem()
            begin
                IF Employee.GETRANGEMIN("Period Filter") <> Employee.GETRANGEMAX("Period Filter") THEN
                    ERROR('You must select a unique period filter');

                period := Employee.GETFILTER(Employee."Period Filter");
                PayPeriods.GET(period);
                PeriodName := PayPeriods.Name;
                done := FALSE;
                REPEAT

                    IF (DATE2DMY(PayPeriods."End Date", 2) = 1) THEN BEGIN
                        done := TRUE;
                        YearStartPeriod := PayPeriods."Period Code";
                    END
                UNTIL (PayPeriods.NEXT(-1) = 0) OR done;

                IF NOT done THEN BEGIN
                    PayPeriods.FIND('-');
                    YearStartPeriod := PayPeriods."Period Code";
                END;

                DefaultPostingGroup := 'TNL';        //gpc.GetStoredGroup();
                postGroup.GET(DefaultPostingGroup);
                Employee.SETRANGE(Employee."Posting Group", DefaultPostingGroup);
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
        periodamount: Decimal;
        ytdamount: Text[30];
        Cumamount: Text[30];
        period: Code[20];
        YearStartPeriod: Code[20];
        PayPeriods: Record 50004;
        done: Boolean;
        PeriodName: Text[30];
        gpc: Codeunit 50004;
        DefaultPostingGroup: Code[20];
        postGroup: Record "50011";
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Period_AmountCaptionLbl: Label 'Period Amount';
        YTD_AmountCaptionLbl: Label 'YTD Amount';
        Cum__to_DateCaptionLbl: Label 'Cum. to Date';
}

