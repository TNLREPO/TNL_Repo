page 70154 "Head of Audit Appr.-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Head of Department=CONST(Approved),
                            Head of Audit=FILTER(<>Approved),
                            Reject=CONST(No));

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
                field("Department Code";"Department Code")
                {
                }
                field("Purchase Justification";"Purchase Justification")
                {
                }
            }
        }
    }

    actions
    {
    }
}

