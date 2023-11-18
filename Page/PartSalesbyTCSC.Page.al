page 70222 "Part Sales by TCSC"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_PARTS),
                            Posting Date=FILTER(01/01/22..31/12/23),
                            Document Type=CONST(Transfer Receipt),
                            Location Code=CONST(150ISOLO));

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
                field("Location Code";"Location Code")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Unit Cost";"Cost Amount (Actual)"/Quantity)
                {
                }
                field("TNL Selling Price to TCSC";"TNL Selling Price to TCSC")
                {
                }
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
                field("Total Price";ABS("TNL Selling Price to TCSC" * Quantity))
                {
                }
                field(Profit;((ABS("TNL Selling Price to TCSC" * Quantity) - "Cost Amount (Actual)")/"Cost Amount (Actual)")*100)
                {
                }
            }
        }
    }

    actions
    {
    }
}

