page 70118 "Capex List"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Send=CONST(No),
                            Reject=CONST(No),
                            Compliance=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    Caption = 'Capex No.';
                }
                field(Date; Date)
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
            }
        }
    }

    actions
    {
    }
}

