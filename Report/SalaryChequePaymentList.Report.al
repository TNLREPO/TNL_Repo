report 50073 "Salary Cheque Payment List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SalaryChequePaymentList.rdlc';

    dataset
    {
        dataitem(DataItem6885; Table50012)
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Code";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(Payroll_Banks__Code; Code)
            {
            }
            column(Payroll_Banks__Name; Name)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(SALARY_CHEQUE_PAYMENT_LISTCaption; SALARY_CHEQUE_PAYMENT_LISTCaptionLbl)
            {
            }
            column(Bank_Code_NameCaption; Bank_Code_NameCaptionLbl)
            {
            }
            dataitem(DataItem7528; Table5200)
            {
                DataItemTableView = SORTING (Posting Group, Bank);
                RequestFilterFields = "Period Filter", Bank;
                column(Employee_Bank; Bank)
                {
                }
                column(Employee__No__; "No.")
                {
                }
                column(FullName; FullName)
                {
                }
                column(Employee__Bank_Account_; "Bank Account")
                {
                }
                column(Employee_EDAmount; EDAmount)
                {
                }
                column(BTotal; BTotal)
                {
                }
                column(Employee__No__Caption; FIELDCAPTION("No."))
                {
                }
                column(Full_NameCaption; Full_NameCaptionLbl)
                {
                }
                column(Employee__Bank_Account_Caption; FIELDCAPTION("Bank Account"))
                {
                }
                column(Net_PayCaption; Net_PayCaptionLbl)
                {
                }
                column(Employee_BankCaption; FIELDCAPTION(Bank))
                {
                }
                column(TotalCaption; TotalCaptionLbl)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF Employee.Blocked THEN CurrReport.SKIP; //Added by Adam to skip Blocked Employees
                    Employee.CALCFIELDS(Employee.EDAmount);
                    BTotal := BTotal + Employee.EDAmount;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FIELDNO("Business Unit");
                    SETRANGE("Posting Group", DefaultPostingGroup);
                    SETRANGE(Bank, "Payroll-Banks.".Code);
                    IF Employee.GETFILTER("Period Filter") = '' THEN
                        ERROR('You must choose a Period');

                    Employee.SETRANGE(Employee."ED Filter", ED."E/D Code");
                end;
            }

            trigger OnAfterGetRecord()
            begin
                Emp.SETCURRENTKEY("Posting Group", Bank);
                Emp.SETRANGE(Emp."Posting Group", DefaultPostingGroup);
                Emp.SETRANGE(Emp.Bank, "Payroll-Banks.".Code);
                IF NOT Emp.FIND('-') THEN
                    CurrReport.SKIP;
                BTotal := 0;
            end;

            trigger OnPreDataItem()
            begin
                DefaultPostingGroup := 'TNL';        //gpc.GetStoredGroup();
                ED.SETRANGE(ED."Payslip Group ID", ED."Payslip Group ID"::"NET PAY DUE");
                ED.FIND('-');
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        gpc: Codeunit 50004;
        DefaultPostingGroup: Code[20];
        Emp: Record 5200;
        BTotal: Decimal;
        ED: Record 50001;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        SALARY_CHEQUE_PAYMENT_LISTCaptionLbl: Label 'SALARY CHEQUE PAYMENT LIST';
        Bank_Code_NameCaptionLbl: Label 'Bank Code/Name';
        Full_NameCaptionLbl: Label 'Full Name';
        Net_PayCaptionLbl: Label 'Net Pay';
        TotalCaptionLbl: Label 'Total';
}

