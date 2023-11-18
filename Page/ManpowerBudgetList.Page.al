page 70059 "Manpower Budget List"
{
    CardPageID = "MP Budget by Periods";
    PageType = List;
    SourceTable = Table50011;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Description; Description)
                {
                }
                field(Management; Management)
                {
                }
            }
        }
    }

    actions
    {
    }
}

