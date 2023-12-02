page 50057 "Motor-Show Repair List"
{
    CardPageID = "Parts Department Role2";
    PageType = List;
    SourceTable = "Motor Show Repair";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No.";Rec."Request No.")
                {
                }
                field("Entry Date";Rec."Entry Date")
                {
                }
                field("Requester Name";Rec."Requester Name")
                {
                }
                field("Global Dimension 1 code";Rec."Global Dimension 1 code")
                {
                }
                field("Request Type";Rec."Request Type")
                {
                    Caption = 'Pupose';
                }
            }
        }
    }

    actions
    {
    }
}

