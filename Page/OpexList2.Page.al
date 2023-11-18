page 70245 "Opex List2"
{
    CardPageID = "Opex Card2";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Compliance = CONST (No),
                            Send = CONST (No),
                            Document Type=CONST(Opex),
                            Reject=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    Caption = 'Opex No.';
                }
                field(Date; Date)
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Head of Department"; "Head of Department")
                {
                }
                field("Head of Audit"; "Head of Audit")
                {
                }
                field("General Manager"; "General Manager")
                {
                }
                field("Managing Director"; "Managing Director")
                {
                }
            }
        }
    }

    actions
    {
    }
}

