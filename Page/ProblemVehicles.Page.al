page 50457 "Problem Vehicles"
{
    PageType = Card;
    SourceTable = Table50058;
    SourceTableView = SORTING (VRI Code)
                      WHERE (Arrived = CONST (Yes),
                            Problem Vehicle=CONST(Yes),
                            Fixed=CONST(No));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("VRI Code";"VRI Code")
                {
                    Editable = false;
                }
                field("VRI Location";"VRI Location")
                {
                    Editable = false;
                }
                field("VRI Date";"VRI Date")
                {
                    Editable = false;
                }
                field("Item No.";"Item No.")
                {
                    Editable = false;
                }
                field("Model No.";"Model No.")
                {
                    Editable = false;
                }
                field("Model Name";"Model Name")
                {
                    Editable = false;
                }
                field(Description;Description)
                {
                    Editable = false;
                }
                field("Item Serial No.";"Item Serial No.")
                {
                    Editable = false;
                }
                field("Engine No.";"Engine No.")
                {
                    Editable = false;
                }
                field("Key No.";"Key No.")
                {
                    Editable = false;
                }
                field("Problem Statement";"Problem Statement")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }

    var
        VRIRec: Record "50058";
}

