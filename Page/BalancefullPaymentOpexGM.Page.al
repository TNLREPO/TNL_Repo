page 70187 "Balance/full Payment Opex-GM"
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE(ListGM = FILTER('Yes'),
                            Compliance = filter('Yes'),
                            "Balance Paymt. Appr." = filter('Yes'),
                            "Balance Paymt." = filter('No'),
                            Closed = filter('No'),
                            "Document Type" = filter('Opex'),
                            Reject = filter('No'),
                            "Bal. Paymt. Audit" = filter('Approved'),
                            "Bal. Paymt. GM" = FILTER('<>Approved|Rejected'),
                           "Opex Type" = FILTER('<>Entertainment'));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'OPEX No.';
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
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Proposed Purchase Amount"; Rec."Proposed Purchase Amount")
                {
                }
                field("Purchase Justification"; Rec."Purchase Justification")
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

