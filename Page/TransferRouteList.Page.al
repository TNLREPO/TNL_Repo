page 70052 "Transfer Route List"
{
    CardPageID = "Transfer Routes";
    PageType = List;
    SourceTable = Table14;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                }
                field(Name; Name)
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
            }
        }
    }

    actions
    {
    }
}

