page 70159 "Advance Paymt Appr.-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Document Type" = filter('Capex'),
                            "Adv. Pymt. Required" = filter(true),
                            "Adv. Paymt. Audit" = FILTER(<> 'Approved'),
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

