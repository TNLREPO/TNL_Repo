namespace AL_TNL.AL_TNL;

using Microsoft.Sales.History;

pageextension 60016 "Posted Sales Inv. Sunform Ext" extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Shortcut Dimension 2 Code")
        {
            field("Posting Date"; Rec."Posting Date")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
    }
}
