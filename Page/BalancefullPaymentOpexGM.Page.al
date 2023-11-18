page 70187 "Balance/full Payment Opex-GM"
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (ListGM = FILTER (Yes),
                            Compliance = CONST (Yes),
                            Balance Paymt. Appr.=CONST(Yes),
                            Balance Paymt.=CONST(No),
                            Closed=CONST(No),
                            Document Type=CONST(Opex),
                            Reject=CONST(No),
                            Bal. Paymt. Audit=CONST(Approved),
                            Bal. Paymt. GM=FILTER(<>Approved|Rejected),
                            Opex Type=FILTER(<>Entertainment));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    Caption = 'OPEX No.';
                }
                field(Date;Date)
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Requester Department";"Requester Department")
                {
                }
                field("Head of Department";"Head of Department")
                {
                }
                field("Head of Audit";"Head of Audit")
                {
                }
                field("Department Code";"Department Code")
                {
                }
                field("Proposed Purchase Amount";"Proposed Purchase Amount")
                {
                }
                field("Purchase Justification";"Purchase Justification")
                {
                }
                field(Vendor;Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }
}

