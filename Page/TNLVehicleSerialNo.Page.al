page 70115 "TNL Vehicle Serial No."
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_CARS));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date";"Posting Date")
                {
                }
                field("Item No.";"Item No.")
                {
                }
                field(Description;Description)
                {
                }
                field("Serial No.";"Serial No.")
                {
                }
                field("Engine No.";"Engine No.")
                {
                }
                field("Inventory Posting Group";"Inventory Posting Group")
                {
                }
            }
        }
    }

    actions
    {
    }
}

