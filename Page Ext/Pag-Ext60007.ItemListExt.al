namespace AL_TNL.AL_TNL;

using Microsoft.Inventory.Item;

pageextension 60007 "Item List Ext" extends "Item List"
{
    layout
    {
        addafter(Description)
        {
            field("Model No."; Rec."Model No.")
            {
                ApplicationArea = All;
            }
            field("Model Name"; Rec."Model Name")
            {
                ApplicationArea = All;
            }
        }
    }
}
