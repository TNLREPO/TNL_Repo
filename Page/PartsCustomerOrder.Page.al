page 80056 "Parts Customer Order"
{
    Caption = 'Customer Order Form Card';
    PageType = Card;
    SourceTable = Table70034;

    layout
    {
        area(content)
        {
            group(General)
            {
                group("4. Parts Ordered")
                {
                    field("Parts Ordered Date"; "Parts Ordered Date")
                    {
                        Caption = 'Date';
                    }
                    field("Parts Ordered Time"; "Parts Ordered Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("5. Parts Arrived")
                {
                    field("Parts Arrived Date"; "Parts Arrived Date")
                    {
                        Caption = 'Date';
                    }
                    field("Parts Arrived Time"; "Parts Arrived Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("6. Vehicle Details")
                {
                    field("Vehicle Registration No."; "Vehicle Registration No.")
                    {
                    }
                    field(Brand; Brand)
                    {
                    }
                    field("Model No."; "Model No.")
                    {
                    }
                    field("Model Name"; "Model Name")
                    {
                    }
                    field("Model Year"; "Model Year")
                    {
                    }
                    field("Frame No./VIN"; "Frame No./VIN")
                    {
                    }
                    field("Engine No."; "Engine No.")
                    {
                        Caption = 'Engine No.';
                    }
                    field(VDS; VDS)
                    {
                        Editable = false;
                    }
                    field(VIS; VIS)
                    {
                        Editable = false;
                    }
                    field(VMI; VMI)
                    {
                        Editable = false;
                    }
                    field("Odometer At Appointment"; "Odometer At Appointment")
                    {
                    }
                }
                group("7. Customer Name / Address / Telephone No.")
                {
                    Editable = true;
                    Visible = false;
                    field("Customer No."; "Customer No.")
                    {
                    }
                    field("Customer Name"; "Customer Name")
                    {
                    }
                    field("No VAT"; "No VAT")
                    {
                    }
                    field(Address; Address)
                    {
                        Editable = false;
                    }
                    field(Address2; Address2)
                    {
                        Editable = false;
                    }
                    field(Home; Home)
                    {
                        Editable = false;
                    }
                    field(Business; Business)
                    {
                        Editable = false;
                    }
                    field(Mobile; Mobile)
                    {
                        Editable = false;
                    }
                    field("E-mail"; "E-mail")
                    {
                        Caption = 'Email';
                        Editable = false;
                    }
                }
                group("8. Contact Info.")
                {
                    Visible = false;
                    field("Vehicle Driven By Type"; "Vehicle Driven By Type")
                    {
                    }
                    field("Vehicle Driven By"; "Vehicle Driven By")
                    {
                    }
                    field("Contact Telephone No."; "Contact Telephone No.")
                    {
                        Caption = 'Telephone No. (Home/Business/Mobile)';
                    }
                    field("Available Time From"; "Available Time From")
                    {
                    }
                    field("Available Time To"; "Available Time To")
                    {
                    }
                }
                group("9. Customer's Request")
                {
                    Visible = false;
                    field(Appointment; Appointment)
                    {
                    }
                    field(Maintenance; Maintenance)
                    {
                        Caption = 'Maintenance';
                    }
                    field("General Repair"; "General Repair")
                    {
                        Caption = 'General Repair (Diagnosis)';
                    }
                    field("B & P"; "B & P")
                    {
                        Caption = 'Body and Paint';
                    }
                    field(Internal; Internal)
                    {
                    }
                    field(Warranty; Warranty)
                    {
                    }
                    field("Customer Waiting"; "Customer Waiting")
                    {
                    }
                    field("Repeat Repair"; "Repeat Repair")
                    {
                    }
                    field("Repeat Repair Reason"; "Repeat Repair Reason")
                    {
                        MultiLine = true;
                        Visible = RepeatRepairVisible;
                    }
                }
            }
            group("Service Details")
            {
                Visible = false;
                group("10. Job Details")
                {
                    field("Job Type2"; "Job Type2")
                    {
                    }
                    field("Job Details"; "Job Details")
                    {
                        MultiLine = true;
                    }
                    field("Operation Code"; "Operation Code")
                    {
                    }
                    field("Operation Code Description"; "Operation Code Description")
                    {
                    }
                    field("Service Location"; "Service Location")
                    {
                    }
                    field("Job Classification"; "Job Classification")
                    {
                    }
                }
                group("11. Time")
                {
                    field("Estimated Job Time"; "Estimated Job Time")
                    {
                    }
                    field("Time Changed"; "Time Changed")
                    {
                    }
                }
                group("12. Cost")
                {
                    field(Estimation; Estimation)
                    {
                    }
                    field("Cost Changed"; "Cost Changed")
                    {
                    }
                }
                group("13. Appointment Offering 1")
                {
                    field("Appointment Offering 1 Date"; "Appointment Offering 1 Date")
                    {
                        Caption = 'Date';
                    }
                    field("Appointment Offering 1 Time"; "Appointment Offering 1 Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("14. Appointment Offering 2")
                {
                    field("Appointment Offering 2 Date"; "Appointment Offering 2 Date")
                    {
                        Caption = 'Date';
                    }
                    field("Appointment Offering 2 Time"; "Appointment Offering 2 Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("15. Appointment")
                {
                    field("Appointment Date"; "Appointment Date")
                    {
                        Caption = 'Date';
                    }
                    field("Appointment Time"; "Appointment Time")
                    {
                        Caption = 'Time';
                    }
                    field("Appointment Staff Name"; "Appointment Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                }
                group("16. Walk-around Check")
                {
                    field("Service Advisor"; "Service Advisor")
                    {
                    }
                    field("Service Advisor's Name"; "Service Advisor's Name")
                    {
                    }
                    field("Odometer At Reception"; "Odometer At Reception")
                    {
                    }
                    field("Fuel Level"; "Fuel Level")
                    {
                    }
                    field(Right; Right)
                    {
                    }
                    field(Left; Left)
                    {
                    }
                    field(Front; Front)
                    {
                    }
                    field(Rear; Rear)
                    {
                    }
                    field(Top; Top)
                    {
                    }
                    field(Memo; Memo)
                    {
                        MultiLine = true;
                    }
                    field("Payment Method"; "Payment Method")
                    {
                    }
                    field("If Other Method"; "If Other Method")
                    {
                    }
                    field("Walk Around Reception Date"; "Walk Around Reception Date")
                    {
                    }
                    field("Walk Around Reception Time"; "Walk Around Reception Time")
                    {
                    }
                    field("Reception Staff Name"; "Reception Staff Name")
                    {
                    }
                    field(Teams; Teams)
                    {
                    }
                }
                group("17. Confirmation")
                {
                    field("Additional Job Confirmation"; "Additional Job Confirmation")
                    {
                    }
                    field(Valuables; Valuables)
                    {
                    }
                    field("Present Estimate w/Explanation"; "Present Estimate w/Explanation")
                    {
                    }
                    field("Car Wash"; "Car Wash")
                    {
                    }
                    field("Replace Parts Keep"; "Replace Parts Keep")
                    {
                    }
                }
                group("18. Courtesy Items")
                {
                    field("Seat Cover"; "Seat Cover")
                    {
                    }
                    field("Floor Mat"; "Floor Mat")
                    {
                    }
                }
            }
            group("Service Items")
            {
            }
            part("Parts and Labour"; 80007)
            {
                SubPageLink = Document No.=FIELD(No.),
                              Type=FILTER(Item);
            }
            group(Workflow)
            {
                field(Stage;Stage)
                {
                }
                field("Actual Delivery Date";"Actual Delivery Date")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Customer Order Form")
            {
                Image = Print;
                Promoted = true;
                PromotedCategory = "Report";

                trigger OnAction()
                begin
                    COFRec.SETRANGE("No.","No.");
                    IF COFRec.FINDFIRST THEN
                      REPORT.RUN(50310,TRUE,TRUE,COFRec);
                end;
            }
            action("Transfer Order")
            {
                Image = Form;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    TransferHeader.SETRANGE("COF No","No.");
                    IF TransferHeader.FINDFIRST THEN
                      PAGE.RUN(5742,TransferHeader)
                     ELSE
                      MESSAGE('There is no transfer order!');
                end;
            }
            action("Requested Vs Received")
            {
                Image = "Report";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    CustOrderLine.SETRANGE("Document No.","No.");
                    IF CustOrderLine.FINDFIRST THEN
                      REPORT.RUN(50159,TRUE,TRUE,CustOrderLine);
                end;
            }
            action("Purchase Requisition")
            {
                Image = ReviewWorksheet;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF NOT CONFIRM(Text001,FALSE) THEN
                      EXIT ELSE
                    CreatePurchaseRequisition;
                end;
            }
            action("Create Sublet")
            {
            }
            action("&Email COF")
            {
                Caption = '&Email COF';
                Image = Email;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    COFRec := Rec;
                    CurrPage.SETSELECTIONFILTER(COFRec);
                    COFRec.EmailRecords(FALSE);
                end;
            }
            action("New Estimate Sheet")
            {
                Image = Print;
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report 50315;

    trigger OnAction()
    begin
        COFRec.SETRANGE("No.", "No.");
        IF COFRec.FINDFIRST THEN
            REPORT.RUNMODAL(50315, TRUE, TRUE, COFRec);
    end;
            }
            action("Raise LPP")
            {
                Image = RegisterPick;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    IF "LPP Created" THEN
                      ERROR('LPP has been raised');

                    CreateLPP;
                    MESSAGE('LPP Raised');
                end;
            }
            action("View LPP")
            {
                Image = Form;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 70205;
                                RunPageLink = TCOF No.=FIELD(No.);
            }
            action("Request for Quote")
            {
                Caption = 'Request for Quote';

                trigger OnAction()
                begin
                    IF "OpexX Created" THEN
                      ERROR('Request for Quote has alread been created, kindly view');

                    CreateOpexX;
                    MESSAGE('Request for Quote created');
                end;
            }
            action("View Request for Quote")
            {
                RunObject = Page 70061;
                                RunPageLink = TCOF No.=FIELD(No.);
            }
            action("Create TransferOrder")
            {
                Image = TransferOrder;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    TESTFIELD("Service Location",'120ISO');
                    CreateTransferOrder;
                    MESSAGE('Transfer Order Created');
                end;
            }
            action("Create Lekki Transfer")
            {
                Image = TransferOrder;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    TESTFIELD("Service Location",'113LEK');
                    CreateTransferOrderLekki;
                    MESSAGE('Transfer Order Created');
                end;
            }
            action("Stock Issue Voucher ")
            {
                RunObject = Report 50631;
            }
            action("Service Order")
            {
                Image = Form;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    ServiceOrder.SETRANGE("Customer Order No.","No.");
                    IF ServiceOrder.FINDFIRST THEN
                      PAGE.RUN(5900,ServiceOrder)
                     ELSE
                      MESSAGE('There is no invoice for this order!');
                end;
            }
            action("Create Service Order")
            {
                Image = Invoice;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                    IF Posted THEN
                      ERROR('Service Order has been created');


                    IF ("Job Classification" = "Job Classification"::Internal) OR ("Job Classification" = "Job Classification"::"PDI/VRI") THEN
                      ERROR('Select Billabe in Job Classification before you can create a Service Invoice');

                    //IF Stage = Stage::"Parts Ordered" THEN
                    //  ERROR('Stage must be Parts Arrived before service Order can be created');

                    CreateServiceInvoice;

                    Posted := TRUE;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Delivered THEN
          CurrPage.EDITABLE := FALSE;

        IF "Repeat Repair" THEN
          RepeatRepairVisible := TRUE
        ELSE
          RepeatRepairVisible := FALSE;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        ERROR('You cannot delete this record');
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Job Type2" := "Job Type2"::"General Repair";
    end;

    trigger OnOpenPage()
    begin
        IF "Repeat Repair" THEN
          RepeatRepairVisible := TRUE
        ELSE
          RepeatRepairVisible := FALSE;


        //IF Posted THEN
        //CurrPage.EDITABLE := FALSE;
    end;

    var
        COFRec: Record "70034";
        Text101: Label 'Action Aborted!';
        Text102: Label 'Do you want to create Store Requisition?';
        Text103: Label 'SIV already exists!';
        COFRec2: Record "70034";
        ServiceOrder: Record "5900";
        SericeItemLine: Record "5901";
        SeviceLine: Record "5902";
        PurchSetup: Record "312";
        USERSETUP: Record "91";
        JIRec: Record "70034";
        CustOrderLine: Record "70036";
        ServiceLine2: Record "5902";
        Text19029910: Label 'Telephone No.';
        Text19025725: Label 'km/mile';
        Text19080001: Label 'km/mile';
        Text19060037: Label 'Time';
        Text19067933: Label 'Appointment Offering-1';
        Text19053469: Label 'Appointment Offering-2';
        Text19027784: Label 'Changed';
        Text19055759: Label 'Name';
        Text19059303: Label 'Description';
        Text19001707: Label 'Job No.';
        Text19033836: Label 'Staff';
        Text19080002: Label 'Name';
        Text19080003: Label 'Name';
        Text19000744: Label 'Date';
        VRI2: Record "50058";
        Text001: Label 'Do you want to create a purchase requisition for unavailable parts?';
        DQ: Record "70035";
        DQ2: Record "70035";
        Text002: Label 'The questionnaire already exist!';
        DQ3: Record "70035";
        TransferHeader: Record "5740";
        SalesSetup: Record "311";
        NoSeriesMgt: Codeunit "396";
        ServCamp: Record "50046";
        Text003: Label 'SSC/SC details are not available.';
        ClockedTime: Duration;
        Clocking: Record "70038";
        BPWSHeader: Record "70046";
        RepeatRepairVisible: Boolean;
        LocalPartPurchase: Record "70018";

    [Scope('Internal')]
    procedure CreatePurchaseRequisition()
    var
        RequisitionLine: Record "246";
        RequisitionLine2: Record "246";
        ReqWrkShtName: Record "245";
        ReqWkshTemp: Record "244";
        NextLine: Integer;
        ReqBatchName: Code[20];
    begin
        IF "COF Origin" = "COF Origin"::VRI THEN BEGIN
          IF VRI2.GET("Vehicle Registration No.") THEN
             VRI2.TESTFIELD("Send to Workshop Aprroval",TRUE);
        END;


        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name",'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines",0);
        IF ReqWrkShtName.FINDSET THEN REPEAT
          ReqWrkShtName."COF No." :='';
          ReqWrkShtName."Veh. Reg. No." := '';
          ReqWrkShtName."Customer No." := '';
          ReqWrkShtName."Customer Name" := '';
          ReqWrkShtName.MODIFY;
          UNTIL ReqWrkShtName.NEXT = 0;

        TESTFIELD("Request Batch Name",'');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name",'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines",0);
        IF NOT ReqWrkShtName.FINDFIRST THEN
          ERROR('You can not create a new Purchase Requisitions unless the Parts Post All Outstanding Requisitions!')
        ELSE BEGIN
          ReqWrkShtName."COF No." := "No.";
          ReqWrkShtName."Customer No." := "Customer No.";
          ReqWrkShtName."Customer Name" := "Customer Name";
          ReqWrkShtName."Veh. Reg. No." := "Vehicle Registration No.";
          ReqWrkShtName."Request Type" :=ReqWrkShtName."Request Type"::Parts;
          ReqWrkShtName.MODIFY;
         END;
          CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
          CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Item);
          CustOrderLine.SETRANGE(CustOrderLine."Stock Status",CustOrderLine."Stock Status"::Insufficient);
          CustOrderLine.SETRANGE(CustOrderLine."PR Raised",FALSE);
          IF CustOrderLine.FINDFIRST THEN REPEAT
            RequisitionLine.INIT;
            RequisitionLine."Worksheet Template Name" := ReqWrkShtName."Worksheet Template Name";
            RequisitionLine."Journal Batch Name" := ReqWrkShtName.Name;
            RequisitionLine."Line No." := CustOrderLine."Line No.";
            RequisitionLine.Type := RequisitionLine.Type::Item;
            RequisitionLine."Location Code" := CustOrderLine."Location Code";
            RequisitionLine.VALIDATE(RequisitionLine."No.",CustOrderLine."No.");
            RequisitionLine.VALIDATE(RequisitionLine.Quantity,CustOrderLine."Quantity Received");
            RequisitionLine.Description := CustOrderLine.Description;
            RequisitionLine."Model Name" := "Model Name";
            RequisitionLine.VALIDATE("COF No.",CustOrderLine."Document No.");
            RequisitionLine."PR Raised" := CustOrderLine."PR Raised";
            RequisitionLine.INSERT;
          UNTIL CustOrderLine.NEXT = 0;
        "Request Batch Name" := ReqWrkShtName.Name;
        MESSAGE('Purchase requests has been successfully created!',ReqWrkShtName.Name);


        CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
        CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Item);
        CustOrderLine.SETRANGE(CustOrderLine."Stock Status",CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised",FALSE);
        IF CustOrderLine.FINDSET THEN REPEAT
          CustOrderLine."PR Raised" := TRUE;
          CustOrderLine.MODIFY;
        UNTIL CustOrderLine.NEXT = 0;
    end;
}

