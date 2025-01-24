namespace AL_TNL.AL_TNL;

using Microsoft.HumanResources.Employee;

pageextension 50035 "Employee List Ext" extends "Employee List"
{

    trigger OnOpenPage()
    var

    begin
        Rec.SetRange(Blocked, false);
    end;

}
