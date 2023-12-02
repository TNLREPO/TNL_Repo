page 50146 "VRI Approval List"
{
    CardPageID = "VRI Approval Card";
    InsertAllowed = true;
    PageType = List;
    SourceTable = "VRI Table";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("VRI Code"; Rec."VRI Code")
                {
                    Editable = false;
                }
                field("VRI Location"; Rec."VRI Location")
                {
                    Editable = false;
                }
                field("VRI Date"; Rec."VRI Date")
                {
                }
                field("Item No."; Rec."Item No.")
                {
                    Editable = false;
                }
                field("Model No."; Rec."Model No.")
                {
                    Editable = false;
                }
                field("Item Serial No."; Rec."Item Serial No.")
                {
                    Caption = 'Chassis No.';
                    Editable = false;
                }
                field("Model Name"; Rec."Model Name")
                {
                    Editable = false;
                }
                field("Problem Statement"; Rec."Problem Statement")
                {
                }
                field("VRI Next Action"; Rec."VRI Next Action")
                {
                }
                field(Description; Rec.Description)
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

