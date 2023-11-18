page 50625 "Dealer Sales Cycle"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Inventory Posting Group=CONST(N_CARS),
                            Entry Type=CONST(Sale),
                            Quantity=CONST(-1));

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
                field("Entry Type";"Entry Type")
                {
                    Editable = false;
                }
                field("Source No.";"Source No.")
                {
                    Caption = 'Dealer No.';
                    Editable = false;
                }
                field("Customer Name";"Customer Name")
                {
                    Caption = 'Dealer Name';
                    Editable = false;
                }
                field("Document No.";"Document No.")
                {
                    Caption = 'Invoice No.';
                    Editable = false;
                }
                field(Description;Description)
                {
                    Caption = 'Model Name';
                    Editable = false;
                }
                field("Exterior Colour Name";"Exterior Colour Name")
                {
                    Caption = 'Colour';
                }
                field("Location Code";"Location Code")
                {
                    Editable = false;
                }
                field(Quantity;Quantity)
                {
                    Editable = false;
                }
                field("Serial No.";"Serial No.")
                {
                    Caption = 'Chasis No.';
                    Editable = false;
                }
                field("Engine No.";"Engine No.")
                {
                    Editable = false;
                }
                field("Item Name";"Item Name")
                {
                    Caption = 'Model Name';
                    Editable = false;
                }
                field("Dealer Delivered Date";"Dealer Delivered Date")
                {
                }
                field("End User Name";"End User Name")
                {
                }
                field("End User Delivery Date";"End User Delivery Date")
                {
                }
                field("End User Address";"End User Address")
                {
                }
                field("End User Modile No.";"End User Modile No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

