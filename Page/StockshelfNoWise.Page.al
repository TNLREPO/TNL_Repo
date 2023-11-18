page 70227 "Stock shelf No. Wise"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=FILTER(N_PARTS|N_PARTCONS),
                            Remaining Quantity=FILTER(<>0));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No.";"Item No.")
                {
                }
                field("Item Name";"Item Name")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field("Unit of Measure Code";"Unit of Measure Code")
                {
                }
                field("Shelf No";"Shelf No")
                {
                }
                field("Remaining Quantity";"Remaining Quantity")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Entry Type";"Entry Type")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Variant Code";"Variant Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

