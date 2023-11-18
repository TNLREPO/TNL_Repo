page 50403 "FIFO List"
{
    PageType = Card;
    SourceTable = Table32;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Purchase Date"; "Purchase Date")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Remaining Quantity"; "Remaining Quantity")
                {
                }
                field("Cost Amount (Actual)"; "Cost Amount (Actual)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

