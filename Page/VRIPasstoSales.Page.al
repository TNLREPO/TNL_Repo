page 50395 "VRI Pass to Sales"
{
    PageType = Card;
    SourceTable = Table50058;
    SourceTableView = WHERE (Pass to Sales/Marketing=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("VRI Code"; "VRI Code")
                {
                }
                field("VRI Location"; "VRI Location")
                {
                }
                field("VRI Date"; "VRI Date")
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
                field(Status; Status)
                {
                }
                field(Description; Description)
                {
                }
                field("Item Serial No."; "Item Serial No.")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Exterior Colour"; "Exterior Colour")
                {
                }
            }
        }
    }

    actions
    {
    }
}

