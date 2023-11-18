page 50192 "Workshop Task Calendar"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = Card;
    SaveValues = true;
    SourceTable = Table156;

    layout
    {
    }

    actions
    {
    }

    var
        PeriodFormMgt: Codeunit "359";
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";

    local procedure SetDateFilter()
    begin
    end;
}

