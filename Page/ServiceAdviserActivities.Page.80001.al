page 80001 "Service Adviser Activities"
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
                    DrillDownPageID = "Open Appointments";
                }
                field("Received Appointments"; "Received Appointments")
                {
                    DrillDownPageID = "Booked Appointments";
                }
                field("Confirmed Appointments"; "Confirmed Appointments")
                {
                    DrillDownPageID = "Confirmed Appointments";
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
                    DrillDownPageID = "Parts Ordered";
                }
                field("Parts Arrival"; "Parts Arrival")
                {
                    DrillDownPageID = "Parts Arrival";
                }
            }
            cuegroup("Job Progress Control Board")
            {
                field("Todays Reception"; "Todays Reception")
                {
                    DrillDownPageID = Today;
                }
                field("Waiting for Service"; "Waiting for Service")
                {
                    DrillDownPageID = "Waiting for Service";
                }
                field("Next Job"; "Next Job")
                {
                    DrillDownPageID = "Next Job";
                }
                field("Being Serviced"; "Being Serviced")
                {
                    DrillDownPageID = "Being Serviced";
                }
                field("Waiting for Inspection"; "Waiting for Inspection")
                {
                    DrillDownPageID = "Waiting for Inspection";
                }
                field("Waiting for Washing"; "Waiting for Washing")
                {
                    DrillDownPageID = "Waiting for Washing";
                }
                field("Waiting for Invoicing"; "Waiting for Invoicing")
                {
                    DrillDownPageID = "Waiting for Invoicing";
                }
                field("Waiting for Settlement"; "Waiting for Settlement")
                {
                    DrillDownPageID = "Waiting for Settlement";
                }
                field("Awaiting Delivery"; "Awaiting Delivery")
                {
                    DrillDownPageID = "Awaiting Delivery";
                }
                field(Delivered; Delivered)
                {
                    DrillDownPageID = Delivered;
                }
            }
            cuegroup("Job Stoppage.")
            {
                Caption = 'Job Stoppage';
                field("Waiting for Decision"; "Waiting for Decision")
                {
                    DrillDownPageID = "Waiting for Decision";
                }
                field("Waiting for Approval"; "Waiting for Approval")
                {
                    DrillDownPageID = "Waiting for Approval";
                }
                field("Waiting for Parts"; "Waiting for Parts")
                {
                    DrillDownPageID = "Waiting for Parts";
                }
                field("Waiting for Sublet"; "Waiting for Sublet")
                {
                    DrillDownPageID = "Waiting for Sublet";
                }
                field("Awaiting DAD"; "Awaiting DAD")
                {
                    DrillDownPageID = "Awaiting DAD";
                }
                field("Awaiting Estimate"; "Awaiting Estimate")
                {
                    DrillDownPageID = "Awaiting Estimate";
                }
                field("Job Stoppage"; "Job Stoppage")
                {
                    DrillDownPageID = "Job Stoppage";
                }
            }
            cuegroup("Post-Service Follow-up")
            {
                field(Open; "PSFU-Open")
                {
                    Caption = 'PSFU-Open';
                    DrillDownPageID = "PSFU List";
                }
                field("PSFU-List Today"; "PSFU-Open Today")
                {
                    Caption = 'PSFU-List Today';
                    DrillDownPageID = "PSFU List Today";
                }
                field(Treated; "PSFU-Treated")
                {
                    Caption = 'PSFU-Treated';
                    DrillDownPageID = "Service Index List-Treated";
                }
                field("Repeat Repair"; "Repeat Repair")
                {
                    DrillDownPageID = "Repeat Repair";
                }
                field("Customer Complaint List"; "Customer Complaint List")
                {
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

