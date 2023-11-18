page 50413 "Part Used by Maint."
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Entry Type=FILTER(Negative Adjmt.),
                            Document No.=FILTER(TCFO*));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No.";"Item No.")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Prod. Gr.";"Prod. Gr.")
                {
                }
                field("Entry Type";"Entry Type")
                {
                }
                field("Source No.";"Source No.")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field(Description;Description)
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Remaining Quantity";"Remaining Quantity")
                {
                }
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

