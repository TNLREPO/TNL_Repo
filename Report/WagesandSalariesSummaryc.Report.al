report 50018 "Wages and Salaries (Summary-c)"
{
    DefaultLayout = RDLC;
    RDLCLayout = './WagesandSalariesSummaryc.rdlc';

    dataset
    {
        dataitem(DataItem7496; Table50004)
        {
            DataItemTableView = SORTING (Period Code);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Period Code";
            RequestFilterHeading = 'Payroll Period';
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(Payroll_Periods___Payroll_Periods____Period_Code_; "Payroll-Periods."."Period Code")
            {
            }
            column(Payroll_Periods___Payroll_Periods___Name; "Payroll-Periods.".Name)
            {
            }
            column(Wages_and_Salaries__Summary__; 'Wages and Salaries (Summary)')
            {
            }
            column(USERID; USERID)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(Payroll_Period_Caption; Payroll_Period_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            dataitem(DataItem1581; Table50006)
            {
                DataItemLink = Payroll Period=FIELD(Period Code);
                DataItemTableView = SORTING (E/D Code);
                RequestFilterFields = "Employee No";
                RequestFilterHeading = 'Employees';
                column(Payroll_Payslip_Lines___Payroll_Payslip_Lines____E_D_Code_; "Payroll-Payslip Lines."."E/D Code")
                {
                }
                column(EDRec__Payslip_Text_; EDRec."Payslip Text")
                {
                }
                column(Payroll_Payslip_Lines___Payroll_Payslip_Lines___Amount; "Payroll-Payslip Lines.".Amount)
                {
                }
                column(Payroll_Payslip_Lines__Payroll_Period; "Payroll Period")
                {
                }
                column(Payroll_Payslip_Lines__Employee_No; "Employee No")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /*PayHead.RESET;
                    PayHead.GET(PRPeriod, "Employee No");
                    IF (PayHead."Budget Center Code" <> "Budget Centers".Code) THEN CurrReport.SKIP;
                    */

                end;

                trigger OnPreDataItem()
                begin
                    //SETRANGE("Payroll Period", PRPeriod);

                    CurrReport.CREATETOTALS(Amount);

                    /*CLEAR(PayHead);*/
                    /*PayHead.GET( PayPerReq.Code, "Employee No");*/
                    /*IF (PayHead."Department Code" <> Department.Code) THEN CurrReport.SKIP;*/

                end;
            }

            trigger OnPreDataItem()
            begin
                //PRPeriod := "Payroll-Periods.".GETFILTER("Period Code");
                //IF PRPeriod = '' THEN ERROR('Payroll Period must not be blank')
                //ELSE
                //CurrReport.SKIP;
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
        EDRec: Record 50001;
        PRPeriod: Code[10];
        PayPerReq: Record 50004;
        ParPerRec: Record 50004;
        PayHead: Record "50007";
        TotalAmount: Decimal;
        Payroll_Period_CaptionLbl: Label 'Payroll Period:';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

