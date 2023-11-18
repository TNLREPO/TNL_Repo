page 50190 "Appointment Booking"
{
    DelayedInsert = true;
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = "Service Appointment Scheduled";
    SourceTableView = WHERE("Next Call Date." = FILTER(<> ''),
                            "Walk-In" = filter(false),
                            "Customer's Requests" = filter('Appointment'),
                            "Call Type" = filter('Appt. Booking'),
                            "For Appt Confirmation" = filter(false));

    layout
    {
        area(content)
        {
            group(Control1)
            {
                Caption = 'Maintenance Reminder';
                field("User ID"; Rec."User ID")
                {
                }
                field("Service Item"; Rec."Service Item")
                {
                }
                field("Engine No."; Rec."Engine No.")
                {
                }
                field("Chasis No."; Rec."Chasis No.")
                {
                }
                field("Model Code"; Rec."Model Code")
                {
                }
                field("Model Year"; Rec."Model Year")
                {
                }
                field("Contact E-Mail"; Rec."Contact E-Mail")
                {
                }
                field("Send Appointment Reminder"; Rec."Send Appointment Reminder")
                {
                }
                field("Walk-In"; Rec."Walk-In")
                {
                }
                label(Control2)
                {
                    CaptionClass = Text19017814;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Customer's Preferred Date"; Rec."Customer's Preferred Date")
                {
                    Caption = 'Cust. Preferred Date';
                }
                field("Total Hour Available 4 day"; Rec."Total Hour Available 4 day")
                {
                }
                field("Customer's Preferred Time"; Rec."Customer's Preferred Time")
                {
                    Caption = 'Cust. Preferred Time';
                }
                field("Technician Code"; Rec."Technician Code")
                {
                }
                field("Technician Name"; Rec."Technician Name")
                {
                }
                field("Man Hour Per Day"; Rec."Man Hour Per Day")
                {
                }
                field("Service Slot"; Rec."Service Slot")
                {
                }
                field("Starting Hour"; Rec."Starting Hour")
                {
                }
                field("Ending Hour"; Rec."Ending Hour")
                {
                }
                field("Technician Code2"; Rec."Technician Code2")
                {
                }
                field("Technician Name2"; Rec."Technician Name2")
                {
                }
                field(VDS; Rec.VDS)
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field(Address; Rec.Address)
                {
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                }
                field("Contact Person"; Rec."Contact Person")
                {
                }
                field("Phone No 1."; Rec."Phone No 1.")
                {
                }
                field("Phone No. 2."; Rec."Phone No. 2.")
                {
                }
                field("E-Mail"; Rec."E-Mail")
                {
                }
                field("Send Appointment Message"; Rec."Send Appointment Message")
                {
                }
                field(VIS; Rec.VIS)
                {
                }
                field("Serving Store"; Rec."Serving Store")
                {
                }
                field("Remaining Hours"; Rec."Remaining Hours")
                {
                    Caption = 'Tech Remaining Hrs';
                    Editable = false;
                }
                field("Total Appointment Time"; Rec."Total Appointment Time")
                {
                    Editable = false;
                }
                field("Total Rem Appt Time"; Rec."Total Rem Appt Time")
                {
                    Editable = false;
                }
                field("Maintenance Reminder"; Rec."Maintenance Reminder")
                {
                }
                field("Appointment Allocated Hr"; Rec."Appointment Allocated Hr")
                {
                    Editable = false;
                }
                field("Total Walk in Time"; Rec."Total Walk in Time")
                {
                    Editable = false;
                }
                field("Total Rem W/I Time"; Rec."Total Rem W/I Time")
                {
                    Editable = false;
                }
                field("Walk-In Allocated Hr"; Rec."Walk-In Allocated Hr")
                {
                    Editable = false;
                }
                field("For Appt Confirmation"; Rec."For Appt Confirmation")
                {
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                }
                field("Service Code"; Rec."Service Code")
                {
                    TableRelation = "Fault Setup Header" WHERE("Model No." = FIELD("Model Code"));
                }
                field(Description; Rec.Description)
                {
                }
                field("Service Due Projected Date"; Rec."Service Due Projected Date")
                {
                }
                field("Service Expected Duration"; Rec."Service Expected Duration")
                {
                }
                field("Next Call Date."; Rec."Next Call Date.")
                {
                }
                field("First Call Date"; Rec."First Call Date")
                {
                }
                field("First Call No."; Rec."First Call No.")
                {
                }
                field("First Call Contact"; Rec."First Call Contact")
                {
                }
                field("First Call Response"; Rec."First Call Response")
                {
                }
                field("Repeat Call Date"; Rec."Repeat Call Date")
                {
                }
                field("Repeat Call No."; Rec."Repeat Call No.")
                {
                }
                field("Repeat Call Contact"; Rec."Repeat Call Contact")
                {
                }
                field("Repeat Call Response"; Rec."Repeat Call Response")
                {
                }
                field("Last Call Date"; Rec."Last Call Date")
                {
                }
                field("Last Call No."; Rec."Last Call No.")
                {
                }
                field("Last Call Contact"; Rec."Last Call Contact")
                {
                }
                field("Last Call Response"; Rec."Last Call Response")
                {
                }
                field("Expected Reception Date"; Rec."Expected Reception Date")
                {
                }
                field("Expected Reception Time"; Rec."Expected Reception Time")
                {
                }
                field("Response Action"; Rec."Response Action")
                {
                }
                field("Call Type"; Rec."Call Type")
                {
                }
                field("Appointment Status"; Rec."Appointment Status")
                {
                }
                field("Customer Order Form No."; Rec."Customer Order Form No.")
                {
                    Editable = true;
                }
                field("Customer Order Form Date"; Rec."Customer Order Form Date")
                {
                }
                field("Estimate Incl. VAT"; Rec."Estimate Incl. VAT")
                {
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                group("Service History")
                {
                    Caption = 'Service History';
                    group(Control3)
                    {
                        label(Control4)
                        {
                            CaptionClass = Text19000744;
                        }
                        field(Date1; Rec.Date1)
                        {
                            Editable = false;
                        }
                        label(Control5)
                        {
                            CaptionClass = Text19034645;
                        }
                        field("Job No.1"; Rec."Job No.1")
                        {
                            Caption = 'Job No.';
                            Editable = false;
                        }
                        field(Date2; Rec.Date2)
                        {
                            Editable = false;
                        }
                        field(Date3; Rec.Date3)
                        {
                            Editable = false;
                        }
                        field(Odometer1; Rec.Odometer1)
                        {
                            Editable = false;
                        }
                        field("Job No.2"; Rec."Job No.2")
                        {
                            Editable = false;
                        }
                        field(Odometer2; Rec.Odometer2)
                        {
                            Editable = false;
                        }
                        field("Job No.3"; Rec."Job No.3")
                        {
                            Editable = false;
                        }
                        label(Control6)
                        {
                            CaptionClass = Text19053959;
                        }
                        field("Job Description1"; Rec."Job Description1")
                        {
                            Editable = false;
                        }
                        field("Job Description2"; Rec."Job Description2")
                        {
                            Editable = false;
                        }
                        field(Odometer3; Rec.Odometer3)
                        {
                            Editable = false;
                        }
                        field("Job Description3"; Rec."Job Description3")
                        {
                            Editable = false;
                        }
                    }
                }
            }
            group(" Details")
            {
                Caption = ' Details';
                field("Customer's Requests"; Rec."Customer's Requests")
                {
                    Caption = 'Job Details';
                    //ValuesAllowed = Appointment;"Walk-In";Others;
                }
                field(Maintenance2; Rec.Maintenance2)
                {
                    Caption = 'Maintenance';
                }
                field(Internal; Rec.Internal)
                {
                }
                field("Job Details"; Rec."Job Details")
                {
                }
                field(Maintenance3; Rec.Maintenance3)
                {
                }
                field("General Repair"; Rec."General Repair")
                {
                    Caption = 'Km/Mile';
                }
                field("Customer Waiting"; Rec."Customer Waiting")
                {
                }
                field(Teams; Rec.Teams)
                {
                }
                field("Stall No."; Rec."Stall No.")
                {
                }
                field("Service Advisor"; Rec."Service Advisor")
                {
                }
                field("Service Advisor's Name"; Rec."Service Advisor's Name")
                {
                }
                field("Diag/Est"; Rec."Diag/Est")
                {
                }
                field("Customer Complaint"; Rec."Customer Complaint")
                {
                }
                field("Odometer Reading At Appointmen"; Rec."Odometer Reading At Appointmen")
                {
                }
                field("B & P"; Rec."B & P")
                {
                }
                field("Repeat Repair"; Rec."Repeat Repair")
                {
                }
                field(Warranty; Rec.Warranty)
                {
                }
                field("Appointment Booking Date"; Rec."Appointment Booking Date")
                {
                }
                field("Appointment Booking Time"; Rec."Appointment Booking Time")
                {
                }
                field("Appointment Booking Staff Name"; Rec."Appointment Booking Staff Name")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Up&date")
            {
                Caption = 'Up&date';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    ApptnSchedule: Record 50047;
                    ApptnSchedule2: Record 50047;
                    HourSlotInfo: Record 50049;
                begin
                    Rec.TESTFIELD("Customer Order Form No.");
                    IF NOT CONFIRM('Do you want to continue?', FALSE) THEN
                        ERROR('Update aborted!');

                    // update hour slot info
                    HourSlotInfo.SETRANGE(Technician, Rec."Technician Code");
                    HourSlotInfo.SETRANGE(Date, Rec."Customer's Preferred Date");
                    HourSlotInfo.SETRANGE(HourSlotInfo."Hour Slot", Rec."Starting Hour");
                    HourSlotInfo.SETRANGE("COF No.", Rec."Customer Order Form No.");
                    IF HourSlotInfo.FINDFIRST THEN
                        ERROR('Schedule already exists!')
                    ELSE BEGIN
                        ApptnSchedule2.SETRANGE(ApptnSchedule2."Technician Code");
                        IF ApptnSchedule2.FINDLAST THEN
                            ApptnSchedule."Entry No" := ApptnSchedule2."Entry No" + 1
                        ELSE
                            ApptnSchedule."Entry No" := 1;
                        ApptnSchedule.VALIDATE("Technician Code", Rec."Technician Code");
                        ApptnSchedule."Schedule Date" := Rec."Customer's Preferred Date";
                        ApptnSchedule."Technician Name" := Rec."Technician Name";
                        ApptnSchedule."Schedule Date" := Rec."Customer's Preferred Date";
                        ApptnSchedule."Job Category" := Rec."Service Type";
                        ApptnSchedule."Daily Man Hour" := Rec."Man Hour Per Day";
                        ApptnSchedule."Hours Consumed" := Rec."Service Slot";
                        IF NOT ApptnSchedule.INSERT THEN ApptnSchedule.MODIFY;

                        HourSlotInfo.Technician := Rec."Technician Code";
                        HourSlotInfo.Date := Rec."Customer's Preferred Date";
                        HourSlotInfo."COF No." := Rec."Customer Order Form No.";
                        HourSlotInfo."Line No." := 10000;
                        HourSlotInfo."Daily Man Hour" := Rec."Man Hour Per Day";
                        HourSlotInfo."Hours Consumed" := Rec."Service Slot";
                        HourSlotInfo.VALIDATE("Hour Slot", Rec."Starting Hour");
                        HourSlotInfo."COF No." := Rec."Customer Order Form No.";
                        IF NOT HourSlotInfo.INSERT THEN HourSlotInfo.MODIFY;
                    END;
                    MESSAGE('Schedule updated successfully');
                end;
            }
            action("Generate Customer Order Form")
            {
                Caption = 'Generate Customer Order Form';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.TESTFIELD("Expected Reception Date");
                    Rec.TESTFIELD("Expected Reception Time");
                    SerAppSch.GET(CustOrderLine."Customer Order Form No.");

                    CustOrderLine.SETFILTER("Customer Order Form No.", '%1', '');
                    IF CustOrderLine.FINDFIRST THEN
                        REPEAT
                            CustOrderLine.DELETE;
                        UNTIL
                    CustOrderLine.NEXT = 0;

                    IF Rec."Appointment Status" = 1 THEN
                        Rec.GenCOF
                    ELSE
                        ERROR('Please Confirm This Appointment Before Generating Customer Order Form');
                    MESSAGE('Idicate if you need to confirm this Appointment later!');
                end;

            }
            group("&Functions")
            {
                Caption = '&Functions';
                action("Print Customer List")
                {
                    Caption = 'Print Customer List';
                    RunObject = Report 50323;

                    trigger OnAction()
                    begin
                        SerAppSch.SETRANGE(SerAppSch."Next Call Date.", TODAY);
                        IF SerAppSch.FIND('-') THEN
                            REPORT.RUNMODAL(50323, TRUE, TRUE, SerAppSch);
                    end;
                }
            }
            action("Generate Appointment")
            {
                Caption = 'Generate Appointment';
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    IF Rec."Appointment Status" = 1 THEN
                        Rec.GenAppoint
                    ELSE
                        ERROR('Please Confirm This Appointment Before Generating it');
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.VALIDATE("Service Item");
        Rec.VALIDATE("Customer No.");

        Rec.CALCFIELDS("Total Hour Available 4 day");
        ServiceSetRec.GET;
        Rec."Total Appointment Time" := Rec."Total Hour Available 4 day" * (ServiceSetRec."Appointment %" / 100);
        Rec."Total Walk in Time" := (Rec."Total Hour Available 4 day" - Rec."Total Appointment Time" - ServiceSetRec."Carry Over");
        Rec."Total Rem W/I Time" := Rec."Total Walk in Time" - Rec."Walk-In Allocated Hr";
        Rec."Total Rem Appt Time" := Rec."Total Appointment Time" - Rec."Appointment Allocated Hr";

        xRec := Rec;
        Rec.CALCFIELDS("Total Hour Available 4 day");
        ServiceSetRec.GET;
        Rec."Total Appointment Time" := Rec."Total Hour Available 4 day" * (ServiceSetRec."Appointment %" / 100);
        Rec."Total Walk in Time" := (Rec."Total Hour Available 4 day" - Rec."Total Appointment Time" - ServiceSetRec."Carry Over");
        Rec."Total Rem W/I Time" := Rec."Total Walk in Time" - Rec."Walk-In Allocated Hr";
        Rec."Total Rem Appt Time" := Rec."Total Appointment Time" - Rec."Appointment Allocated Hr";
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."Next Call Date." := TODAY;
        Rec."Call Type" := Rec."Call Type"::"Appt. Booking";
        Rec."Walk-In" := FALSE;
        Rec."Customer's Requests" := Rec."Customer's Requests"::Appointment;


        xRec := Rec;
        Rec.CALCFIELDS("Total Hour Available 4 day");
        ServiceSetRec.GET;
        Rec."Total Appointment Time" := Rec."Total Hour Available 4 day" * (ServiceSetRec."Appointment %" / 100);
        Rec."Total Walk in Time" := (Rec."Total Hour Available 4 day" - Rec."Total Appointment Time" - ServiceSetRec."Carry Over");
        Rec."Total Rem W/I Time" := Rec."Total Walk in Time" - Rec."Walk-In Allocated Hr";
        Rec."Total Rem Appt Time" := Rec."Total Appointment Time" - Rec."Appointment Allocated Hr";
    end;

    trigger OnOpenPage()
    begin
        Rec.SETRANGE("Next Call Date.", TODAY);

    end;

    var
        SerAppSch: Record 50114;
        ServiceSetRec: Record 5911;
        "SSC/SC": Record 50046;
        VDSNEW: Code[10];
        VISNEW: Integer;
        CustOrderLine: Record 50122;
        Text19000744: Label 'Date';
        Text19034645: Label 'Odometer';
        Text19053959: Label 'Job Description';
        Text19017814: Label 'SSC/SC Details';
}

