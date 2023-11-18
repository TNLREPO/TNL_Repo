page 50388 "Attendance Register 2"
{
    PageType = Card;
    SourceTable = Table50060;
    SourceTableView = SORTING (TnA ID) WHERE (Status = FILTER (Complete));

    layout
    {
        area(content)
        {
            group(Filters)
            {
                Caption = 'Filters';
                field(EmployeeNo; EmployeeNo)
                {
                    Caption = 'Employee No.';
                    TableRelation = Employee.No. WHERE (Status=CONST(Active), Termination Date=FILTER(''));

                    trigger OnValidate()
                    begin
                        IF EmployeeNo <> '' THEN
                          SETRANGE("Employee No.",EmployeeNo)
                        ELSE
                          SETRANGE("Employee No.");
                          /*
                          BEGIN
                          RESET;
                          SETFILTER(Status,'%1',2);
                          SETFILTER("Date In",DateFilter);
                          //CurrForm.UPDATE(FALSE);
                        END;
                           */

                    end;
                }
                field(DateFilter;DateFilter)
                {
                    Caption = 'Date Filter';

                    trigger OnValidate()
                    var
                        ApplicationManagement: Codeunit "1";
                    begin
                        IF ApplicationManagement.MakeDateFilter(DateFilter) = 0 THEN;
                        IF (DateFilter <> '') THEN
                          SETFILTER("Date In",DateFilter)
                        ELSE
                          SETRANGE("Date In");
                    end;
                }
                label()
                {
                    CaptionClass = Text19042460;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
            }
            repeater()
            {
                Editable = false;
                field("Employee No.";"Employee No.")
                {
                    Editable = false;
                }
                field("TnA ID";"TnA ID")
                {
                    BlankNumbers = BlankZero;
                    Editable = false;
                }
                field(Name;Name)
                {
                    Editable = false;
                }
                field(Status;Status)
                {
                    Editable = false;
                    Visible = false;
                }
                field("Schedule Code";"Schedule Code")
                {
                    Editable = false;
                }
                field("Date In";"Date In")
                {
                    Editable = false;
                }
                field("Time In";"Time In")
                {
                    Editable = false;
                }
                field("Date Out";"Date Out")
                {
                    Editable = false;
                }
                field("Time Out";"Time Out")
                {
                    Editable = false;
                }
                field("Day Type";"Day Type")
                {
                    Editable = false;
                }
                field("Overtime Mins";"Overtime Mins")
                {
                    Editable = false;
                }
                field("Mins At Work";"Mins At Work")
                {
                    Editable = false;
                }
                field("Minutes Not Worked";"Minutes Not Worked")
                {
                    Editable = false;
                }
                field(Void;Void)
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnModifyRecord(): Boolean
    begin
        "Entry Type" := 2;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Entry Type" := "Entry Type"::Manual;
    end;

    var
        StartDate: Date;
        EndDate: Integer;
        ScheduleCode: Code[20];
        EmployeeNo: Code[20];
        DateFilter: Text[30];
        Text19042460: Label 'ATTENDANCE REGISTER';
}

