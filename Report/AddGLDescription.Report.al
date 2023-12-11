report 50280 "Add GL Description"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AddGLDescription.rdlc';

    dataset
    {
        dataitem(DataItem8894; Table5802)
        {
            DataItemTableView = SORTING (Document No.);
            RequestFilterFields = "Document No.";
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
            column(Value_Entry__Document_No__; "Document No.")
            {
            }
            column(Value_EntryCaption; Value_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Value_Entry__Document_No__Caption; FIELDCAPTION("Document No."))
            {
            }
            column(Value_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                gle.SETRANGE(gle."Document No.", "Value Entry"."Document No.");
                IF gle.FINDFIRST THEN
                    REPEAT
                        IF ABS(gle.Amount) = ABS("Value Entry"."Cost Posted to G/L") THEN BEGIN
                            gle.Description := "Value Entry".Description;
                            gle.MODIFY;
                        END;
                    UNTIL gle.NEXT = 0;
            end;

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
        gle: Record 17;
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

