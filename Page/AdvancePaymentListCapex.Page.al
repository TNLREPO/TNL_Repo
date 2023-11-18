page 70153 "Advance Payment List-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Document Type" = filter('Capex'),
                            "Adv. Paymt. Audit" = filter('Approved'),
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
                field("Proposed Purchase Amount"; Rec."Proposed Purchase Amount")
                {
                }
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Adv. Paymt. Audit"; Rec."Adv. Paymt. Audit")
                {
                    Caption = 'Head of Audit';
                }
            }
        }
    }

    actions
    {
    }
}

