page 70129 "Head of Audit Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Head of Department=CONST(Approved),
                            Head of Audit=FILTER(<>Approved),
                            Reject=CONST(No),
                            Document Type=CONST(Opex));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    Caption = 'Opex No.';
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
                field("Department Code";"Department Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

