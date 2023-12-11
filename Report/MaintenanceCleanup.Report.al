report 50408 "Maintenance Cleanup"
{
    DefaultLayout = RDLC;
    RDLCLayout = './MaintenanceCleanup.rdlc';

    dataset
    {
        dataitem(DataItem9437; Table5625)
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
            column(Maintenance_Ledger_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Maintenance_Ledger_EntryCaption; Maintenance_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Maintenance_Ledger_Entry__Entry_No__Caption; FIELDCAPTION("Entry No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Document No." := '';
                "FA No." := '';
                Amount := 0;
                "Debit Amount" := 0;
                "Credit Amount" := 0;
                "Amount (LCY)" := 0;
                Quantity := 0;
                MODIFY;
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
        Maintenance_Ledger_EntryCaptionLbl: Label 'Maintenance Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

