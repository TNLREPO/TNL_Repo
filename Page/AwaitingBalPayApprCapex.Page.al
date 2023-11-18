page 70167 "Awaiting Bal. Pay. Appr.-Capex"
{
    CardPageID = "Approved Capex Card2";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Advance Voucher=CONST(Yes),
                            Compliance=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                }
                field("No."; "No.")
                {
                    Caption = 'Capex No.';
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Purchase Justification"; "Purchase Justification")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {
                }
                field(Vendor; Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }
}

