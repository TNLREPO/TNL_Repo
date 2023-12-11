report 50101 "G/L Entries Listing"
{
    DefaultLayout = RDLC;
    RDLCLayout = './GLEntriesListing.rdlc';

    dataset
    {
        dataitem(DataItem7069; Table17)
        {
            DataItemTableView = SORTING (G/L Account No., Posting Date);
            RequestFilterFields = "G/L Account No.", "Posting Date", "Document Type", "Global Dimension 1 Code";
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
            column(G_L_Entry__G_L_Account_No__; "G/L Account No.")
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
            column(TotalFor___________G_L_Account_No__; TotalFor + '  ' + "G/L Account No.")
            {
            }
            column(G_L_Entry_Amount_Control1000000026; Amount)
            {
            }
            column(G_L_EntryCaption; G_L_EntryCaptionLbl)
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
            column(G_L_Entry__G_L_Account_No__Caption; FIELDCAPTION("G/L Account No."))
            {
            }
            column(G_L_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("G/L Account No.");
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
        G_L_EntryCaptionLbl: Label 'G/L Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

