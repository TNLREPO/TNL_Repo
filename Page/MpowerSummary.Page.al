page 50070 "Mpower Summary"
{
    DataCaptionExpression = '';
    PageType = Card;
    SaveValues = true;
    SourceTable = Table2000000007;

    layout
    {
        area(content)
        {
            group(Options)
            {
                Caption = 'Options';
                field(PeriodType; PeriodType)
                {
                    Caption = 'View by';
                    OptionCaption = 'Day,Week,Month,Quarter,Year,Accounting Period';
                    ToolTip = 'Day';
                }
            }
            part(SubForm; 50071)
            {
            }
            field(AbsenceAmountType; AbsenceAmountType)
            {
                OptionCaption = 'Balance at Date,Net Change';
                ToolTip = 'Net Change';
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        PasteFilter;
    end;

    trigger OnOpenPage()
    begin
        PasteFilter;
    end;

    var
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AbsenceAmountType: Option "Balance at Date","Net Change";
        DeptFilter: Text[250];
        ProjFilter: Text[250];
        "Date Filter": Text[60];
        dateFilter: Text[60];
        EmployeeNoFilter: Text[250];

    local procedure PasteFilter()
    begin

        //DeptFilter := GETFILTER("Department Filter");
        //ProjFilter := GETFILTER("Project Filter");
        //EmployeeNoFilter := GETFILTER("Employee No. Filter");
        //DateFilter := GETFILTER("Date Filter");
        /*
        //SETRANGE("Leave Type Filter",LeaveType);
        
        IF AmountType = AmountType::"Net Change" THEN
          IF CurrForm.Matrix.MatrixRec."Period Start" = CurrForm.Matrix.MatrixRec."Period End" THEN
            SETRANGE("Date Filter",CurrForm.Matrix.MatrixRec."Period Start")
          ELSE
            SETRANGE("Date Filter",CurrForm.Matrix.MatrixRec."Period Start",CurrForm.Matrix.MatrixRec."Period End")
        ELSE
          SETRANGE("Date Filter",0D,CurrForm.Matrix.MatrixRec."Period End");
        IF ClosingEntryFilter = ClosingEntryFilter::Exclude THEN BEGIN
          AccountingPeriod.SETCURRENTKEY("New Fiscal Year");
          AccountingPeriod.SETRANGE("New Fiscal Year",TRUE);
          IF GETRANGEMIN("Date Filter") = 0D THEN
            AccountingPeriod.SETRANGE(
              "Starting Date",
              0D,
              GETRANGEMAX("Date Filter"))
          ELSE
            AccountingPeriod.SETRANGE(
              "Starting Date",
              GETRANGEMIN("Date Filter") + 1,
              GETRANGEMAX("Date Filter"));
          IF AccountingPeriod.FIND('-') THEN
            REPEAT
              SETFILTER(
                "Date Filter",GETFILTER("Date Filter") + '&<>%1',
                CLOSINGDATE(AccountingPeriod."Starting Date" - 1));
            UNTIL AccountingPeriod.NEXT = 0;
        END;
        
        */

    end;

    local procedure AccountingPerioPeriodTypOnPush()
    begin
        PasteFilter;
    end;

    local procedure YearPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure QuarterPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure MonthPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure WeekPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure DayPeriodTypeOnPush()
    begin
        PasteFilter;
    end;

    local procedure NetChangeAbsenceAmountTyOnPush()
    begin
        PasteFilter;
    end;

    local procedure BalanceatDateAbsenceAmouOnPush()
    begin
        PasteFilter;
    end;

    local procedure DayPeriodTypeOnValidate()
    begin
        DayPeriodTypeOnPush;
    end;

    local procedure WeekPeriodTypeOnValidate()
    begin
        WeekPeriodTypeOnPush;
    end;

    local procedure MonthPeriodTypeOnValidate()
    begin
        MonthPeriodTypeOnPush;
    end;

    local procedure QuarterPeriodTypeOnValidate()
    begin
        QuarterPeriodTypeOnPush;
    end;

    local procedure YearPeriodTypeOnValidate()
    begin
        YearPeriodTypeOnPush;
    end;

    local procedure AccountingPerioPeriodTypeOnVal()
    begin
        AccountingPerioPeriodTypOnPush;
    end;

    local procedure NetChangeAbsenceAmountTypeOnVa()
    begin
        NetChangeAbsenceAmountTyOnPush;
    end;

    local procedure BalanceatDateAbsenceAmountType()
    begin
        BalanceatDateAbsenceAmouOnPush;
    end;
}

