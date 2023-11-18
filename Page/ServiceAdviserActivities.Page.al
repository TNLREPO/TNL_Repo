page 50124 "Service Adviser Activities."
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = Table50129;

    layout
    {
        area(content)
        {
            cuegroup(Appointment)
            {
                field("Incoming Appointments"; "Incoming Appointments")
                {
                    DrillDownPageID = 50571;
                }
                field("Received Appointments"; "Received Appointments")
                {
                    DrillDownPageID = "Confirmed Appointments.";
                }
                field("Confirmed Appointments"; "Confirmed Appointments")
                {
                    DrillDownPageID = "My payslip";
                }
            }
            cuegroup("Appointment Preparation")
            {
                field(Tray; Tray)
                {
                }
                field("10 Days Before"; "10 Days Before")
                {
                }
                field("3 Days Before"; "3 Days Before")
                {
                }
                field("2 Days Before"; "2 Days Before")
                {
                }
                field("1 Day Before"; "1 Day Before")
                {
                }
                field("Parts Ordered"; "Parts Ordered")
                {
                    DrillDownPageID = 50556;
                }
                field("<Parts Arrived> "; "Parts Arrival")
                {
                    Caption = '<Parts Arrived>';
                    DrillDownPageID = 50557;
                }
            }
            cuegroup("Job Progress Control Board")
            {
                field("Todays Reception"; "Todays Reception")
                {
                    DrillDownPageID = 50558;
                }
                field("Waiting for Service"; "Waiting for Service")
                {
                    DrillDownPageID = 50559;
                }
                field("Next Job"; "Next Job")
                {
                    DrillDownPageID = 50560;
                }
                field("Being Serviced"; "Being Serviced")
                {
                    DrillDownPageID = 50561;
                }
                field("Waiting for Inspection"; "Waiting for Inspection")
                {
                    DrillDownPageID = 50562;
                }
                field("Waiting for Washing"; "Waiting for Washing")
                {
                    DrillDownPageID = 50563;
                }
                field("Waiting for Invoicing"; "Waiting for Invoicing")
                {
                    DrillDownPageID = 50564;
                }
                field("Waiting for Settlement"; "Waiting for Settlement")
                {
                    DrillDownPageID = 50565;
                }
                field(Delivered; Delivered)
                {
                    DrillDownPageID = 50553;
                }
            }
            cuegroup("Job Stoppage")
            {
                field("Waiting for Decision"; "Waiting for Decision")
                {
                    DrillDownPageID = 50566;
                }
                field("Waiting for Approval"; "Waiting for Approval")
                {
                    DrillDownPageID = 50567;
                }
                field("Waiting for Parts"; "Waiting for Parts")
                {
                    DrillDownPageID = 50568;
                }
                field("Waiting for Sublet"; "Waiting for Sublet")
                {
                    DrillDownPageID = 50570;
                }
                field("Awaiting DAD"; "Awaiting DAD")
                {
                    DrillDownPageID = "Awaiting DAD";
                }
                field("Awaiting Estimate"; "Awaiting Estimate")
                {
                    DrillDownPageID = "Awaiting Estimate";
                }
            }
            cuegroup("Post-Service Follow-up")
            {
                field("PSFU-Open"; "PSFU-Open")
                {
                    DrillDownPageID = "Service Index List";
                }
                field("PSFU-Treated"; "PSFU-Treated")
                {
                    DrillDownPageID = 50246;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        RESET;
        IF NOT GET THEN BEGIN
            INIT;
            INSERT;
        END;
    end;
}

