page 70139 "Full  Payment Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Compliance = CONST (Yes),
                            Balance Paymt. Appr.=CONST(Yes),
                            Balance Paymt.=CONST(No),
                            Closed=CONST(No),
                            Document Type=CONST(Opex),
                            Reject=CONST(No),
                            Bal. Paymt. Audit=FILTER(<>Approved|Rejected));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                }
                field("No.";"No.")
                {
                    Caption = 'Opex No.';
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Purchase Justification";"Purchase Justification")
                {
                }
                field("Proposed Purchase Amount";"Proposed Purchase Amount")
                {
                }
                field(Vendor;Vendor)
                {
                }
                field("Opex Type";"Opex Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

