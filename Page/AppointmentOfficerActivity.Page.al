page 50268 "Appointment Officer Activity"
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = "Service Department Cue";

    layout
    {
        area(content)
        {
            cuegroup("Maintenance Reminder")
            {
                Caption = 'Maintenance Reminder';
                field("Total Vehicle Arrived"; Rec."Total Vehicle Arrived")
                {
                    Caption = 'Maintenance Reminder Due';
                }
                field("Awaiting VRI"; Rec."Awaiting VRI")
                {
                    Caption = 'Maintenance Reminder Processed';
                }
                field("Problem Vehicle"; Rec."Problem Vehicle")
                {
                    Caption = 'Overdue Maintenance Reminder';
                }

                actions
                {
                    action("New Service Items")
                    {
                        Caption = 'New Service Items';
                        RunObject = Page 5980;
                        RunPageMode = Create;
                    }
                    action("View Service Items")
                    {
                        Caption = 'View Service Items';
                        RunObject = Page "Service Items";
                        RunPageMode = View;
                    }
                }
            }
            cuegroup("Appoint. Planning & Appoint. Booking")
            {
                Caption = 'Appoint. Planning & Appoint. Booking';
                field("Pending VRI Request"; Rec."Pending VRI Request")
                {
                }

                actions
                {
                    action("New Appointment Schedule")
                    {
                        Caption = 'New Appointment Schedule';
                        RunObject = Page 70066;
                        RunPageMode = Create;
                    }
                    action("Diagnostic Questionnaire")
                    {
                        Caption = 'Diagnostic Questionnaire';
                        RunObject = Page 70087;
                        RunPageMode = Create;
                    }
                    action("New Estimate")
                    {
                        Caption = 'New Estimate';
                        RunObject = Page 70082;
                        RunPageMode = Create;
                    }
                    action("Print Estimate")
                    {
                        Caption = 'Print Estimate';
                        //RunObject = Report "50057";
                    }
                }
            }
            cuegroup("Apppointment Preparation")
            {
                Caption = 'Apppointment Preparation';
                field("Pending O/L Action to VRI"; Rec."Pending O/L Action to VRI")
                {
                    Caption = '2 Days - Parts Order';
                }
                field("Pending VRI Action to W/Shop"; Rec."Pending VRI Action to W/Shop")
                {
                    Caption = '1 Day - Parts Delivered';
                }

                actions
                {
                    action("View Appointmemt Preparation Card")
                    {
                        Caption = 'View Appointmemt Preparation Card';
                        RunObject = Page "Appointment Preparation Card";
                        RunPageMode = Create;
                    }
                    action("Service Appointment Card")
                    {
                        Caption = 'Service Appointment Card';
                        RunObject = Page 50581;
                        RunPageMode = Create;
                    }
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.RESET;
        IF NOT Rec.GET THEN BEGIN
            Rec.INIT;
            Rec.INSERT;
        END;

        //SETRANGE("Booked Service Appointment",0D,WORKDATE);
    end;

    var
        "Date Filter": Text;
        COTRec: Record 50071;
}

