page 50137 "Item MVO Analysis By Date"
{
    Editable = true;
    PageType = Card;
    SaveValues = true;
    SourceTable = "Item";
    SourceTableView = SORTING("No.")
                      WHERE("Inventory Posting Group" = FILTER('N_CARS'));

    layout
    {
    }

    actions
    {
    }

    var
        AccountingPeriod: Record "Accounting Period";
        PeriodFormManagement: Codeunit 359;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        ClosingEntryFilter: Option Include,Exclude;
        RoundingFactor: Option "None","1","1000","1000000";
        AmountType: Option "Net Change","Balance At Date";
        PurchaserFilter: Option " ",TNL,DLF_A,DLF_B,OTHERS;
        CustomerFilter: Code[250];
        CustomerGenGrpFilter: Code[250];
        cGrp: Record "Gen. Business Posting Group";
        Cust: Record "Customer";

    local procedure SetDateFilter()
    begin
    end;

    local procedure FormatAmount(var Text: Text[250])
    var
        Amount: Decimal;
    begin
    end;
}

