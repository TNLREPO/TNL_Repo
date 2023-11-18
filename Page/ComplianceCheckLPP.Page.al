page 70195 "Compliance Check LPP"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (HoDPartApproval = CONST (Yes),
                            ComplianceCheck = CONST (Yes),
                            HoDAuditApproval = CONST (No),
                            Procurement Approval=CONST(No),
                            MD Approval=CONST(No),
                            GM Approval=CONST(No),
                            Rejected=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPP No."; "LPP No.")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Supplier's Name"; "Supplier's Name")
                {
                }
                field("Justification for purchase"; "Justification for purchase")
                {
                }
                field("Total Purchase Value"; "Total Purchase Value")
                {
                }
            }
        }
    }

    actions
    {
    }
}

