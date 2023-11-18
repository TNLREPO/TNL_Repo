page 70135 "Advance Paymt Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Adv. Pymt. Required" = filter(true),
                            "Adv. Paymt. Audit" = filter(<> 'Approved'),
                            "Document Type" = CONST(Opex),
                            Reject = filter(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Rec.Date)
                {
                }
                field("No."; Rec."No.")
                {
                    Caption = 'Opex No.';
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
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Proposed Purchase Amount"; Rec."Proposed Purchase Amount")
                {
                }
            }
        }
    }

    actions
    {
    }
}

