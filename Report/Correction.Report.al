report 50391 Correction
{
    DefaultLayout = RDLC;
    RDLCLayout = './Correction.rdlc';

    dataset
    {
        dataitem(DataItem7170; Table50141)
        {
            DataItemTableView = SORTING (EntryNo);
            RequestFilterFields = EntryNo;
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
            column(Correction_EntryNo; EntryNo)
            {
            }
            column(Correction_Amount; Amount)
            {
            }
            column(CorrectionCaption; CorrectionCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF ValueEntry.GET(EntryNo) THEN BEGIN
                    ValueEntry."Purchase Amount (Actual)" := Amount;
                    ValueEntry."Cost Amount (Actual)" := Amount;
                    ValueEntry."Cost Posted to G/L" := Amount;
                    ValueEntry."Cost per Unit" := Amount;
                    Correction.MODIFY;
                END;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO(EntryNo);
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
        ValueEntry: Record 5802;
        CorrectionCaptionLbl: Label 'Correction';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

