page 70149 "Reject Opex"
{
    CardPageID = "Approved Opex card4";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Reject = CONST (Yes));

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
            }
        }
    }

    actions
    {
    }
}

