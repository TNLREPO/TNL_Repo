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
            field("Last Purchase Date"; Rec."Last Purchase Date")
            {
                ApplicationArea = All;
                Visible = false;
            }
            field("Last Date Sold"; Rec."Last Date Sold")
            {
                ApplicationArea = All;
                Visible = false;
            }
        }
    }
}
