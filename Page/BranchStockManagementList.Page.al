page 70036 "Branch Stock Management List"
{
    PageType = List;
    SourceTable = Table27;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_PARTS));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field(Description;Description)
                {
                }
                field(Inventory;Inventory)
                {
                }
                field("Variant Filter";"Variant Filter")
                {
                }
                field("Inventory (All Locations)";"Inventory (All Locations)")
                {
                }
                field("Stock Value Posted to G/L";"Stock Value Posted to G/L")
                {
                }
                field("Sales (Qty.)";"Sales (Qty.)")
                {
                }
                field("Location Filter";"Location Filter")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        Locrec: Record "14";
        CummVal: Decimal;
        LocFilt: Code[20];
}

