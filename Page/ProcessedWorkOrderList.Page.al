page 70006 "Processed Work Order List"
{
    CardPageID = "POS Receipt List";
    PageType = List;
    SourceTable = Table50177;
    SourceTableView = WHERE (Send To W/shop=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Work Order No."; "Work Order No.")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Vehicle Description"; "Vehicle Description")
                {
                }
                field("No. Series"; "No. Series")
                {
                }
                field("Sent By"; "Sent By")
                {
                }
                field(Date; Date)
                {
                }
                field("KM Reading"; "KM Reading")
                {
                }
                field("Job Description1"; "Job Description1")
                {
                }
                field("Date of Problem Report"; "Date of Problem Report")
                {
                }
                field(Location; Location)
                {
                }
                field("Fuel Level"; "Fuel Level")
                {
                }
                field("Responsible Driver"; "Responsible Driver")
                {
                }
                field("Driver Name"; "Driver Name")
                {
                }
                field("Generate COF"; "Generate COF")
                {
                }
                field("COF No."; "COF No.")
                {
                }
                field("Job Description2"; "Job Description2")
                {
                }
                field("Job Description3"; "Job Description3")
                {
                }
                field("Job Description4"; "Job Description4")
                {
                }
                field("Job Description5"; "Job Description5")
                {
                }
                field("Job Type"; "Job Type")
                {
                }
                field("Send To W/shop"; "Send To W/shop")
                {
                }
                field("Sent By UserID"; "Sent By UserID")
                {
                }
            }
        }
    }

    actions
    {
    }
}

