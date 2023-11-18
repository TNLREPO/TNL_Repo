page 70067 "Booked Service Appointment"
{
    CardPageID = "Service Appointment Mgt. Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = Table50114;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Service Item"; "Service Item")
                {
                }
                field("Service Code"; "Service Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Next Call Date."; "Next Call Date.")
                {
                }
                field("Expected Reception Date"; "Expected Reception Date")
                {
                }
                field("Service Due Projected Date"; "Service Due Projected Date")
                {
                }
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                }
                field("Customer's Requests"; "Customer's Requests")
                {
                }
                field("Call Type"; "Call Type")
                {
                }
                field("Walk-In"; "Walk-In")
                {
                }
                field("General Repair"; "General Repair")
                {
                }
                field("Service Date"; "Service Date")
                {
                }
                field("Service Due Kilometer"; "Service Due Kilometer")
                {
                }
                field("Serviced Kilometer"; "Serviced Kilometer")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Print Appointment Customer List")
            {
                Caption = 'Print Appointment Customer List';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50323;
            }
            action("Generate Schedule")
            {
                Caption = 'Generate Schedule';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Genschedu
                end;
            }
        }
    }
}

