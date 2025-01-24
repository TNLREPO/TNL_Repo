namespace AL_TNL.AL_TNL;

using Microsoft.Sales.Customer;

pageextension 60037 "Customer List Ext" extends "Customer List"
{
    layout
    {
        addbefore("Balance (LCY)")
        {
            field("Net Change"; Rec."Net Change")
            {
                ApplicationArea = All;
            }
            field("Net Change (LCY)"; Rec."Net Change (LCY)")
            {
                ApplicationArea = All;
            }
        }
    }
}
