page 50057 "Motor-Show Repair List"
{
    CardPageID = "Parts Department Role2";
    PageType = List;
    SourceTable = Table70026;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No."; "Request No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
                {
                }
                field("Request Type"; "Request Type")
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

