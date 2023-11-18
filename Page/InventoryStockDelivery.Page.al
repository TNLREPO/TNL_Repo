page 50284 "Inventory - Stock - Delivery"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Entry Type=FILTER(Sale),
                            Inventory Posting Group=CONST(N_CARS),
                            Invoiced Quantity=CONST(-1),
                            Posting Date=FILTER(01/01/20..31/12/23));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No.";"Entry No.")
                {
                    Editable = false;
                }
                field("Item No.";"Item No.")
                {
                    Editable = false;
                }
                field("Posting Date";"Posting Date")
                {
                    Editable = false;
                }
                field("Location Code";"Location Code")
                {
                    Editable = false;
                }
                field(Description;Description)
                {
                    Editable = false;
                    Width = 50;
                }
                field("Serial No.";"Serial No.")
                {
                    Editable = false;
                    Width = 30;
                }
                field("Exterior Colour Name";"Exterior Colour Name")
                {
                }
                field("Engine No.";"Engine No.")
                {
                    Editable = false;
                    Width = 20;
                }
                field("Item Name";"Item Name")
                {
                    Editable = false;
                }
                field(Delivered;Delivered)
                {
                }
                field("Whse Manager";"Whse Manager")
                {
                }
                field("Dealer Delivered Date";"Dealer Delivered Date")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        IF "Current Date" <> 0D THEN

          VALIDATE("Current Date",WORKDATE);
    end;
}

