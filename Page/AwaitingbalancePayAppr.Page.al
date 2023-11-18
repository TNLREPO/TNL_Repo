page 70148 "Awaiting balance Pay. Appr."
{
    CardPageID = "Approved Opex card2";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Advance Voucher=CONST(Yes),
                            Document Type=CONST(Opex),
                            Reject=CONST(No),
                            Balance Paymt. Appr.=CONST(No),
                            Compliance=CONST(No));

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
                field("Department Code"; "Department Code")
                {
                }
                field("Purchase Justification"; "Purchase Justification")
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

