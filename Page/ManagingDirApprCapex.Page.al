page 70157 "Managing Dir. Appr.-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Head of Audit=CONST(Approved),
                            General Manager=CONST(" "),
                            Managing Director=FILTER(<>Approved),
                            Reject=CONST(No),
                            Proposed Purchase Amount=FILTER(>100,000));

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

