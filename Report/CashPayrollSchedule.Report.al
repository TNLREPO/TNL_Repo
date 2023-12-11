report 50062 "Cash Payroll Schedule"
{
    // This report prints the amounts for the required E/D;
    DefaultLayout = RDLC;
    RDLCLayout = './CashPayrollSchedule.rdlc';


    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (No.)
                                WHERE (Blocked = CONST (No));
            RequestFilterFields = "Period Filter", "Mode of payment";
            RequestFilterHeading = 'Period';
            column(GETFILTER__Period_Filter__; GETFILTER("Period Filter"))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(TODAY; TODAY)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(DELCHR__FullName_______; DELCHR(FullName, '<>'))
            {
            }
            column(BasicAm; BasicAm)
            {
            }
            column(Employee__Mode_of_payment_; "Mode of payment")
            {
            }
            column(EmptyString; '')
            {
            }
            column(BasicAm_Control26; BasicAm)
            {
            }
            column(Cash_Payroll_ScheduleCaption; Cash_Payroll_ScheduleCaptionLbl)
            {
            }
            column(Period_Caption; Period_CaptionLbl)
            {
            }
            column(Page_Caption; Page_CaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(Employee_NameCaption; Employee_NameCaptionLbl)
            {
            }
            column(Net_SalaryCaption; Net_SalaryCaptionLbl)
            {
            }
            column(Employee__Mode_of_payment_Caption; FIELDCAPTION("Mode of payment"))
            {
            }
            column(TOTALSCaption; TOTALSCaptionLbl)
            {
            }
            column(Employee_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Employee.Blocked THEN CurrReport.SKIP; //Added by Adam to skip Blocked Employees
                IF Employee."Mode of payment" =
                   Employee."Mode of payment"::Bank THEN
                    CurrReport.SKIP;

                SETRANGE("ED Filter", BASIC);
                CALCFIELDS(EDAmount);
                BasicAm := EDAmount;

                IF BasicAm = 0 THEN CurrReport.SKIP;


                IF HeadPrint THEN BEGIN
                    HeadPrint := FALSE
                END
            end;

            trigger OnPreDataItem()
            begin
                IF GETFILTER("Period Filter") = '' THEN
                    ERROR('The period delimitation must be entered');


                DefaultPostingGroup := 'TNL';      //gpc.GetStoredGroup();
                FILTERGROUP(10);
                SETRANGE("Posting Group", DefaultPostingGroup);
                FILTERGROUP(0);

                CurrReport.CREATETOTALS(EmployeeAm, EmployerAm, BasicAm);
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
        EdFind.SETRANGE("Payslip Group ID", EdFind."Payslip Group ID"::"NET PAY DUE");
        EdFind.FIND('-');
        BASIC := EdFind."E/D Code";
    end;

    var
        BasicAm: Decimal;
        BASIC: Code[20];
        Edrec: Record 50001;
        EmployerAm: Decimal;
        EmployeeAm: Decimal;
        CompanyData: Record "79";
        NSSF1: Code[20];
        NSSF2: Code[20];
        HeadPrint: Boolean;
        gpc: Codeunit 50004;
        DefaultPostingGroup: Code[20];
        EdFind: Record 50001;
        Cash_Payroll_ScheduleCaptionLbl: Label 'Cash Payroll Schedule';
        Period_CaptionLbl: Label 'Period:';
        Page_CaptionLbl: Label 'Page:';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        Employee_NameCaptionLbl: Label 'Employee Name';
        Net_SalaryCaptionLbl: Label 'Net Salary';
        TOTALSCaptionLbl: Label 'TOTALS';
}

