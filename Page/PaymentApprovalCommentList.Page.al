page 50201 "Payment Approval Comment List"
{
    Caption = 'Comment List';
    DataCaptionFields = "No.";
    DeleteAllowed = false;
    Editable = false;
    LinksAllowed = false;
    PageType = Card;
    SourceTable = Table50145;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                }
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
}

