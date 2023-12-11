report 50414 "Update Description"
{
    DefaultLayout = RDLC;
    RDLCLayout = './UpdateDescription.rdlc';

    dataset
    {
        dataitem(DataItem8894; Table5802)
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
            column(Value_Entry__Entry_No__; "Entry No.")
            {
            }
            column(Value_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Value_EntryCaption; Value_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                GLEntry.SETCURRENTKEY("Document No.", Amount);
                GLEntry.SETRANGE(GLEntry."Document No.", "Value Entry"."Document No.");
                GLEntry.SETRANGE(GLEntry.Amount, "Value Entry"."Cost Posted to G/L");
                IF GLEntry.FINDFIRST THEN BEGIN
                    REPEAT
                        GLEntry.Description := "Value Entry".Description;
                        GLEntry.MODIFY;
                    UNTIL GLEntry.NEXT = 0;
                END;

                GLEntry2.SETCURRENTKEY("Document No.", Amount);
                GLEntry2.SETRANGE(GLEntry2."Document No.", "Value Entry"."Document No.");
                GLEntry2.SETRANGE(GLEntry2.Amount, -1 * "Value Entry"."Cost Posted to G/L");
                IF GLEntry2.FINDFIRST THEN BEGIN
                    REPEAT
                        GLEntry2.Description := "Value Entry".Description;
                        GLEntry2.MODIFY;
                    UNTIL GLEntry2.NEXT = 0;
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
        GLEntry: Record 17;
        GLEntry2: Record 17;
        Value_EntryCaptionLbl: Label 'Value Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

