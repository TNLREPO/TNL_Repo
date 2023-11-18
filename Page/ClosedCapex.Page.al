page 70164 "Closed Capex"
{
    CardPageID = "Capex Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Closed=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                }
                field("No."; "No.")
                {
                    Caption = 'Opex No.';
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Head of Department"; "Head of Department")
                {
                }
                field("Head of Audit"; "Head of Audit")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {
                }
            }
        }
    }

    actions
    {
    }
}

