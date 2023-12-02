page 50140 "Cust MVO Analysis By Matrix"
{
    PageType = Card;
    SourceTable = Item;
    SourceTableView = SORTING("No.")
                      WHERE("Inventory Posting Group" = filter('N_CARS'));

    layout
    {
    }

    actions
    {
    }

    var
        EmployeeAbsence: Record 5207;
        PeriodFormMgt: Codeunit 359;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AbsenceAmountType: Option "Balance at Date","Net Change";
        EmployeeNoFilter: Text[250];


    procedure MatrixUpdate(NewAbsenceType: Option "Absence to Date","Absence at Date"; NewPeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period"; NewEmployeeNoFilter: Text[250])
    begin
    end;
}

