namespace AL_TNL.AL_TNL;

using Microsoft.Service.Document;

pageextension 50034 "Service Line Ext" extends "Service Lines"
{
    layout
    {
        addafter("Service Item No.")
        {
            field("Job Type"; Rec."Job Type")
            {
                ApplicationArea = All;
            }
        }
    }
}
