page 70248 "Capex Advance HOD Paymt Appr."
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Adv. Pymt. Required=CONST(Yes),
                            Document Type=CONST(Capex),
                            Adv. Paymt. HOD=FILTER(On-hold|' '),
                            Reject=FILTER(No));

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
                    Caption = 'Capex No.';
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
            }
        }
    }

    actions
    {
    }
}

