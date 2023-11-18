page 70066 "Service Appointment Mgt. Card"
{
    PageType = Card;
    SourceTable = Table50114;

    layout
    {
        area(content)
        {
            group("Vehicle Details")
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
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Caption = 'Department';
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Caption = 'Branch';
                }
                field("Service Due Projected Date"; "Service Due Projected Date")
                {
                }
                field("Service Expected Duration"; "Service Expected Duration")
                {
                }
                field("Next Call Date."; "Next Call Date.")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Chasis No."; "Chasis No.")
                {
                }
                field(VDS; VDS)
                {
                }
                field(VMI; VMI)
                {
                }
                field(VIS; VIS)
                {
                }
                field("Model Code"; "Model Code")
                {
                }
                field("Model Year"; "Model Year")
                {
                }
                field("Contact E-Mail"; "Contact E-Mail")
                {
                }
                field("Send Appointment Reminder"; "Send Appointment Reminder")
                {
                }
                field("Walk-In"; "Walk-In")
                {
                }
            }
            group("Customer Details")
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
                field("Contact Person"; "Contact Person")
                {
                }
                field("Phone No 1."; "Phone No 1.")
                {
                }
                field("Phone No. 2."; "Phone No. 2.")
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
                field("Send Appointment Message"; "Send Appointment Message")
                {
                }
            }
            group("Service History")
            {
                Caption = 'Service History';
                grid()
                {
                    GridLayout = Rows;
                    group()
                    {
                        field(Date1; Date1)
                        {
                            Caption = 'Date';
                        }
                        field("Job No.1"; "Job No.1")
                        {
                            Caption = 'Job No.';
                        }
                        field(Odometer1; Odometer1)
                        {
                            Caption = 'Odometer Reading';
                        }
                        field("Job Description1"; "Job Description1")
                        {
                            Caption = 'Description';
                        }
                    }
                    group()
                    {
                        field(Date2; Date2)
                        {
                            ShowCaption = false;
                        }
                        field("Job No.2"; "Job No.2")
                        {
                            ShowCaption = false;
                        }
                        field(Odometer2; Odometer2)
                        {
                            ShowCaption = false;
                        }
                        field("Job Description2"; "Job Description2")
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field(Date3; Date3)
                        {
                            ShowCaption = false;
                        }
                        field("Job No.3"; "Job No.3")
                        {
                            ShowCaption = false;
                        }
                        field(Odometer3; Odometer3)
                        {
                            ShowCaption = false;
                        }
                        field("Job Description3"; "Job Description3")
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("M. Reminder Calls")
            {
                Caption = 'Reminder Calls';
                grid()
                {
                    GridLayout = Rows;
                    group()
                    {
                        field("First Call Date"; "First Call Date")
                        {
                        }
                        field("First Call No."; "First Call No.")
                        {
                        }
                        field("First Call Contact"; "First Call Contact")
                        {
                        }
                        field("First Call Response"; "First Call Response")
                        {
                        }
                    }
                    group()
                    {
                        field("Repeat Call Date"; "Repeat Call Date")
                        {
                        }
                        field("Repeat Call No."; "Repeat Call No.")
                        {
                        }
                        field("Repeat Call Contact"; "Repeat Call Contact")
                        {
                        }
                        field("Repeat Call Response"; "Repeat Call Response")
                        {
                        }
                    }
                    group()
                    {
                        field("Last Call Date"; "Last Call Date")
                        {
                        }
                        field("Last Call No."; "Last Call No.")
                        {
                        }
                        field("Last Call Response"; "Last Call Response")
                        {
                        }
                        field("Last Call Contact"; "Last Call Contact")
                        {
                        }
                    }
                }
                field("Expected Reception Date"; "Expected Reception Date")
                {
                }
                field("Expected Reception Time"; "Expected Reception Time")
                {
                }
                field("Response Action"; "Response Action")
                {
                }
                field("Call Type"; "Call Type")
                {
                }
                field("Appointment Status"; "Appointment Status")
                {
                }
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                }
            }
            group("Other Details")
            {
                field("Customer Order Form Date"; "Customer Order Form Date")
                {
                }
                field("Customer's Preferred Date"; "Customer's Preferred Date")
                {
                }
                field("Customer's Preferred Time"; "Customer's Preferred Time")
                {
                }
                field("Man Hour Per Day"; "Man Hour Per Day")
                {
                }
                field("Service Slot"; "Service Slot")
                {
                }
                field("Serving Store"; "Serving Store")
                {
                }
                field("Service Type"; "Service Type")
                {
                }
                field("Remaining Hours"; "Remaining Hours")
                {
                }
                field("Total Appointment Time"; "Total Appointment Time")
                {
                }
                field("Total Rem Appt Time"; "Total Rem Appt Time")
                {
                }
                field("Total Walk in Time"; "Total Walk in Time")
                {
                }
                field("Total Rem W/I Time"; "Total Rem W/I Time")
                {
                }
                field("Vehicle Driven by"; "Vehicle Driven by")
                {
                }
                field("For Appt Confirmation"; "For Appt Confirmation")
                {
                }
                field("Starting Hour"; "Starting Hour")
                {
                }
                field("Ending Hour"; "Ending Hour")
                {
                }
                field("Appointment Allocated Hr"; "Appointment Allocated Hr")
                {
                }
                field("Walk-In Allocated Hr"; "Walk-In Allocated Hr")
                {
                }
                field("Total Hour Available 4 day"; "Total Hour Available 4 day")
                {
                }
                field(Remaining; Remaining)
                {
                }
                field("Technician Code"; "Technician Code")
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Generate COF")
            {
                Caption = 'Generate COF';
                Image = GetEntries;
                Promoted = true;

                trigger OnAction()
                begin
                    TESTFIELD("Expected Reception Date");
                    TESTFIELD("Expected Reception Time");
                    /*
                    SerAppSch.GET(CustOrderLine."Customer Order Form No.");  //Dada: To prevent the error msg.
                    CustOrderLine.SETFILTER("Customer Order Form No.",'%1','');
                    IF CustOrderLine.FINDFIRST THEN REPEAT
                    CustOrderLine.DELETE;
                    UNTIL
                    CustOrderLine.NEXT =0;
                    */
                    IF "Appointment Status" = 1 THEN
                        GenCOF
                    ELSE
                        ERROR('Please confirm this appointment before generating customer order form');
                    MESSAGE('Indicate if you need to confirm this appointment later!');

                end;
            }
            action("Print COF")
            {
                Caption = 'Print COF';
                Image = Print;
                Promoted = true;

                trigger OnAction()
                begin
                    COFRec.SETRANGE(COFRec."Customer Order Form No.", "Customer Order Form No.");
                    IF COFRec.FINDFIRST THEN
                        REPORT.RUNMODAL(50305, TRUE, TRUE, COFRec);
                end;
            }
        }
    }

    var
        COFRec: Record 50119;
}

