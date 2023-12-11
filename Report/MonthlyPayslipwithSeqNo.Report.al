report 50048 "Monthly Payslip with Seq. No."
{
    // Modified by Adams for
    // speed and user access control
    DefaultLayout = RDLC;
    RDLCLayout = './MonthlyPayslipwithSeqNo.rdlc';


    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (Posting Group, Business Unit, Global Dimension 1 Code, Global Dimension 2 Code);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Employee Group", "Business Unit", "Global Dimension 1 Code", "Global Dimension 2 Code", EDAmount, "Period Filter";
            RequestFilterHeading = 'Payslip Filters';
            column(Employee_No_; "No.")
            {
            }
            column(Employee_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Employee_Period_Filter; "Period Filter")
            {
            }
            dataitem(DataItem2942; Table50007)
            {
                DataItemLink = Payroll Period=FIELD(Period Filter),
                               Employee No=FIELD(No.);
                DataItemTableView = SORTING(Posting Group);
                RequestFilterHeading = 'Parameters for payslips';
                column(UPPERCASE_PayAdviceTitle_;UPPERCASE(PayAdviceTitle))
                {
                }
                column(UPPERCASE__Payroll_Payslip_Header____Employee_Name__;UPPERCASE("Payroll-Payslip Header."."Employee Name"))
                {
                }
                column(UPPERCASE_DeptName_;UPPERCASE(DeptName))
                {
                }
                column(CompanyData_Name;CompanyData.Name)
                {
                }
                column(UPPERCASE__Payroll_Payslip_Header____Employee_No__;UPPERCASE("Payroll-Payslip Header."."Employee No"))
                {
                }
                column(UPPERCASE__Period______Payroll_Payslip_Header____Payroll_Period__;UPPERCASE('Period ' + "Payroll-Payslip Header."."Payroll Period"))
                {
                }
                column(UPPERCASE_GrpText_;UPPERCASE(GrpText))
                {
                }
                column(UPPERCASE_BUName_;UPPERCASE(BUName))
                {
                }
                column(EMPLOYEE_NO_Caption;EMPLOYEE_NO_CaptionLbl)
                {
                }
                column(EMPLOYEE_NAMECaption;EMPLOYEE_NAMECaptionLbl)
                {
                }
                column(COST_CENTERCaption;COST_CENTERCaptionLbl)
                {
                }
                column(BUDGET_CENTERCaption;BUDGET_CENTERCaptionLbl)
                {
                }
                column(Payroll_Payslip_Header__Payroll_Period;"Payroll Period")
                {
                }
                column(Payroll_Payslip_Header__Employee_No;"Employee No")
                {
                }
                dataitem(DataItem1581;Table50006)
                {
                    DataItemLink = Payroll Period=FIELD(Payroll Period),
                                   Employee No=FIELD(Employee No);
                    DataItemTableView = SORTING(Payroll Period,Employee No,Sequence No);
                    PrintOnlyIfDetail = false;
                    column(Payroll_Payslip_Lines___Payslip_Text_;"Payslip Text")
                    {
                    }
                    column(Payroll_Payslip_Lines__Amount;Amount)
                    {
                    }
                    column(Payroll_Payslip_Lines__Payroll_Period;"Payroll Period")
                    {
                    }
                    column(Payroll_Payslip_Lines__Employee_No;"Employee No")
                    {
                    }
                    column(Payroll_Payslip_Lines__E_D_Code;"E/D Code")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF "Payroll-Payslip Lines."."Sequence No"=0 THEN
                          CurrReport.SKIP;
                        IF ("Payroll-Payslip Lines.".Amount=0) AND (NOT "Show Zero Values") THEN
                          CurrReport.SKIP;
                    end;

                    trigger OnPreDataItem()
                    begin
                        // SETFILTER("Payslip appearance", '<>%1', 4);
                    end;
                }

                trigger OnAfterGetRecord()
                begin

                    IF NOT Payrec.GET("Payroll-Payslip Header."."Employee No") THEN CurrReport.SKIP;
                    IF Payrec.Blocked THEN CurrReport.SKIP;                 //Added to skip Blocked Employees

                    BusinessUnit := Payrec."Global Dimension 1 Code";

                    Department := Payrec."Global Dimension 2 Code";


                    Designation := Payrec.Designation;

                    PeriodRec.GET("Payroll Period");
                    IF PeriodRec.Name <> '' THEN
                      PayAdviceTitle := DELCHR (PeriodRec.Name, '<>')
                    ELSE
                      PayAdviceTitle := DELCHR ("Payroll-Payslip Header."."Payroll Period", '<>');
                end;
            }

            trigger OnAfterGetRecord()
            begin

                IF Employee.Blocked THEN
                CurrReport.SKIP;

                IF PGrpRec.GET(Employee."Posting Group") THEN
                  PGrpName := PGrpRec.Description
                ELSE
                  PGrpName := '';

                GrpText :=  PGrpName + ' STAFF PAYROLL';
            end;

            trigger OnPreDataItem()
            var
                gpc: Codeunit "50004";
            begin
                //Employee.SETRANGE("Posting Group",gpc.GetStoredGroup);
                CompanyData.GET;
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

    trigger OnInitReport()
    begin
        "Show Zero Values" := TRUE;
    end;

    var
        PayAdviceTitle: Text[80];
        CompanyData: Record "79";
        RecOfEDFile: Record "50001";
        PeriodRec: Record "50004";
        "Show Zero Values": Boolean;
        PGrpRec: Record "50011";
        PGrpCode: Code[10];
        PGrpName: Text[30];
        GrpText: Text[60];
        BusinessUnit: Code[10];
        Department: Code[10];
        Designation: Text[30];
        BUName: Text[60];
        BURec: Record "220";
        DeptName: Text[60];
        PaySetup: Record "50018";
        NormalTotal: Decimal;
        Payrec: Record "5200";
        EMPLOYEE_NO_CaptionLbl: Label 'EMPLOYEE NO.';
        EMPLOYEE_NAMECaptionLbl: Label 'EMPLOYEE NAME';
        COST_CENTERCaptionLbl: Label 'COST CENTER';
        BUDGET_CENTERCaptionLbl: Label 'BUDGET CENTER';
}

