page 70186 "Balance/Full Payment Opex-MD"
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE(ListMD = FILTER(true),
                            Compliance = filter(true),
                            "Balance Paymt. Appr." = filter(true),
                            "Balance Paymt." = filter(False),
                            Closed = filter(False),
                            "Document Type" = filter('Opex'),
                            Reject = filter(False),
                            "Bal. Paymt. Audit" = filter('Approved'),
                            "Bal. Paymt. GM" = FILTER(<> 'Approved|Rejected'),
                           "Voucher Raised" = filter(False));
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
                field("Opex Type"; Rec."Opex Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

