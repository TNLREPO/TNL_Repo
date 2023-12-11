report 50384 "Customer Receipts"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerReceipts.rdlc';

    dataset
    {
        dataitem(DataItem7069; Table17)
        {
            DataItemTableView = SORTING (Document No.)
                                WHERE (G/L Account No.=CONST(112510));
            RequestFilterFields = "Posting Date", "Document No.";
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
            column(G_L_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(G_L_Entry__Document_No__; "Document No.")
            {
            }
            column(G_L_Entry_Description; Description)
            {
            }
            column(G_L_Entry_Amount; Amount)
            {
            }
            column(G_L_Entry_Amount_Control1000000000; Amount)
            {
            }
            column(Customer_PaymentsCaption; Customer_PaymentsCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(G_L_Entry__Posting_Date_Caption; FIELDCAPTION("Posting Date"))
            {
            }
            column(G_L_Entry__Document_No__Caption; FIELDCAPTION("Document No."))
            {
            }
            column(G_L_Entry_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(G_L_Entry_AmountCaption; FIELDCAPTION(Amount))
            {
            }
            column(G_L_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Document No.");
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
        Customer_PaymentsCaptionLbl: Label 'Customer Payments';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

