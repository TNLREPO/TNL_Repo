page 50475 "Fuel Log"
{
    PageType = List;
    SourceTable = Table70012;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Fuel Type"; "Fuel Type")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field(Date; Date)
                {
                }
            }
        }
    }

    actions
    {
    }
}

