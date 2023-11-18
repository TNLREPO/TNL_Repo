page 50062 "Leave Roster Summary"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50078;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Leave Code"; "Leave Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                }
                field("Total Duration"; "Total Duration")
                {
                }
                field("Business Unit Filter"; "Business Unit Filter")
                {
                }
                field("Global Dimension 1 Filter"; "Global Dimension 1 Filter")
                {
                }
                field("Global Dimension 2 Filter"; "Global Dimension 2 Filter")
                {
                }
                field("Employee No. Filter"; "Employee No. Filter")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;

    trigger OnOpenPage()
    begin
        INIT;
        "Leave Code" := "Leave Code"::PLAN;
        IF INSERT THEN;

        INIT;
        "Leave Code" := "Leave Code"::ACTUAL;
        IF INSERT THEN;
    end;

    var
        ii: Integer;
}

