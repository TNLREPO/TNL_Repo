page 50381 "FIFO Lists"
{
    Editable = true;
    PageType = List;
    SourceTable = Table32;
    SourceTableView = SORTING (Purchase Date)
                      WHERE (Remaining Quantity=FILTER(<>0));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Purchase Date";"Purchase Date")
                {
                }
                field("Location Code";"Location Code")
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
                field("Exterior Colour Name";"Exterior Colour Name")
                {
                }
                field("Exterior Colour Code";"Exterior Colour Code")
                {
                }
                field("Key No.";"Key No.")
                {
                }
                field("Remaining Quantity";"Remaining Quantity")
                {
                    Caption = 'Quantity';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        SETCURRENTKEY("Purchase Date");
    end;
}

