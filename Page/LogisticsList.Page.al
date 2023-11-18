page 50471 "Logistics List"
{
    CardPageID = "Logistics/VRI Card";
    PageType = List;
    SourceTable = Table50172;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Order No."; "Order No.")
                {
                }
                field("Chassis No."; "Chassis No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Model; Model)
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Colour Name"; "Colour Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

