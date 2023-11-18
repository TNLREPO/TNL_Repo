page 70196 "HOD Audit Approval LPP"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (ComplianceCheck = CONST (Yes),
                            HoDAuditApproval = CONST (Yes),
                            Procurement Approval=CONST(No),
                            MD Approval=CONST(No),
                            GM Approval=CONST(No),
                            Order Type=FILTER(<>Isolo Store),
                            Rejected=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPP No.";"LPP No.")
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Requester Department";"Requester Department")
                {
                }
                field("Supplier's Name";"Supplier's Name")
                {
                }
                field("Justification for purchase";"Justification for purchase")
                {
                }
                field("Total Purchase Value";"Total Purchase Value")
                {
                }
            }
        }
    }

    actions
    {
    }
}

