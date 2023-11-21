page 50436 Dealers
{
    PageType = Card;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("No.";Rec."No.")
                {
                }
                field(Name;Rec.Name)
                {
                }
            }
        }
    }

    actions
    {
    }
}

