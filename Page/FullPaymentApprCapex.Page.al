page 70162 "Full  Payment Appr.-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Compliance = CONST (Yes),
                            Balance Paymt. Appr.=CONST(Yes),
                            Balance Paymt.=CONST(No),
                            Closed=CONST(No),
                            Document Type=CONST(Capex),
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
                    Caption = 'CAPEX No.';
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

