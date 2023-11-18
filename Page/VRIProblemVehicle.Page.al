page 50396 "VRI Problem Vehicle"
{
    PageType = Card;
    SourceTable = Table50058;
    SourceTableView = WHERE (Problem Vehicle=CONST(Yes));

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
                field("VRI Inspector Code"; "VRI Inspector Code")
                {
                }
                field("VRI Inspector Name"; "VRI Inspector Name")
                {
                }
                field("VRI Inspector Department"; "VRI Inspector Department")
                {
                }
                field("VRI Operative Location"; "VRI Operative Location")
                {
                }
                field("VRI Operative Unit"; "VRI Operative Unit")
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

