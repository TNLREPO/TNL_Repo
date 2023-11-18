page 80038 "Maintenance Reminder Card"
{
    PageType = Card;
    SourceTable = Table70033;

    layout
    {
        area(content)
        {
            group(General)
            {
                group("1. Vehicle Details")
                {
                    field("Appointment No."; "Appointment No.")
                    {
                    }
                    field("COF No."; "COF No.")
                    {
                    }
                    field("Service Item"; "Service Item")
                    {
                    }
                    field("Engine No."; "Engine No.")
                    {
                    }
                    field(VIN; VIN)
                    {
                    }
                    field("Model Code"; "Model Code")
                    {
                    }
                    field("Model Year"; "Model Year")
                    {
                    }
                    field(VDS; VDS)
                    {
                    }
                    field(VIS; VIS)
                    {
                    }
                    field(VMI; VMI)
                    {
                    }
                    field("Fixed Asset No."; "Fixed Asset No.")
                    {
                    }
                    field("Fixed Asset Description"; "Fixed Asset Description")
                    {
                    }
                }
                group("2. Customer Details")
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
                    field(Mobile; Mobile)
                    {
                    }
                    field(Email; Email)
                    {
                    }
                    field("Phone No. 1"; "Phone No. 1")
                    {
                        Caption = 'Phone No.';
                    }
                }
            }
            group("Service Details")
            {
                group("3. Service Details")
                {
                    field("Operation Code"; "Operation Code")
                    {
                    }
                    field(Description; Description)
                    {
                    }
                    field("Expected Service Duration"; "Expected Service Duration")
                    {
                    }
                    field(Estimate; Estimate)
                    {
                    }
                    field(VAT; VAT)
                    {
                    }
                    field("Estimate Incl. VAT"; "Estimate Incl. VAT")
                    {
                    }
                    field("Odometer At Appointment"; "Odometer At Appointment")
                    {
                    }
                    field("Service Due Date"; "Service Due Date")
                    {
                    }
                    field("Next Call Date"; "Next Call Date")
                    {
                    }
                    field("Agreed Date"; "Agreed Date")
                    {
                    }
                    field("Agreed Time"; "Agreed Time")
                    {
                    }
                    field("Call Type"; "Call Type")
                    {
                    }
                    field("Appointment Status"; "Appointment Status")
                    {
                    }
                    field(Comment; Comment)
                    {
                    }
                }
                group("4. Customer's Requests")
                {
                    field(Appointment; Appointment)
                    {
                    }
                    field("Walk-In"; "Walk-In")
                    {
                    }
                    field(Maintenance; Maintenance)
                    {
                    }
                    field("General Repair"; "General Repair")
                    {
                        Caption = 'General Repair (Diagnosis)';
                    }
                    field("Body and Paint"; "Body and Paint")
                    {
                    }
                    field(Internal; Internal)
                    {
                    }
                    field(Warranty; Warranty)
                    {
                    }
                }
                group("5. Job Details")
                {
                    field("Job Detail"; "Job Details")
                    {
                        Caption = 'Job Detail';
                        MultiLine = true;
                    }
                    field(Teams; Teams)
                    {
                    }
                    field("Stall No."; "Stall No.")
                    {
                    }
                    field("Key Assigned No."; "Key Assigned No.")
                    {
                    }
                    field("Service Advisor Code"; "Service Advisor Code")
                    {
                    }
                    field("Service Advisor's Name"; "Service Advisor's Name")
                    {
                    }
                }
                group("6. Offering")
                {
                    field("Appointment Offering 1 Date"; "Appointment Offering 1 Date")
                    {
                    }
                    field("Appointment Offering 1 Time"; "Appointment Offering 1 Time")
                    {
                    }
                    field("Appointment Offering 2 Date"; "Appointment Offering 2 Date")
                    {
                    }
                    field("Appointment Offering 2 Time"; "Appointment Offering 2 Time")
                    {
                    }
                    field("Customer's Preferred Date"; "Customer's Preferred Date")
                    {
                    }
                    field("Customer's Preferred Time"; "Customer's Preferred Time")
                    {
                    }
                    field("Delivery Date"; "Delivery Date")
                    {
                    }
                    field("Delivery Time"; "Delivery Time")
                    {
                    }
                }
            }
            group("Other Details")
            {
                field("Booking Date"; "Booking Date")
                {
                }
                field("Booking Time"; "Booking Time")
                {
                }
                field("User ID"; "User ID")
                {
                }
            }
            group(Workflow)
            {
                field("Days Before Due Date"; "Days Before Due Date")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("<Page 80007>")
            {
                Caption = 'Service History';
                Image = History;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Page 80007;
                RunPageLink = Cost Amount=FIELD(Service Item);
            }
            action("Reminder Calls")
            {
                Caption = 'Reminder Calls';
                Image = Log;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Page 50555;
                                RunPageLink = Field1=FIELD(Appointment No.);
            }
            action("SSC/SC")
            {
                Caption = 'SSC/SC';
                Image = Entries;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Page 50354;
                                RunPageLink = VMI=FIELD(Service Item);
            }
            action(Estimate)
            {
                Caption = 'Estimate';
                Image = View;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    ViewEstimate;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin

        VALIDATE("Customer No.");

        CALCFIELDS("Total Hour Available 4 day");
        ServiceSetRec.GET;
        "Total Appointment Time" := "Total Hour Available 4 day" * (ServiceSetRec."Appointment %"/100);
        "Total Walk in Time":= ("Total Hour Available 4 day" -"Total Appointment Time"-ServiceSetRec."Carry Over");
        "Total Rem W/I Time" := "Total Walk in Time" - "Asst.Technician Hour";
        "Total Rem Appt Time" := "Total Appointment Time" - "Technician Hour";

        IF "Customer's Requests" = "Customer's Requests"::Appointment THEN
          "Remaining Hours" := "Man Hour Per Day" - ("Technician Hour" + "Asst.Technician Hour")
          ELSE
          "Remaining Hours" := "Man Hour Per Day" - ("Technician Hour" + "Asst.Technician Hour");
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        VALIDATE("Next Call Date",TODAY);
        "User ID" := USERID;
        //UserSetup.GET(USERID);
        "Global Dimension 1 Code" := UserSetup."Global Dimension 1 Filter";
        "Global Dimension 2 Code" := UserSetup."Global Dimension 2 Filter";
        "Serving Store" := UserSetup."Location Code";
    end;

    var
        SerAppSch: Record "50114";
        ServiceSetRec: Record "5911";
        "SSC/SC": Record "50081";
        VDSNew: Code[10];
        VISNew: Integer;
        CustOrderLine: Record "50122";
        COFRec: Record "50119";
        UserSetup: Record "91";

    [Scope('Internal')]
    procedure ViewEstimate()
    begin
    end;
}

