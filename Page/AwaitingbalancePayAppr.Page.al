page 70148 "Awaiting balance Pay. Appr."
{
    CardPageID = "Approved Opex card2";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Advance Voucher" = filter(true),
                            "Document Type" = filter('Opex'),
                            Reject = filter(false),
                            "Balance Paymt. Appr." = filter(false),
                            Compliance = filter(false));

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
                field("Department Code"; Rec."Department Code")
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

