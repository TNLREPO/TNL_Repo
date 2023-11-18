page 50068 "Training Courses List"
{
    AutoSplitKey = false;
    CardPageID = "Employee Training";
    DelayedInsert = true;
    Editable = false;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = Table50082;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Course Type"; "Course Type")
                {
                }
                field("Course Code"; "Course Code")
                {
                }
                field("Course Name"; "Course Name")
                {
                }
                field("Training Group"; "Training Group")
                {
                }
                field("Course Description"; "Course Description")
                {
                }
                field("Vendor Code"; "Vendor Code")
                {
                }
                field("Vendor name"; "Vendor name")
                {
                }
                field(Time; Time)
                {
                }
                field("Course Start Date"; "Course Start Date")
                {
                }
                field("Course Duration"; "Course Duration")
                {
                }
                field("Total Cost"; "Total Cost")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field(Comment; Comment)
                {
                }
                field("No Series"; "No Series")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Course")
            {
                Caption = '&Course';
                action("&Card")
                {
                    Caption = '&Card';
                    Image = EditLines;
                    RunObject = Page 60034;
                }
                action(Attendance)
                {
                    Caption = 'Attendance';
                    RunObject = Page 50067;
                    RunPageLink = Training Course Code=FIELD(Course Code);
                }
            }
        }
    }
}

