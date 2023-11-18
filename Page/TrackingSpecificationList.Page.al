page 50229 "Tracking Specification List"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table336;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Entry No."; "Entry No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Serial No."; "Serial No.")
                {
                }
                field("Production Month"; "Production Month")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Chasis No."; "Chasis No.")
                {
                }
                field("Exterior Colour Code"; "Exterior Colour Code")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Interior Colour Code"; "Interior Colour Code")
                {
                }
                field("Interior Colour Name"; "Interior Colour Name")
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

