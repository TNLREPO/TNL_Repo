page 50021 "Banks."
{
    PageType = List;
    SourceTable = "Payroll-Banks.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field(Code; Rec.Code)
                {
                }
                field(Name; Rec.Name)
                {
                }
                field("Main Bank Code"; Rec."Main Bank Code")
                {
                }
                field("Search Name"; Rec."Search Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

