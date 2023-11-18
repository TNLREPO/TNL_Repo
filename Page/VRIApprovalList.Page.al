page 50146 "VRI Approval List"
{
    CardPageID = "VRI Approval Card";
    InsertAllowed = true;
    PageType = List;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("VRI Code"; "VRI Code")
                {
                    Editable = false;
                }
                field("VRI Location"; "VRI Location")
                {
                    Editable = false;
                }
                field("VRI Date"; "VRI Date")
                {
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field("Model No."; "Model No.")
                {
                    Editable = false;
                }
                field("Item Serial No."; "Item Serial No.")
                {
                    Caption = 'Chassis No.';
                    Editable = false;
                }
                field("Model Name"; "Model Name")
                {
                    Editable = false;
                }
                field("Problem Statement"; "Problem Statement")
                {
                }
                field("VRI Next Action"; "VRI Next Action")
                {
                }
                field(Description; Description)
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Open VRI Approval form")
            {
                Caption = 'Open VRI Approval form';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 70095;
                RunPageOnRec = true;
            }
        }
    }
}

