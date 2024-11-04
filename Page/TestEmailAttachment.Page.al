page 50001 "Test Email Attachment"
{
    PageType = List;
    SourceTable = "Test Email Attachment";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Send; Rec.Send)
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

