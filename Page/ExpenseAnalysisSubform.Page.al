page 50110 "Expense Analysis Subform"
{
    Editable = false;
    PageType = ListPart;
    SourceTable = Table50111;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field(Month; Month)
                {
                }
                field(Amount; Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

