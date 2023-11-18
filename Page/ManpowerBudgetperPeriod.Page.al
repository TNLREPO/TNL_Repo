page 50056 "Manpower Budget per Period"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = Table15;

    layout
    {
    }

    actions
    {
    }

    var
        AccountingPeriod: Record "50";
        PeriodFormManagement: Codeunit "359";
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AmountType: Option "Net Change","Balance at Date";
        ClosingEntryFilter: Option Include,Exclude;
        RoundingFactor: Option "None","1","1000","1000000";

    local procedure SetDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;
}

