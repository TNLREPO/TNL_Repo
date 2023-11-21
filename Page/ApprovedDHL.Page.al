page 70220 "Approved DHL"
{
    CardPageID = "Air Online Order Card";
    SourceTable = "Air Online Header";
    SourceTableView = WHERE(Send = filter('Yes'),
                        HoDPartApproval = filter('Yes'),
                        ComplianceCheck = filter('Yes'),
                        HoDAuditApproval = filter('Yes'),
                        "Genarate FM" = filter('Yes'),
                        "Air Order Type" = FILTER('DHL'));
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field("Requester Code"; Rec."Requester Code")
                {
                }
                field("Requester Name"; Rec."Requester Name")
                {
                }
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Requester Department"; Rec."Requester Department")
                {
                }
                field(Date; Rec.Date)
                {
                }
                field("Supplier's Name"; Rec."Supplier's Name")
                {
                }
                field("Profoma Invoice No:"; Rec."Profoma Invoice No:")
                {
                }
                field("Air Order Type"; Rec."Air Order Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

