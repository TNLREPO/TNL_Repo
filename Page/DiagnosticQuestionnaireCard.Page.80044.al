page 80044 "Diagnostic Questionnaire Card"
{
    SourceTable = Table70035;

    layout
    {
        area(content)
        {
            group("Diagnostic Appointment")
            {
                group("1. Reception")
                {
                    field("Reception Date"; "Reception Date")
                    {
                        Caption = 'Date';
                    }
                    field("Reception Time"; "Reception Time")
                    {
                        Caption = 'Time';
                    }
                    field("Reception Type"; "Reception Type")
                    {
                    }
                    field("Courtesy Vehicle"; "Courtesy Vehicle")
                    {
                    }
                }
                group("2. Delivery")
                {
                    field("Delivery Type"; "Delivery Type")
                    {
                    }
                    field("Delivery Date"; "Delivery Date")
                    {
                    }
                    field("Delivery Time"; "Delivery Time")
                    {
                    }
                }
                group("3. Customer Information")
                {
                    field("Customer No."; "Customer No.")
                    {
                    }
                    field("Customer Name"; "Customer Name")
                    {
                    }
                    field(Address; Address)
                    {
                    }
                    field(Telephone; Telephone)
                    {
                    }
                    field("Vehicle Registration No."; "Vehicle Registration No.")
                    {
                    }
                    field("Registered Date"; "Registered Date")
                    {
                    }
                    field("Model Name"; "Model Name")
                    {
                    }
                    field("Model Code"; "Model Code")
                    {
                    }
                    field("Engine No."; "Engine No.")
                    {
                    }
                    field("Model Year"; "Model Year")
                    {
                    }
                    field("Chassis No."; "Chassis No.")
                    {
                    }
                }
                group("4. Phenomena")
                {
                    field(Phenomena; Phenomena)
                    {
                        MultiLine = true;
                    }
                }
                group("5. Condition During Occurrence")
                {
                    field("From When"; "From When")
                    {
                    }
                    field("State if Other"; "State if Other")
                    {
                    }
                    field(Frequency; Frequency)
                    {
                    }
                    field("State Other Frequency"; "State Other Frequency")
                    {
                    }
                    field(Place; Place)
                    {
                    }
                    field("Warning Lamp"; "Warning Lamp")
                    {
                    }
                    field("If Starting"; "If Starting")
                    {
                    }
                    field("If Moving"; "If Moving")
                    {
                    }
                    field("If Stopped"; "If Stopped")
                    {
                    }
                    field(Speedmeter; Speedmeter)
                    {
                    }
                    field(Tachometer; Tachometer)
                    {
                    }
                    field(Advancing; Advancing)
                    {
                    }
                    field("Shifting Gear"; "Shifting Gear")
                    {
                    }
                    field("Backing Up"; "Backing Up")
                    {
                    }
                    field(Bracking; Bracking)
                    {
                    }
                    field("Number of Occupants"; "Number of Occupants")
                    {
                    }
                    field("Vehicle Load"; "Vehicle Load")
                    {
                    }
                    field("Towing Load"; "Towing Load")
                    {
                    }
                    field(Surface; Surface)
                    {
                    }
                    field("If Other Surface (State)"; "If Other Surface (State)")
                    {
                    }
                    field(Weather; Weather)
                    {
                    }
                    field("Outside Tempt."; "Outside Tempt.")
                    {
                    }
                    field("A/C Temp Setting"; "A/C Temp Setting")
                    {
                    }
                    field("Fan Speed Setting"; "Fan Speed Setting")
                    {
                    }
                    field("Recir. Position"; "Recir. Position")
                    {
                    }
                    field("Air Flow Mode"; "Air Flow Mode")
                    {
                    }
                    field("Condition Staff Name"; "Condition Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                    field("Condition Date"; "Condition Date")
                    {
                        Caption = 'Date';
                    }
                    field("Condition Time"; "Condition Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("6. Contact Information")
                {
                    field("Contact Telephone"; "Contact Telephone")
                    {
                        Caption = 'Telephone No.';
                    }
                    field("Contact Available Time to"; "Contact Available Time to")
                    {
                        Caption = 'Available Time to';
                    }
                    field("Contact Staff Name"; "Contact Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                    field("Contact Date"; "Contact Date")
                    {
                        Caption = 'Date';
                    }
                    field("Contact Time"; "Contact Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("7. Walk-around Check")
                {
                    field("Confirmed with Customer"; "Confirmed with Customer")
                    {
                    }
                    field("Additional Job Confirmation"; "Additional Job Confirmation")
                    {
                    }
                    field(Valuable; Valuable)
                    {
                    }
                    field("Seat Cover"; "Seat Cover")
                    {
                    }
                    field("Floor Mat"; "Floor Mat")
                    {
                    }
                    field("Walk-Arround Check"; "Walk-Arround Check")
                    {
                    }
                    field("Odometer Reading at Reception"; "Odometer Reading at Reception")
                    {
                    }
                    field("Confirmation Staff Name"; "Confirmation Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                    field("Confirmation Date"; "Confirmation Date")
                    {
                        Caption = 'Date';
                    }
                    field("Vehicle Driven By"; "Vehicle Driven By")
                    {
                    }
                    field("Vehicle Driven by Name"; "Vehicle Driven by Name")
                    {
                    }
                }
            }
            group(Diagnosis)
            {
                field("Inspection Details/Result"; "Inspection Details/Result")
                {
                    MultiLine = true;
                }
                field("Result Discovered/Prediction"; "Result Discovered/Prediction")
                {
                    MultiLine = true;
                }
                field("Main Cause"; "Main Cause")
                {
                    MultiLine = true;
                }
                field("Key Assined No."; "Key Assined No.")
                {
                }
                field("Stall No."; "Stall No.")
                {
                }
                field(Reappearance; Reappearance)
                {
                }
                group("1.")
                {
                    field(DTC1; DTC1)
                    {
                    }
                    field(Status1; Status1)
                    {
                    }
                    field("Freeze Frame Data Saved1"; "Freeze Frame Data Saved1")
                    {
                    }
                }
                group("2.")
                {
                    field(DTC2; DTC2)
                    {
                    }
                    field(Status2; Status2)
                    {
                    }
                    field("Freeze Frame Data Saved2"; "Freeze Frame Data Saved2")
                    {
                    }
                }
                group("3.")
                {
                    field(DTC3; DTC3)
                    {
                    }
                    field(Status3; Status3)
                    {
                    }
                    field("Freeze Frame Data Saved3"; "Freeze Frame Data Saved3")
                    {
                    }
                }
                group("4.")
                {
                    field(DTC4; DTC4)
                    {
                    }
                    field(Status4; Status4)
                    {
                    }
                    field("Freeze Frame Data Saved4"; "Freeze Frame Data Saved4")
                    {
                    }
                }
            }
            group("Job Instruction Info")
            {
                field("Job Instruction"; "Job Instruction")
                {
                    MultiLine = true;
                }
                field(Warranty; Warranty)
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("Start Time"; "Start Time")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field("End Time"; "End Time")
                {
                }
                field("Time Required"; "Time Required")
                {
                }
                field(DTR; DTR)
                {
                }
                field("Job Instruction Staff Name"; "Job Instruction Staff Name")
                {
                    Caption = 'Staff Name';
                }
                field("Confirmed By"; "Confirmed By")
                {
                }
                field("Confirmed Date"; "Confirmed Date")
                {
                }
                field("Confirmed Time"; "Confirmed Time")
                {
                }
            }
            group("Dist. Support")
            {
                field(Destination; Destination)
                {
                }
                field("In Charge"; "In Charge")
                {
                }
                field("Vehicle Status"; "Vehicle Status")
                {
                }
                field(Requests; Requests)
                {
                }
                field("If Requests is Other Pls State"; "If Requests is Other Pls State")
                {
                }
                field("Receiving Status"; "Receiving Status")
                {
                }
                field("Receiving Status Date"; "Receiving Status Date")
                {
                }
                field("Receiving Status Time"; "Receiving Status Time")
                {
                }
                field("Support Request Date"; "Support Request Date")
                {
                }
                field("Support Request Time"; "Support Request Time")
                {
                }
                field("Support Staff Name"; "Support Staff Name")
                {
                    Caption = 'Staff Name';
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Print Diagnostic Questionaire")
            {
                Caption = 'Print Diagnostic Questionaire';
                Image = "Report";

                trigger OnAction()
                begin
                    DiagRec.SETRANGE(DiagRec."DQ No.", "DQ No.");
                    IF DiagRec.FINDFIRST THEN
                        REPORT.RUNMODAL(50329, TRUE, TRUE, DiagRec);
                end;
            }
            action("Job Clocking")
            {
                Image = Timesheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Page 80013;
                RunPageLink = Job No.=FIELD(Customer Order No.);
            }
        }
    }

    var
        DiagRec: Record "70035";
}

