namespace AL_TNL.AL_TNL;

using Microsoft.Sales.Setup;

pageextension 60013 "Sales & Receivables Setup Ext" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter(Archiving)
        {
            group(Emails)
            {
                field("CC Emails";Rec."CC Emails")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                
            }
        }
    }
}
