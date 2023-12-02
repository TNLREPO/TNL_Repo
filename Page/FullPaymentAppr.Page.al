page 70139 "Full  Payment Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE (Compliance = filter (true),
                            "Balance Paymt. Appr."=filter(True),
                           "Balance Paymt."=filter(false),
                            Closed=filter(false),
                            "Document Type"=filter(Opex),
                            Reject=filter(false),
                            "Bal. Paymt. Audit"=FILTER(<>'Approved|Rejected'));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Rec.Date)
                {
                }
                field("No.";Rec."No.")
                {
                    Caption = 'Opex No.';
                }
                field("Requester Name";Rec."Requester Name")
                {
                }
                field("Purchase Justification";Rec."Purchase Justification")
                {
                }
                field("Proposed Purchase Amount";Rec."Proposed Purchase Amount")
                {
                }
                field(Vendor;Rec.Vendor)
                {
                }
                field("Opex Type";Rec."Opex Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

