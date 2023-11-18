page 50620 "TNL Work Order List"
{
    CardPageID = "TNL-Work Order Card";
    PageType = List;
    SourceTable = Table70025;
    SourceTableView = WHERE (Send for Approval=CONST(No));

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

