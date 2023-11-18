page 70060 "Request For Quotes COF"
{
    CardPageID = "Request For Quote card";
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

