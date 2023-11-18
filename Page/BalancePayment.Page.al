page 70140 "Balance Payment"
{
    CardPageID = "Approved Opex Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Compliance = CONST (Yes),
                            Balance Paymt.=CONST(Yes),
                            Voucher Raised=CONST(No),
                            Closed=CONST(No),
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

