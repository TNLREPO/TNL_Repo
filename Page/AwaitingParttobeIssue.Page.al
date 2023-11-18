page 70218 "Awaiting Part to be Issue"
{
    CardPageID = "Warranty Claim card";
    PageType = List;
    SourceTable = Table50038;
    SourceTableView = WHERE (Labour Claim Approved=CONST(Yes),
                            Material Claim Approved=CONST(Yes),
                            Claim Refund by TMC=CONST(No),
                            Replace Dealer Material Claim=CONST(No),
                            Refund Dealer Labour Claim=CONST(No));

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
                field("Vehicle Model"; "Vehicle Model")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Odometer Reading"; "Odometer Reading")
                {
                }
            }
        }
    }

    actions
    {
    }
}

