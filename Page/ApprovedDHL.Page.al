page 70220 "Approved DHL"
{
    CardPageID = "Air Online Order Card";
    SourceTable = Table70022;
    SourceTableView = WHERE (Send = CONST (Yes),
                            HoDPartApproval = CONST (Yes),
                            ComplianceCheck = CONST (Yes),
                            HoDAuditApproval = CONST (Yes),
                            Genarate FM=CONST(Yes),
                            Air Order Type=FILTER(DHL));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field("Requester Code";"Requester Code")
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Department Code";"Department Code")
                {
                }
                field("Requester Department";"Requester Department")
                {
                }
                field(Date;Date)
                {
                }
                field("Supplier's Name";"Supplier's Name")
                {
                }
                field("Profoma Invoice No:";"Profoma Invoice No:")
                {
                }
                field("Air Order Type";"Air Order Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

