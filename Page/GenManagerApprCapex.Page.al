page 70156 "Gen. Manager Appr.-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Head of Audit=CONST(Approved),
                            General Manager=CONST(" "),
                            Managing Director=CONST(" "),
                            Reject=CONST(No),
                            Proposed Purchase Amount=FILTER(>100,001),
                            Capex Type=FILTER(<>Fixed Asset));

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

