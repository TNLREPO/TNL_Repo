page 70163 "Balance Payment-Capex"
{
    CardPageID = BalanceCapexCard;
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Compliance=CONST(Yes),
                            Balance Paymt.=CONST(Yes),
                            Voucher Raised=CONST(No),
                            Closed=CONST(No),
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

