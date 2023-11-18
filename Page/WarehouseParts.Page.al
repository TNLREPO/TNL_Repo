page 50404 "Warehouse Parts"
{
    PageType = Card;
    SourceTable = Table5700;

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = false;
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Variant Code"; "Variant Code")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Shelf No."; "Shelf No.")
                {
                }
                field(Inventory; Inventory)
                {
                }
            }
        }
    }

    actions
    {
    }
}

