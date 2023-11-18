page 70229 "Part Sales To Dealer"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_PARTS),
                            Posting Date=FILTER(01/01/22..31/12/23),
                            Entry Type=CONST(Sale),
                            Source No.=FILTER(TDP*));

    layout
    {
        area(content)
        {
            group("Total Qty")
            {
            }
            repeater(Group)
            {
                field("Item No.";"Item No.")
                {
                }
                field(Description;Description)
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field("Document Type";"Document Type")
                {
                    Visible = false;
                }
                field("Source No.";"Source No.")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
                field("Sales Amount (Actual)";"Sales Amount (Actual)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

