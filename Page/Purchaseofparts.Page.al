page 70231 "Purchase of parts"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_PARTS),
                            Posting Date=FILTER(01/01/22..31/12/22),
                            Entry Type=CONST(Purchase));

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
                field("Vendor Name";"Vendor Name")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Remaining Quantity";"Remaining Quantity")
                {
                }
                field("Unit Cost";"Cost Amount (Actual)"/Quantity)
                {
                }
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
                field(Profit;((ABS("Sales Amount (Actual)") - "Cost Amount (Actual)")/"Cost Amount (Actual)")*100)
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

