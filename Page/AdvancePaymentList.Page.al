page 70128 "Advance Payment List"
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Adv. Paymt. Audit" = filter('Approved'),
                            "Document Type" = filter('Opex'),
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

