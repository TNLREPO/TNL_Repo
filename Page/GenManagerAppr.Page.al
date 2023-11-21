page 70132 "Gen. Manager Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE(ListGM = FILTER('Yes'),
                            "Head of Audit" = FILTER(Approved),
                            "General Manager" = FILTER(<> Approved | Rejected),
                            "Managing Director" = FILTER(" "),
                            Reject = FILTER('No'),
                            "Document Type" = FILTER(Opex));

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
                field("Purchase Justification"; Rec."Purchase Justification")
                {
                }
                field("Proposed Purchase Amount"; Rec."Proposed Purchase Amount")
                {
                }
                field(Vendor; Rec.Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }
}

