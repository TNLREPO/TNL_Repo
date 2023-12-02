page 50078 "Scholarship Group"
{
    PageType = Card;
    SourceTable = "Scholarship Courses Grp";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Staff Count"; Rec."Staff Count")
                {
                }
                field("Date Filter"; Rec."Date Filter")
                {
                }
                field("Employee Filter"; Rec."Employee Filter")
                {
                }
            }
        }
    }

    actions
    {
    }
}

