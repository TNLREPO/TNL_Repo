page 50315 "Salary Review Matrix"
{
    DataCaptionFields = "FA No.", "Depreciation Book Code";
    Editable = true;
    PageType = Card;
    SourceTable = Table5612;

    layout
    {
    }

    actions
    {
    }

    var
        FALedgEntry: Record "5601";
        FAMatrixPostingType: Record "5647";
        DepreciationCalc: Codeunit "5616";
        PostingTypeAmount: Decimal;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        AmountType: Option "Net Change","Balance at Date";
        RoundingFactor: Option "None","1","1000","1000000";

    [Scope('Internal')]
    procedure UpdateAmounts(var FADeprBook: Record "5612"; var MatrixFieldname: Text[30])
    begin
    end;

    [Scope('Internal')]
    procedure FindPeriod(SearchText: Code[10])
    var
        Calendar: Record 2000000007;
        PeriodFormManagement: Codeunit "359";
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;
}

