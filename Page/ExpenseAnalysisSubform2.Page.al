page 50115 "Expense Analysis Subform 2"
{
    Editable = false;
    PageType = ListPart;
    SourceTable = Table50115;

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

