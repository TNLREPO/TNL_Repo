page 50108 "transfer subform"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table32;
    SourceTableView = SORTING (Entry Type, Item No., Location Code, Posting Date, Document No.)
                      WHERE (Quantity = FILTER (> 0));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Item No."; "Item No.")
                {
                }
                field("Variant Code"; "Variant Code")
                {
                }
                field(Description; Description)
                {
                }
                field(Quantity; Quantity)
                {
                }
            }
        }
    }

    actions
    {
    }
}

