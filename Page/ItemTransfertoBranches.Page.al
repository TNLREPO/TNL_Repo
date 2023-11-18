page 70225 "Item Transfer to Branches"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_PARTS),
                            Document Type=CONST(Transfer Receipt),
                            Location Code=CONST(114SER|100PH|112ABJ|120ISO|111EKET|123ORE),
                            Posting Date=FILTER(01/01/22..31/12/23));

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
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
                field("Unit Cost";"Cost Amount (Actual)"/Quantity)
                {
                }
            }
        }
    }

    actions
    {
    }
}

