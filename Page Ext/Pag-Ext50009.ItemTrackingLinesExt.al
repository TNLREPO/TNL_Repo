pageextension 50009 "Item Tracking Lines Ext" extends "Item Tracking Lines"
{
    layout
    {
        addafter("Appl.-to Item Entry")
        {
            field("Engine No."; Rec."Engine No.")
            {
                ApplicationArea = All;

            }
            field("Exterior Colour Code"; Rec."Exterior Colour Code")
            {
                ApplicationArea = All;

            }
            field("Exterior Colour Name"; Rec."Exterior Colour Name")
            {
                ApplicationArea = All;

            }
            field("Key No."; Rec."Key No.")
            {
                ApplicationArea = All;

            }

        }

        addbefore("Serial No.")
        {
            field("VRI Code"; Rec."VRI Code")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}
