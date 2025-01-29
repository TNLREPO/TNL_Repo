namespace AL_TNL.AL_TNL;

using Microsoft.Inventory.Transfer;

pageextension 60003 "Transfer Orders Ext" extends "Transfer Orders"
{
    layout
    {
        addafter("Assigned User ID")
        {
            field("COF No"; Rec."COF No")
            {
                ApplicationArea = All;
            }
        }
    }
}
