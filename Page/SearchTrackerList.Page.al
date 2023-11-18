page 50118 "Search Tracker List"
{
    CardPageID = "Search Tracker Card";
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50095;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request Date"; "Request Date")
                {
                }
                field("Request by"; "Request by")
                {
                }
                field("Request Customer Name"; "Request Customer Name")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Search Code"; "Search Code")
                {
                }
                field("Time of Request"; "Time of Request")
                {
                }
            }
        }
    }

    actions
    {
    }
}

