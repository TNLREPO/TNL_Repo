page 50071 "MPower summary Matrix"
{
    // //CurrForm.Matrix.MatrixRec."Manpower Budget"
    // //CurrForm.Matrix.MatrixRec."Bussiness Unit Code"

    Editable = false;
    PageType = Card;
    SourceTable = Table2000000007;

    layout
    {
    }

    actions
    {
    }

    var
        EmployeeAbsence: Record "5207";
        PeriodFormManagement: Codeunit "359";
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AbsenceAmountType: Option "Balance at Date","Net Change";
        DeptFilter: Text[100];
        ProjFilter: Text[100];
        DateFilter: Text[60];
        EmployeeNoFilter: Text[250];
        LeaveRosterSumm: Record "50078";

    [Scope('Internal')]
    procedure MatrixUpdate(NewAbsenceType: Option "Absence to Date","Absence at Date"; NewPeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period"; NewDeptFilter: Text[250]; NewProjFilter: Text[250]; NewEmployeeNoFilter: Text[250])
    begin
    end;
}

