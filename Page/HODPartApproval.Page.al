page 70194 "HOD Part Approval"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (HoDPartApproval = CONST (Yes),
                            ComplianceCheck = CONST (No),
                            Rejected = CONST (No));

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

