page 50018 "Posting Groups Survey."
{
    CardPageID = "Posting Group Header.";
    PageType = List;
    SourceTable = Table50011;

    layout
    {
        area(content)
        {
            repeater()
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

