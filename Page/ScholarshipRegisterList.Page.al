page 50080 "Scholarship Register List"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50089;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Reg No"; "Reg No")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("Institution Group"; "Institution Group")
                {
                }
                field(Institution; Institution)
                {
                }
                field("Course Group"; "Course Group")
                {
                }
                field("Course Code"; "Course Code")
                {
                }
                field(Duration; Duration)
                {
                }
                field("Date Authorized"; "Date Authorized")
                {
                }
                field("Amount Authorized"; "Amount Authorized")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field("Amount Paid"; "Amount Paid")
                {
                }
                field("Date Last Paid"; "Date Last Paid")
                {
                }
            }
        }
    }

    actions
    {
    }
}

