page 50272 "VRI Inspector Check list"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50058;
    SourceTableView = WHERE (Arrived = FILTER (Yes));

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
                field("Engine No."; "Engine No.")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Exterior Colour"; "Exterior Colour")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field(Description; Description)
                {
                }
                field("VRI Inspector Code"; "VRI Inspector Code")
                {
                }
                field("VRI Inspector Name"; "VRI Inspector Name")
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field("Item Serial No."; "Item Serial No.")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Open VRI Form")
            {
                Caption = 'Open VRI Form';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50392;
                RunPageOnRec = true;
            }
        }
    }
}

