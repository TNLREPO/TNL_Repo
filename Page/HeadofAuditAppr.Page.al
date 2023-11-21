page 70129 "Head of Audit Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Head of Department" = FILTER(Approved),
                            "Head of Audit" = FILTER(<> Approved),
                            Reject = FILTER('No'),
                           "Document Type" = FILTER(Opex));

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
                field("Department Code"; Rec."Department Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

