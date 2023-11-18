page 50149 "Purch. Line Comment List"
{
    Caption = 'Comment List';
    DataCaptionFields = "Table Name", "No.";
    Editable = false;
    PageType = Card;
    SourceTable = Table97;

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
            }
        }
    }

    actions
    {
    }
}

