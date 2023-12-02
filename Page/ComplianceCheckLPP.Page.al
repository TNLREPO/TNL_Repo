page 70195 "Compliance Check LPP"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = "Local Part Purchase Register";
    SourceTableView = WHERE(HoDPartApproval = filter(true),
                            ComplianceCheck = filter(true),
                            HoDAuditApproval = filter(false),
                            "Procurement Approval" = filter(false),
                            "MD Approval" = filter(false),
                            "GM Approval" = filter(false),
                            Rejected = filter(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPP No."; Rec."LPP No.")
                {
                }
                field("Requester Name"; Rec."Requester Name")
                {
                }
                field("Requester Department"; Rec."Requester Department")
                {
                }
                field("Supplier's Name"; Rec."Supplier's Name")
                {
                }
                field("Justification for purchase"; Rec."Justification for purchase")
                {
                }
                field("Total Purchase Value"; Rec."Total Purchase Value")
                {
                }
            }
        }
    }

    actions
    {
    }
}

