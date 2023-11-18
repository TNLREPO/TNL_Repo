page 50621 "Motor Show Repair List"
{
    CardPageID = "Motor Show Repair Card";
    PageType = List;
    SourceTable = Table70026;
    SourceTableView = WHERE (2nd Approval Status=FILTER(<>Approved),
                            Reject=CONST(No),
                            Send for Approval=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No.";"Request No.")
                {
                }
                field("Entry Date";"Entry Date")
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Global Dimension 1 code";"Global Dimension 1 code")
                {
                }
                field("Request Type";"Request Type")
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

