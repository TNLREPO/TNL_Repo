namespace AL_TNL.AL_TNL;

using Microsoft.Inventory.Transfer;

pageextension 60004 "Posted Transfer Shipments Ext" extends "Posted Transfer Shipments"
{
    layout
    {
        addafter("Posting Date")
        {
            field("COF No."; Rec."COF No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
