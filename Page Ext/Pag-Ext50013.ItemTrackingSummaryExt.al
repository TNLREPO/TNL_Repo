pageextension 50013 "Item Tracking Summary Ext" extends "Item Tracking Summary"
{
    layout
    {
        addafter("Serial No.")
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
    }
}
