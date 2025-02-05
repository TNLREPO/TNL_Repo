pageextension 50010 "Item Ledger Entries Ext" extends "Item Ledger Entries"
{
    layout
    {
        addafter(Description)
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
            field("Customer Name"; Rec."Customer Name")
            {
                ApplicationArea = All;
            }
        }
    }
}
