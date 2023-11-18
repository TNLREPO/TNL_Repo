page 80022 "Reminder Calls"
{
    PageType = List;
    SourceTable = Table50130;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                }
                field("Phone No."; "Phone No.")
                {
                }
                field(Contact; Contact)
                {
                }
                field(Response; Response)
                {
                }
            }
        }
        area(factboxes)
        {
            systempart(; Links)
            {
            }
        }
    }

    actions
    {
    }
}

