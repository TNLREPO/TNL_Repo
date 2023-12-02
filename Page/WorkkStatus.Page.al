page 50040 "Workk Status"
{
    PageType = Card;
    SourceTable = "Payroll-E/D Codes.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Model No."; Rec."Model No.")
                {
                }
                field("Model Name"; Rec."Model Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

