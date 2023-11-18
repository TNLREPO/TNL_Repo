page 50155 "Japan Order Update"
{
    PageType = List;
    SourceTable = Table50025;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(TMCINV; TMCINV)
                {
                }
                field("Case No"; "Case No")
                {
                }
                field("Order No."; "Order No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Part No."; "Part No.")
                {
                }
                field("Part Name"; "Part Name")
                {
                }
                field(Qty; Qty)
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field(Amount; Amount)
                {
                }
                field("C/O"; "C/O")
                {
                }
                field("Qty on Order"; "Qty on Order")
                {
                }
                field("Net Qty On Order"; "Net Qty On Order")
                {
                }
                field("Supplier No."; "Supplier No.")
                {
                }
                field("New Invoice No."; "New Invoice No.")
                {
                }
                field("Invoiced Date"; "Invoiced Date")
                {
                }
                field(Invoiced; Invoiced)
                {
                }
                field("New Part No."; "New Part No.")
                {
                }
                field("Has Substitute"; "Has Substitute")
                {
                }
                field("Substitute No."; "Substitute No.")
                {
                }
                field("Substitute Supplied"; "Substitute Supplied")
                {
                }
                field("Sub Qty On Order"; "Sub Qty On Order")
                {
                }
                field("Serial No."; "Serial No.")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Import Japan Order")
            {
                RunObject = XMLport 50144;
            }
            action("Update Inventory")
            {

                trigger OnAction()
                begin

                    IF CONFIRM('Are You Sure You want to register the New Parts? ', FALSE) THEN
                        InsertItem;
                end;
            }
            action("Update Substitute")
            {
            }
            action("Generate Invoice")
            {

                trigger OnAction()
                begin
                    CreateOrder;
                end;
            }
        }
    }
}

