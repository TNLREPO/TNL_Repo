page 70198 "GM procurement Approval"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = "Local Part Purchase Register";
    SourceTableView = WHERE("Procurement Approval" = FILTER(false),
                            "GM Approval" = FILTER('Yes'),
                            "MD Approval" = FILTER(false),
                            "Genarate LPO" = FILTER(false),
                            "Total Purchase Value" = FILTER('100,001..499,000.99'),
                            Rejected = FILTER(false));

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

