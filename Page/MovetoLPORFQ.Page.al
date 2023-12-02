page 70063 "Move to LPO RFQ"
{
    CardPageID = "Approved RFQ COF";
    PageType = List;
    SourceTable = "Procurement Header";
    SourceTableView = WHERE ("Move to LPO"=filter(true),
                            "Voucher Raised"=filter(false),
                            Compliance=filter(false),
                            "Adv. Pymt. Required"=filter(false),
                            "Document Type"=filter(Opex),
                            Reject=filter(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Rec. Date)
                {
                }
                field("No.";Rec. "No.")
                {
                    Caption = 'Opex No.';
                }
                field("Requester Name";Rec. "Requester Name")
                {
                }
                field("Requester Department";Rec. "Requester Department")
                {
                }
                field("Head of Department";Rec. "Head of Department")
                {
                }
                field("Head of Audit";Rec. "Head of Audit")
                {
                }
                field("Department Code";Rec. "Department Code")
                {
                }
                field("Proposed Purchase Amount";Rec. "Proposed Purchase Amount")
                {
                }
                field(Vendor;Rec. Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }
}

