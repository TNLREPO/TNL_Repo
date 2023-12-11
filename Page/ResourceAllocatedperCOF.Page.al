page 50371 "Resource Allocated per COF"
{
    Caption = 'Resource Allocated per Job';
    DeleteAllowed = false;
    Editable = true;
    InsertAllowed = false;
    LinksAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SaveValues = true;
    SourceTable = "Job";

    layout
    {
    }

    actions
    {
    }

    var
        PeriodFormMgt: Codeunit "359";
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        QtyType: Option "Net Change","Balance at Date";

    local procedure SetDateFilter()
    begin
    end;
}

