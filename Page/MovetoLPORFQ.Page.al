page 70063 "Move to LPO RFQ"
{
    CardPageID = "Approved RFQ COF";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Move to LPO=CONST(Yes),
                            Voucher Raised=CONST(No),
                            Compliance=CONST(No),
                            Adv. Pymt. Required=CONST(No),
                            Document Type=CONST(Opex),
                            Reject=CONST(No));

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
                field(Vendor; Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }
}

