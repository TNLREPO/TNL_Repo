page 50320 "Service App Sche Mgt Card Test"
{
    DelayedInsert = true;
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Table50114;
    SourceTableView = WHERE (Next Call Date.=FILTER(<>''),
                            Walk-In=CONST(No),
                            Customer's Requests=CONST(Appointment),
                            Call Type=CONST(Maintenance Reminder),
                            For Appt Confirmation=CONST(No));

    layout
    {
        area(content)
        {
            group("Maintenance Reminder")
            {
                Caption = 'Maintenance Reminder';
                part(;50354)
                {
                    SubPageLink = VDS=FIELD(VDS),
                                  Fault Code=FIELD(Service Code),
                                  COF No.=FIELD(Customer Order Form No.);
                }
                field("Customer's Requests";"Customer's Requests")
                {
                    ValuesAllowed = Appointment;Walk-In;Others;
                }
                field(Maintenance2;Maintenance2)
                {
                    Caption = 'Maintenance';
                }
                field(Internal;Internal)
                {
                }
                field("Service Item";"Service Item")
                {
                }
                field("Engine No.";"Engine No.")
                {
                }
                field("Chasis No.";"Chasis No.")
                {
                }
                field("Model Code";"Model Code")
                {
                }
                field("Model Year";"Model Year")
                {
                }
                field("Contact E-Mail";"Contact E-Mail")
                {
                }
                field("Send Appointment Reminder";"Send Appointment Reminder")
                {
                }
                field("Walk-In";"Walk-In")
                {
                }
                field("Technician Code";"Technician Code")
                {
                }
                field("Technician Name";"Technician Name")
                {
                }
                field("Man Hour Per Day";"Man Hour Per Day")
                {
                }
                field("Service Slot";"Service Slot")
                {
                }
                field("Customer's Preferred Date";"Customer's Preferred Date")
                {
                    Caption = 'Delivery Date';
                }
                field("Customer's Preferred Time";"Customer's Preferred Time")
                {
                    Caption = 'Delivery Time';
                }
                field("Starting Hour";"Starting Hour")
                {
                }
                field("Technician Code2";"Technician Code2")
                {
                }
                field("Technician Name2";"Technician Name2")
                {
                }
                field("Job Details";"Job Details")
                {
                }
                field(Maintenance3;Maintenance3)
                {
                }
                label()
                {
                    CaptionClass = Text19030493;
                }
                field(VDS;VDS)
                {
                }
                field("Total Hour Available 4 day";"Total Hour Available 4 day")
                {
                }
                field("Ending Hour";"Ending Hour")
                {
                }
                field("General Repair";"General Repair")
                {
                }
                field("Customer Waiting";"Customer Waiting")
                {
                }
                field("Customer No.";"Customer No.")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field(Address;Address)
                {
                }
                field("Contact Person";"Contact Person")
                {
                }
                field("Phone No 1.";"Phone No 1.")
                {
                }
                field("Phone No. 2.";"Phone No. 2.")
                {
                }
                field("E-Mail";"E-Mail")
                {
                }
                field("Send Appointment Message";"Send Appointment Message")
                {
                }
                field(VIS;VIS)
                {
                }
                field("Diag/Est";"Diag/Est")
                {
                }
                field("Customer Complaint";"Customer Complaint")
                {
                }
                field("Serving Store";"Serving Store")
                {
                }
                field("Remaining Hours";"Remaining Hours")
                {
                    Caption = 'Tech Remaining Hrs';
                    Editable = false;
                }
                field("Total Appointment Time";"Total Appointment Time")
                {
                    Editable = false;
                }
                field("Total Rem Appt Time";"Total Rem Appt Time")
                {
                    Editable = false;
                }
                field("Appointment Allocated Hr";"Appointment Allocated Hr")
                {
                    Editable = false;
                }
                field("Total Walk in Time";"Total Walk in Time")
                {
                    Editable = false;
                }
                field("Total Rem W/I Time";"Total Rem W/I Time")
                {
                    Editable = false;
                }
                field("Walk-In Allocated Hr";"Walk-In Allocated Hr")
                {
                    Editable = false;
                }
                field("B & P";"B & P")
                {
                }
                field(Warranty;Warranty)
                {
                }
                field("Repeat Repair";"Repeat Repair")
                {
                }
                label()
                {
                    CaptionClass = Text19033859;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Service Code";"Service Code")
                {
                    TableRelation = "Fault Setup Header" WHERE (Model No.=FIELD(Model Code));
                }
                field(Description;Description)
                {
                }
                field("Service Due Projected Date";"Service Due Projected Date")
                {
                }
                field("Service Expected Duration";"Service Expected Duration")
                {
                }
                field("Next Call Date.";"Next Call Date.")
                {
                }
                label()
                {
                    CaptionClass = Text19059898;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("First Call Date";"First Call Date")
                {
                }
                field("First Call No.";"First Call No.")
                {
                }
                field("First Call Contact";"First Call Contact")
                {
                }
                field("First Call Response";"First Call Response")
                {
                }
                field("Repeat Call Date";"Repeat Call Date")
                {
                }
                field("Repeat Call No.";"Repeat Call No.")
                {
                }
                field("Repeat Call Contact";"Repeat Call Contact")
                {
                }
                field("Repeat Call Response";"Repeat Call Response")
                {
                }
                field("Last Call Date";"Last Call Date")
                {
                }
                field("Last Call No.";"Last Call No.")
                {
                }
                field("Last Call Contact";"Last Call Contact")
                {
                }
                field("Last Call Response";"Last Call Response")
                {
                }
                field("Expected Reception Date";"Expected Reception Date")
                {
                }
                field("Expected Reception Time";"Expected Reception Time")
                {
                }
                field("Response Action";"Response Action")
                {
                }
                field("Call Type";"Call Type")
                {
                }
                field("Appointment Status";"Appointment Status")
                {
                }
                field("Customer Order Form No.";"Customer Order Form No.")
                {
                    Editable = true;
                }
                field("Customer Order Form Date";"Customer Order Form Date")
                {
                }
                field("Odometer Reading At Appointmen";"Odometer Reading At Appointmen")
                {
                }
                field("For Appt Confirmation";"For Appt Confirmation")
                {
                }
                field("Maintenance Reminder";"Maintenance Reminder")
                {
                }
                field("Estimate Incl. VAT";"Estimate Incl. VAT")
                {
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                group("Service History")
                {
                    Caption = 'Service History';
                    group()
                    {
                        field(Date1;Date1)
                        {
                            Editable = false;
                        }
                        label()
                        {
                            CaptionClass = Text19034645;
                        }
                        field("Job No.1";"Job No.1")
                        {
                            Caption = 'Job No.';
                            Editable = false;
                        }
                        field(Date2;Date2)
                        {
                            Editable = false;
                        }
                        field(Date3;Date3)
                        {
                            Editable = false;
                        }
                        field(Odometer1;Odometer1)
                        {
                            Editable = false;
                        }
                        field("Job No.2";"Job No.2")
                        {
                            Editable = false;
                        }
                        field(Odometer2;Odometer2)
                        {
                            Editable = false;
                        }
                        field("Job No.3";"Job No.3")
                        {
                            Editable = false;
                        }
                        label()
                        {
                            CaptionClass = Text19053959;
                        }
                        field("Job Description1";"Job Description1")
                        {
                            Editable = false;
                        }
                        field("Job Description2";"Job Description2")
                        {
                            Editable = false;
                        }
                        field(Odometer3;Odometer3)
                        {
                            Editable = false;
                        }
                        field("Job Description3";"Job Description3")
                        {
                            Editable = false;
                        }
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Generate Appointment")
            {
                Caption = 'Generate Appointment';
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    IF "Appointment Status" = 1 THEN
                    GenAppoint
                    ELSE
                    ERROR('Please Confirm This Appointment Before Generating it');
                end;
            }
            action("Generate Customer Order Form")
            {
                Caption = 'Generate Customer Order Form';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    TESTFIELD("Expected Reception Date");
                    TESTFIELD("Expected Reception Time");
                    SerAppSch.GET(CustOrderLine."Customer Order Form No.");  //Dada: To prevent the error msg.
                    CustOrderLine.SETFILTER("Customer Order Form No.",'%1','');
                    IF CustOrderLine.FINDFIRST THEN REPEAT
                    CustOrderLine.DELETE;
                    UNTIL
                    CustOrderLine.NEXT =0;
                    IF "Appointment Status" = 1 THEN
                    GenCOF
                    ELSE
                    ERROR('Please Confirm This Appointment Before Generating Customer Order Form');
                    MESSAGE('Idicate if you need to confirm this Appointment later!');
                end;
            }
            action("Up&date")
            {
                Caption = 'Up&date';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    ApptnSchedule: Record "50047";
                    ApptnSchedule2: Record "50047";
                    HourSlotInfo: Record "50049";
                begin
                    TESTFIELD("Customer Order Form No.");
                    IF NOT CONFIRM('Do you want to continue?',FALSE) THEN
                      ERROR('Update aborted!');

                    // update hour slot info
                    HourSlotInfo.SETRANGE(Technician,"Technician Code");
                    HourSlotInfo.SETRANGE(Date,"Customer's Preferred Date");
                    HourSlotInfo.SETRANGE(HourSlotInfo."Hour Slot","Starting Hour");
                    HourSlotInfo.SETRANGE("COF No.","Customer Order Form No.");
                    IF HourSlotInfo.FINDFIRST THEN
                      ERROR('Schedule already exists!')
                    ELSE BEGIN
                      ApptnSchedule2.SETRANGE(ApptnSchedule2."Technician Code");
                      IF ApptnSchedule2.FINDLAST THEN
                        ApptnSchedule."Entry No" := ApptnSchedule2."Entry No" + 1
                      ELSE
                        ApptnSchedule."Entry No" := 1;
                      ApptnSchedule.VALIDATE("Technician Code","Technician Code");
                      ApptnSchedule."Schedule Date" := "Customer's Preferred Date";
                      ApptnSchedule."Technician Name" := "Technician Name";
                      ApptnSchedule."Schedule Date" := "Customer's Preferred Date";
                      ApptnSchedule."Job Category" := "Service Type";
                      ApptnSchedule."Daily Man Hour" := "Man Hour Per Day";
                      ApptnSchedule."Hours Consumed" := "Service Slot";
                      IF NOT ApptnSchedule.INSERT THEN ApptnSchedule.MODIFY;

                      HourSlotInfo.Technician := "Technician Code";
                      HourSlotInfo.Date := "Customer's Preferred Date";
                      HourSlotInfo."COF No." := "Customer Order Form No.";
                      HourSlotInfo."Line No." := 10000;
                      HourSlotInfo."Daily Man Hour" := "Man Hour Per Day";
                      HourSlotInfo."Hours Consumed" := "Service Slot";
                      HourSlotInfo.VALIDATE("Hour Slot","Starting Hour");
                      HourSlotInfo."COF No." := "Customer Order Form No.";
                      IF NOT HourSlotInfo.INSERT THEN HourSlotInfo.MODIFY;
                    END;
                    MESSAGE('Schedule updated successfully');
                end;
            }
            group("&Functions")
            {
                Caption = '&Functions';
                action("Print Customer List")
                {
                    Caption = 'Print Customer List';
                    RunObject = Report 50354;

    trigger OnAction()
    begin
        SerAppSch.SETRANGE(SerAppSch."Next Call Date.", TODAY);
        IF SerAppSch.FIND('-') THEN
            REPORT.RUNMODAL(50354, TRUE, TRUE, SerAppSch);
    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        VALIDATE("Service Item");
        VALIDATE("Customer No.");

        CALCFIELDS("Total Hour Available 4 day");
        ServiceSetRec.GET;
        "Total Appointment Time" := "Total Hour Available 4 day" * (ServiceSetRec."Appointment %"/100);
        "Total Walk in Time":= ("Total Hour Available 4 day" -"Total Appointment Time"-ServiceSetRec."Carry Over");
        "Total Rem W/I Time" := "Total Walk in Time" - "Walk-In Allocated Hr";
        "Total Rem Appt Time" := "Total Appointment Time" - "Appointment Allocated Hr";
        OnAfterGetCurrRecord;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Next Call Date." := TODAY;
        "Call Type" := "Call Type"::"Maintenance Reminder";
        "Walk-In" := FALSE;
        "Customer's Requests" := "Customer's Requests"::Appointment;
        OnAfterGetCurrRecord;
    end;

    trigger OnOpenPage()
    begin
        SETRANGE("Next Call Date.",TODAY);  //,(CALCDATE('10D',TODAY)));
    end;

    var
        SerAppSch: Record "50114";
        ServiceSetRec: Record "5911";
        "SSC/SC": Record "50046";
        VDSNEW: Code[10];
        VISNEW: Integer;
        CustOrderLine: Record "50122";
        Text19034645: Label 'Odometer';
        Text19053959: Label 'Job Description';
        Text19030493: Label 'Km/Mile';
        Text19033859: Label 'Service Details';
        Text19059898: Label ' Mainte. Reminder Calls';

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
            CALCFIELDS("Total Hour Available 4 day");
            ServiceSetRec.GET;
            "Total Appointment Time" := "Total Hour Available 4 day" * (ServiceSetRec."Appointment %"/100);
            "Total Walk in Time":= ("Total Hour Available 4 day" -"Total Appointment Time"-ServiceSetRec."Carry Over");
            "Total Rem W/I Time" := "Total Walk in Time" - "Walk-In Allocated Hr";
            "Total Rem Appt Time" := "Total Appointment Time" - "Appointment Allocated Hr";
    end;
}

