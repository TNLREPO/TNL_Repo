page 50053 "MP Budget by Periods"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = Table50011;

    layout
    {
        area(content)
        {
        }
    }

    actions
    {
    }

    var
        PeriodFormManagement: Codeunit "359";
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AmountType: Option "Net Change","Balance at Date";
        RoundingFactor: Option "None","1","1000","1000000";
        EmpGrp: Record "50009";

    local procedure SetDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;

    local procedure EvaluateAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;
}

