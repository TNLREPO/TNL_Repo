page 50600 "Fixed Price"
{
    PageType = List;
    SourceTable = "Leave Request2";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No."; Rec."Request No.")
                {
                }
                field("Entry Date"; Rec."Entry Date")
                {
                }
                field("Request Type"; Rec."Request Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

