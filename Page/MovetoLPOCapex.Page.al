page 70158 "Move to LPO -Capex"
{
    CardPageID = "Approved Capex Card2";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Move to LPO=CONST(Yes),
                            Voucher Raised=CONST(No),
                            Compliance=CONST(No),
                            Reject=CONST(No),
                            Adv. Pymt. Required=CONST(No));

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
                    Caption = 'CApex No.';
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

