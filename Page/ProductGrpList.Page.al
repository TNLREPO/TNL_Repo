page 50538 "Product Grp List"
{
    PageType = List;
    SourceTable = Table50302;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item Category Code"; "Item Category Code")
                {
                }
                field(Code; Code)
                {
                    Width = 15;
                }
                field(Description; Description)
                {
                }
                field("Warehouse Class Code"; "Warehouse Class Code")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field("Global Dimension 1 Filter"; "Global Dimension 1 Filter")
                {
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                }
                field("Location Filter"; "Location Filter")
                {
                }
                field("Variant Filter"; "Variant Filter")
                {
                }
                field("Item No. Filter"; "Item No. Filter")
                {
                }
            }
        }
    }

    actions
    {
    }
}

