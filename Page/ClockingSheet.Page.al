page 80013 "Clocking Sheet"
{
    AutoSplitKey = true;
    PageType = List;
    SourceTable = Table70038;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("DQ ?"; "DQ ?")
                {
                }
                field("Start."; "Start.")
                {
                }
                field("End."; "End.")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field("Clocked Time"; "Clocked Time")
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("Job No."; "Job No.")
                {
                    Editable = false;
                }
                field(Technician; Technician)
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        TotalTime: Duration;
        Clocking: Record "70038";
}

