page 50076 "Scholarship Courses Grp List"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = "Scholarship Courses Grp";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code)
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
        area(navigation)
        {
            group("&Course Group")
            {
                Caption = '&Course Group';
                action("&Group Courses")
                {
                    Caption = '&Group Courses';
                    RunObject = Page 50077;
                    RunPageLink = Group = FIELD(Code);
                }
                action("Group Course &Register")
                {
                    Caption = 'Group Course &Register';
                    RunObject = Page 50080;
                    RunPageLink = "Course Group" = FIELD(Code);
                }
            }
        }
    }
}

