page 50076 "Scholarship Courses Grp List"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50087;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Code; Code)
                {
                }
                field(Description; Description)
                {
                }
                field("Staff Count"; "Staff Count")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field("Employee Filter"; "Employee Filter")
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
                    RunPageLink = Group = FIELD (Code);
                }
                action("Group Course &Register")
                {
                    Caption = 'Group Course &Register';
                    RunObject = Page 50080;
                    RunPageLink = Course Group=FIELD(Code);
                }
            }
        }
    }
}

