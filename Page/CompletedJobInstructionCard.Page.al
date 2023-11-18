page 70077 "Completed Job Instruction Card"
{
    DeleteAllowed = false;
    Editable = false;
    SourceTable = Table50119;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Job Type"; "Job Type")
                {
                }
                field("Job Instruction No."; "Job Instruction No.")
                {
                    Caption = 'Date';
                }
                field("Job Instruction Date"; "Job Instruction Date")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field(Address; Address)
                {
                }
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                }
                field("Vehicle Registered Date"; "Vehicle Registered Date")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Model No"; "Model No")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Frame No./VIN"; "Frame No./VIN")
                {
                }
                field("(Engine No)"; "(Engine No)")
                {
                }
                field("Contact Home"; "Contact Home")
                {
                }
                field("Contact Business"; "Contact Business")
                {
                }
                field("Contact Mobile"; "Contact Mobile")
                {
                }
                field(o; "E-mail")
                {
                }
                field("Additional Job Confirmation"; "Additional Job Confirmation")
                {
                }
                field("Service Order No."; "Service Order No.")
                {
                }
                field("Estimated Completion Date"; "Estimated Completion Date")
                {
                }
                field("Estimated Completion Time"; "Estimated Completion Time")
                {
                }
                field("Key Assigned No."; "Key Assigned No.")
                {
                }
                field("Stall No."; "Stall No.")
                {
                }
                field("Job Start Date"; "Job Start Date")
                {
                }
                field("Job Start Time"; "Job Start Time")
                {
                }
                field("Fuel Level"; "Fuel Level")
                {
                }
                field("Car Wash"; "Car Wash")
                {
                }
            }
            part(Lines; 50241)
            {
                Caption = 'Lines';
                SubPageLink = Customer Order Form No.=FIELD(Customer Order Form No.);
            }
            group("Job Completion")
            {
                Caption = 'Preparation for Delivery';
                field("Completion Changed Date"; "Completion Changed Date")
                {
                }
                field("Completion Changed Time"; "Completion Changed Time")
                {
                }
                field("CC Date"; "CC Date")
                {
                    Caption = 'Customer Contact Date';
                }
                field("CC Time"; "CC Time")
                {
                    Caption = 'Customer Contact Time';
                }
                field("Delivery Changed Date"; "Delivery Changed Date")
                {
                }
                field("Delivery Changed Time"; "Delivery Changed Time")
                {
                }
                field("CC Staff Name"; "CC Staff Name")
                {
                    Caption = ' Staff Name';
                }
                field("JC Date"; "JC Date")
                {
                    Caption = 'Job Completion Date';
                }
                field("JC Time"; "JC Time")
                {
                    Caption = 'Job Completion Time';
                }
                field("Actual Hours Clocked"; "Actual Hours Clocked")
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
                field("Other Findings/Advice"; "Other Findings/Advice")
                {
                }
                field(Memo; Memo)
                {
                }
                field("QC Staff"; "QC Staff")
                {
                    Caption = 'Quality Control Staff Name';
                }
                field("Quality Control Staff Code"; "Quality Control Staff Code")
                {
                }
                field(Cleanliness; Cleanliness)
                {
                }
                field(Cleanliness2; Cleanliness2)
                {
                }
                field("Courtesy Items Removal"; "Courtesy Items Removal")
                {
                }
                field("Courtesy Items Removal2"; "Courtesy Items Removal2")
                {
                }
                field("Outer Minor P / Seat P"; "Outer Minor P / Seat P")
                {
                }
                field("Outer Minor P / Seat P2"; "Outer Minor P / Seat P2")
                {
                }
                field("Clock Adj / Radio Setting"; "Clock Adj / Radio Setting")
                {
                }
                field("Clock Adj / Radio Setting2"; "Clock Adj / Radio Setting2")
                {
                }
                field("Pre-d C Staff Name"; "Pre-d C Staff Name")
                {
                    Caption = 'Staff Name';
                }
                field("Pre-d C Confirmed by"; "Pre-d C Confirmed by")
                {
                    Caption = 'Confirmed By';
                }
                field("Job CN Date"; "Job CN Date")
                {
                    Caption = 'Job Completion Date';
                }
                field("Job CN Time"; "Job CN Time")
                {
                    Caption = 'Job Completion Time';
                }
                field("Job CN Staff Name"; "Job CN Staff Name")
                {
                    Caption = 'Job Notification Completed By';
                }
                group()
                {
                    field("Delivery Staff Name"; "Delivery Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                    field("Delivery Customer"; "Delivery Customer")
                    {
                        Caption = 'Customer';
                    }
                    field("Appt Confirmed"; "Appt Confirmed")
                    {
                        Caption = 'Appt Confirmed';
                    }
                    field("For Part Order"; "For Part Order")
                    {
                        Caption = 'Part Order';
                    }
                    field("For Part Arrival"; "For Part Arrival")
                    {
                        Caption = 'Part Arrival';
                    }
                    field("For Production"; "For Production")
                    {
                        Caption = 'Production';
                    }
                    field("For Invoice"; "For Invoice")
                    {
                        Caption = 'Invoice';
                    }
                    field("Next Job Type"; "Next Job Type")
                    {
                        Caption = 'Next Job Type';
                    }
                    field("Next Service Date"; "Next Service Date")
                    {
                        Caption = 'Next Service Date';
                    }
                    field(Delivered; Delivered)
                    {
                        Caption = 'Delivered';
                    }
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Print Estimate II")
            {
                Caption = 'Print Estimate II';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    JIRec.SETRANGE(JIRec."Customer Order Form No.", "Customer Order Form No.");
                    IF JIRec.FIND('-') THEN
                        REPORT.RUNMODAL(50403, TRUE, TRUE, JIRec);
                end;
            }
            action("Print COF")
            {
                Caption = 'Print COF';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    COFRec.SETRANGE(COFRec."Customer Order Form No.", "Customer Order Form No.");
                    IF COFRec.FINDFIRST THEN
                        REPORT.RUNMODAL(50305, TRUE, TRUE, COFRec);
                end;
            }
            action("Print Job Instruction")
            {
                Caption = 'Print Job Instruction';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    JIRec.SETRANGE(JIRec."Customer Order Form No.", "Customer Order Form No.");
                    IF JIRec.FIND('-') THEN
                        REPORT.RUNMODAL(50312, TRUE, TRUE, JIRec);
                end;
            }
        }
    }

    var
        COFRec: Record 50119;
        ServiceOrder: Record 5900;
        SericeItemLine: Record 5901;
        ServiceLine: Record 5902;
        PurchSetup: Record 312;
        USERSETUP: Record 91;
        JIRec: Record 50119;
        CustOrderLine: Record 50122;
        CustOrderLine2: Record 50122;
        ServiceLine2: Record 5902;
        CustOrderTable: Record 50119;
        PurchOrderHeader: Record 38;
        PurchOrderLine: Record 39;
        NextLineNo: Integer;
        NoSeriesMgt: Record 308;
        VRI2: Record 50058;
        ItemRec: Record 27;
        COFRec2: Record 50119;
        VRIRec: Record 50058;
        COFLine: Record 50122;
}

