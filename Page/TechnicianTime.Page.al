page 50365 "Technician Time"
{
    PageType = Card;
    SourceTable = "Appointment Scheduling";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Date Filter"; Rec."Date Filter")
                {
                }
                field("Resource Filter"; Rec."Resource Filter")
                {
                }
                field("Daily Man Hour"; Rec."Daily Man Hour")
                {
                }
                field("Hours Consumed"; Rec."Hours Consumed")
                {
                }
                field("Hours Left"; Rec."Hours Left")
                {
                }
                part("Hour Slot Info"; 50353)
                {
                    SubPageLink = Technician = FIELD("Resource Filter"),
                                  Date = FIELD("Date Filter");
                }
                field("Total Hours"; Rec."Total Hours")
                {
                }
                field("Time Bucket"; Rec."Time Bucket")
                {
                }
            }
        }
    }

    actions
    {
    }
}

