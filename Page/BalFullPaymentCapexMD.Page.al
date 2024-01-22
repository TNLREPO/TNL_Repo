page 70119 "Bal/Full Payment Capex-MD"
{
    ApplicationArea = All;
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE("Document Type" = filter('Capex'),
                            Compliance = filter(True),
                           "Balance Paymt." = filter(false),
                            Closed = filter(false),
                            Reject = filter(false),
                            "Bal. Paymt. Audit" = filter('Approved'),
                            "Bal. Paymt. MD" = FILTER(' '),
                            "Balance Paymt. Appr." = filter(True),
                            "Proposed Purchase Amount" = FILTER('>=100,000'));

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
                field("Purchase Justification"; Rec."Purchase Justification")
                {
                }
                field("Proposed Purchase Amount"; Rec."Proposed Purchase Amount")
                {
                }
                field(Vendor; Rec.Vendor)
                {
                }
                field("Capex Type"; Rec."Capex Type")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        CurrPage.EDITABLE := TRUE;
    end;
}

