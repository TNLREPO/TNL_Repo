pageextension 50023 "Purchases & Payables Setup Ext" extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Posted Prepmt. Cr. Memo Nos.")
        {
            field("LPP Nos."; Rec."LPP Nos.")
            {
                ApplicationArea = All;
            }
            field("LPO Nos."; Rec."LPO Nos.")
            {
                ApplicationArea = All;
            }
        }
    }
}
