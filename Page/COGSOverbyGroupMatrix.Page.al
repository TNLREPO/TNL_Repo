page 50194 "COGS Over. by Group Matrix"
{
    Caption = 'COGS Over. by Group Matrix';
    PageType = Card;
    SourceTable = Table2000000007;

    layout
    {
    }

    actions
    {
    }

    var
        EmployeeAbsence: Record 32;
        PeriodFormMgt: Codeunit 359;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AbsenceAmountType: Option "Balance at Date","Net Change";
        EmployeeNoFilter: Text[250];


    procedure MatrixUpdate(NewAbsenceType: Option "Absence to Date","Absence at Date"; NewPeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period"; NewEmployeeNoFilter: Text[250])
    begin
    end;
}

