report 60009 "Sales Cr.Memo Reason Code Mtrx"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Layout/SalesCrMemoReasonCodeMatrix.rdl';
    Caption = 'Sales Credit Memo Reason Code Matrix';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(SalesCrMemoHeader; "Sales Cr.Memo Header")
        {
            RequestFilterFields = "Posting Date", "Sell-to Customer No.";

            column(ReasonCodeTxt; ReasonCodeTxt)
            {
            }
            column(ReasonCodeDescription; ReasonCodeDescription)
            {
            }
            column(SellToCustomerNo; "Sell-to Customer No.")
            {
            }
            column(CustomerName; "Sell-to Customer Name")
            {
            }
            column(DocumentCount; 1)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(ReportFilters; ReportFilters)
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(USERID; USERID)
            {
            }

            trigger OnPreDataItem()
            begin
                ReportFilters := GETFILTERS;
            end;

            trigger OnAfterGetRecord()
            begin
                // Blank Reason Code documents are excluded from the matrix
                if "Reason Code" = '' then
                    CurrReport.Skip();

                ReasonCodeTxt := "Reason Code";
                if ReasonCode.Get("Reason Code") then
                    ReasonCodeDescription := ReasonCode.Description
                else
                    ReasonCodeDescription := "Reason Code";
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
        ReasonCode: Record "Reason Code";
        ReasonCodeTxt: Code[10];
        ReasonCodeDescription: Text[100];
        ReportFilters: Text[250];
}
