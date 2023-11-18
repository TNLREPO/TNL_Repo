page 50069 "Employee Training Sub Page"
{
    AutoSplitKey = false;
    Caption = 'Employee Training';
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table50083;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Employee No"; "Employee No")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Business Unit"; "Business Unit")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field(Comments; Comments)
                {
                    Caption = 'Employee Comment';
                }
                field(Cost; Cost)
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        CatRec: Record "50083";
        TCourseRec: Record "50082";
        TotalCost: Decimal;
        AvgCost: Decimal;
        RecCount: Integer;
}

