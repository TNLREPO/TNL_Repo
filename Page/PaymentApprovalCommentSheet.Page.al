page 50200 "Payment Approval Comment Sheet"
{
    AutoSplitKey = true;
    Caption = 'Comment Sheet';
    DataCaptionFields = "No.";
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = Table50145;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Date; Date)
                {
                }
                field(Comment; Comment)
                {
                }
                field(Code; Code)
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        SetUpNewLine;
    end;
}

