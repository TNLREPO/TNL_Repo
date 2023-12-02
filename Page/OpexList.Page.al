page 70125 "Opex List"
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE(Compliance = filter(false),
                            Send = filter(false),
                            "Document Type" = CONST(Opex),
                            Reject = filter(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Opex No.';
                }
                field(Date; Rec.Date)
                {
                }
                field("Requester Name"; Rec."Requester Name")
                {
                }
                field("Requester Department"; Rec."Requester Department")
                {
                }
                field("Head of Department"; Rec."Head of Department")
                {
                }
                field("Head of Audit"; Rec."Head of Audit")
                {
                }
                field("General Manager"; Rec."General Manager")
                {
                }
                field("Managing Director"; Rec."Managing Director")
                {
                }
            }
        }
    }

    actions
    {
    }
}

