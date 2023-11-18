page 70182 "Confirmation of Warranty"
{
    CardPageID = "Warranty Claim card";
    PageType = List;
    SourceTable = Table50038;
    SourceTableView = WHERE (Labour Claim Approved=CONST(Yes),
                            Material Claim Approved=CONST(Yes),
                            Refund Dealer Labour Claim=CONST(No),
                            Replace Dealer Material Claim=CONST(Yes),
                            Claim Refund by TMC=CONST(Yes),
                            Warranty Closed=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Claim No."; "Claim No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("TWC No."; "TWC No.")
                {
                }
                field("Dealer Code"; "Dealer Code")
                {
                }
                field("Dealer Name"; "Dealer Name")
                {
                }
                field("Process Date"; "Process Date")
                {
                }
                field("Vehicle Identification No."; "Vehicle Identification No.")
                {
                }
                field("Vehicle Engine No."; "Vehicle Engine No.")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Odometer Reading"; "Odometer Reading")
                {
                }
                field("Owners Name"; "Owners Name")
                {
                }
                field("Warranty Claim Exist"; "Warranty Claim Exist")
                {
                }
                field("Under Warranty"; "Under Warranty")
                {
                }
                field("Warranty Expired"; "Warranty Expired")
                {
                }
                field("Warranty Expired Date"; "Warranty Expired Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

