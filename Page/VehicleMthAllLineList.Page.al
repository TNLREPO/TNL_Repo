page 50187 "Vehicle Mth All. Line List"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50035;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Allocation Code"; "Allocation Code")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Chasis No."; "Chasis No.")
                {
                }
                field(Colour; Colour)
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field(Amount; Amount)
                {
                }
                field(Released; Released)
                {
                }
                field("Date Released"; "Date Released")
                {
                }
                field("Released By"; "Released By")
                {
                }
                field("Driver Name"; "Driver Name")
                {
                }
                field("Order No."; "Order No.")
                {
                }
                field(Variant; Variant)
                {
                }
                field("Seat Option"; "Seat Option")
                {
                }
                field(Transimision; Transimision)
                {
                }
                field(Location; Location)
                {
                }
                field(Selected; Selected)
                {
                }
                field("Date Selected"; "Date Selected")
                {
                }
                field("A/C"; "A/C")
                {
                }
                field("Fuel Type"; "Fuel Type")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Colour Description"; "Colour Description")
                {
                }
                field(Picked; Picked)
                {
                }
                field("Date Picked"; "Date Picked")
                {
                }
                field("Picked by"; "Picked by")
                {
                }
                field("Latest Picking Date"; "Latest Picking Date")
                {
                }
                field(Body; Body)
                {
                }
                field(Type; Type)
                {
                }
                field(Rim; Rim)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

