page 50391 "Employee Mapping"
{
    PageType = Card;
    SourceTable = Table50124;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                }
                field(Name; Name)
                {
                    Editable = false;
                }
                field("TnA ID"; "TnA ID")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Caption = 'Department';
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Caption = 'Branch';
                }
                field(Designation; Designation)
                {
                    Editable = false;
                }
                field("Date Filter"; "Date Filter")
                {
                    Editable = false;
                }
                field("Mins Worked"; "Mins Worked")
                {
                    Editable = false;
                }
                field("Mins Not Worked"; "Mins Not Worked")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

