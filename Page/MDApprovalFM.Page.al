page 70215 "MD Approval FM"
{
    CardPageID = "Air Online Order Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70022;
    SourceTableView = WHERE (Send = CONST (Yes),
                            HoDPartApproval = CONST (Yes),
                            ComplianceCheck = CONST (Yes),
                            HoDAuditApproval = CONST (Yes),
                            GMapproval = CONST (No),
                            MDapproval = CONST (Yes),
                            Genarate FM=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field("Requester Code"; "Requester Code")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field(Date; Date)
                {
                }
                field("Supplier's Name"; "Supplier's Name")
                {
                }
                field("Profoma Invoice No:"; "Profoma Invoice No:")
                {
                }
            }
        }
    }

    actions
    {
    }
}

