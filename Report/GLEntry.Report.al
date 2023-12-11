report 50412 GLEntry
{
    DefaultLayout = RDLC;
    RDLCLayout = './GLEntry.rdlc';

    dataset
    {
        dataitem(DataItem7069; Table17)
        {
            DataItemTableView = SORTING (Entry No.);
            RequestFilterFields = "Entry No.";
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
            column(G_L_Entry__Entry_No__; "Entry No.")
            {
            }
            column(G_L_Entry__G_L_Account_No__; "G/L Account No.")
            {
            }
            column(G_L_EntryCaption; G_L_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(G_L_Entry__G_L_Account_No__Caption; FIELDCAPTION("G/L Account No."))
            {
            }
            column(G_L_Entry__Entry_No__Caption; FIELDCAPTION("Entry No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF ValueEntry.GET(EntryNoRec."Entry No.") THEN BEGIN



                END;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Entry No.");
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
        EntryNoRec: Record "50174";
        ValueEntry: Record 5802;
        G_L_EntryCaptionLbl: Label 'G/L Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

