page 70136 "Payment Vouncher"
{
    CardPageID = "Approved Opex card3";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Voucher Raised=CONST(Yes),
                            Closed=CONST(No),
                            Document Type=CONST(Opex),
                            Reject=CONST(No));

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
                    Caption = 'Opex No.';
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Head of Department"; "Head of Department")
                {
                }
                field("Head of Audit"; "Head of Audit")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {
                }
                field(Vendor; Vendor)
                {
                }
                field("Purchase Justification"; "Purchase Justification")
                {
                }
                field("Asset Description"; "Asset Description")
                {
                }
            }
        }
    }

    actions
    {
    }
}

