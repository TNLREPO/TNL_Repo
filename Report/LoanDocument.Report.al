report 50077 "Loan Document"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LoanDocument.rdlc';

    dataset
    {
        dataitem(DataItem3440; Table50013)
        {
            DataItemTableView = SORTING (Loan ID);
            RequestFilterFields = "Loan ID";
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
            column(LOANTXT; LOANTXT)
            {
            }
            column(Loan___Staff_Name_; "Staff Name")
            {
            }
            column(Loan__Description; Description)
            {
            }
            column(Loan___Loan_Amount_; "Loan Amount")
            {
            }
            column(Loan___Start_Period_; "Start Period")
            {
            }
            column(Loan___Number_of_Payments_; "Number of Payments")
            {
            }
            column(Loan___Monthly_Repayment_; "Monthly Repayment")
            {
            }
            column(Loan___Loan_Posting_Date_; "Loan Posting Date")
            {
            }
            column(STAFNOTXT; STAFNOTXT)
            {
            }
            column(STAFFREC_Address; STAFFREC.Address)
            {
            }
            column(LOAN___DOCUMENT__FORCaption; LOAN___DOCUMENT__FORCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Loan__DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Loan___Loan_Amount_Caption; FIELDCAPTION("Loan Amount"))
            {
            }
            column(Loan___Start_Period_Caption; FIELDCAPTION("Start Period"))
            {
            }
            column(Loan___Number_of_Payments_Caption; FIELDCAPTION("Number of Payments"))
            {
            }
            column(Loan___Monthly_Repayment_Caption; FIELDCAPTION("Monthly Repayment"))
            {
            }
            column(Loan___Loan_Posting_Date_Caption; FIELDCAPTION("Loan Posting Date"))
            {
            }
            column(A_loan_has_been_granted_to_Caption; A_loan_has_been_granted_to_CaptionLbl)
            {
            }
            column(Loan__Loan_ID; "Loan ID")
            {
            }
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
        LOANTXT: Text[30];
        STAFNOTXT: Text[30];
        STAFFADR1: Text[30];
        STAFFREC: Record 5200;
        LOAN___DOCUMENT__FORCaptionLbl: Label 'LOAN   DOCUMENT  FOR';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        A_loan_has_been_granted_to_CaptionLbl: Label 'A loan has been granted to:';
}

