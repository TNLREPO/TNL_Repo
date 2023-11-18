page 50365 "Technician Time"
{
    PageType = Card;
    SourceTable = Table50047;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Date Filter"; "Date Filter")
                {
                }
                field("Resource Filter"; "Resource Filter")
                {
                }
                field("Daily Man Hour"; "Daily Man Hour")
                {
                }
                field("Hours Consumed"; "Hours Consumed")
                {
                }
                field("Hours Left"; "Hours Left")
                {
                }
                part(; 50353)
                {
                    SubPageLink = Technician = FIELD (Resource Filter),
                                  Date=FIELD(Date Filter);
                }
                field("Total Hours"; "Total Hours")
                {
                }
                field("Time Bucket"; "Time Bucket")
                {
                }
            }
        }
    }

    actions
    {
    }
}

