page 50124 "Service Adviser Activities."
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = "Service Adviser Cue";

    layout
    {
        area(content)
        {
            cuegroup(Appointment)
            {
                field("Incoming Appointments"; Rec."Incoming Appointments")
                {
                    DrillDownPageID = 50571;
                }
                field("Received Appointments"; Rec."Received Appointments")
                {
                    DrillDownPageID = "Confirmed Appointments.";
                }
                field("Confirmed Appointments"; Rec."Confirmed Appointments")
                {
                    DrillDownPageID = "My payslip";
                }
            }
            cuegroup("Appointment Preparation")
            {
                field(Tray; Rec.Tray)
                {
                }
                field("10 Days Before"; Rec."10 Days Before")
                {
                }
                field("3 Days Before"; Rec."3 Days Before")
                {
                }
                field("2 Days Before"; Rec."2 Days Before")
                {
                }
                field("1 Day Before"; Rec."1 Day Before")
                {
                }
                field("Parts Ordered"; Rec."Parts Ordered")
                {
                    DrillDownPageID = 50556;
                }
                field("<Parts Arrived> "; Rec."Parts Arrival")
                {
                    Caption = '<Parts Arrived>';
                    DrillDownPageID = 50557;
                }
            }
            cuegroup("Job Progress Control Board")
            {
                field("Todays Reception"; Rec."Todays Reception")
                {
                    DrillDownPageID = 50558;
                }
                field("Waiting for Service"; Rec."Waiting for Service")
                {
                    DrillDownPageID = 50559;
                }
                field("Next Job"; Rec."Next Job")
                {
                    DrillDownPageID = 50560;
                }
                field("Being Serviced"; Rec."Being Serviced")
                {
                    DrillDownPageID = 50561;
                }
                field("Waiting for Inspection"; Rec."Waiting for Inspection")
                {
                    DrillDownPageID = 50562;
                }
                field("Waiting for Washing"; Rec."Waiting for Washing")
                {
                    DrillDownPageID = 50563;
                }
                field("Waiting for Invoicing"; Rec."Waiting for Invoicing")
                {
                    DrillDownPageID = 50564;
                }
                field("Waiting for Settlement"; Rec."Waiting for Settlement")
                {
                    DrillDownPageID = 50565;
                }
                field(Delivered; Rec.Delivered)
                {
                    DrillDownPageID = 50553;
                }
            }
            cuegroup("Job Stoppage")
            {
                field("Waiting for Decision"; Rec."Waiting for Decision")
                {
                    DrillDownPageID = 50566;
                }
                field("Waiting for Approval"; Rec."Waiting for Approval")
                {
                    DrillDownPageID = 50567;
                }
                field("Waiting for Parts"; Rec."Waiting for Parts")
                {
                    DrillDownPageID = 50568;
                }
                field("Waiting for Sublet"; Rec."Waiting for Sublet")
                {
                    DrillDownPageID = 50570;
                }
                field("Awaiting DAD"; Rec."Awaiting DAD")
                {
                    DrillDownPageID = "Awaiting DAD";
                }
                field("Awaiting Estimate"; Rec."Awaiting Estimate")
                {
                    DrillDownPageID = "Awaiting Estimate";
                }
            }
            cuegroup("Post-Service Follow-up")
            {
                field("PSFU-Open"; Rec."PSFU-Open")
                {
                    DrillDownPageID = "Service Index List";
                }
                field("PSFU-Treated"; Rec."PSFU-Treated")
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
        Rec.RESET;
        IF NOT Rec.GET THEN BEGIN
            Rec.INIT;
            Rec.INSERT;
        END;
    end;
}

