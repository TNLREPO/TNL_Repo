page 80046 "Job Instruction Card"
{
    SourceTable = Table70034;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Job Type2"; "Job Type2")
                {
                    Caption = 'Job Type';
                    Editable = false;
                }
                field("No."; "No.")
                {
                    Editable = false;
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
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                    Editable = false;
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
                }
                field("Car Wash"; "Car Wash")
                {
                }
                field("Replace Parts Keep"; "Replace Parts Keep")
                {
                }
                field("Key Assigned No."; "Key Assigned No.")
                {
                }
                field("Stall No."; "Stall No.")
                {
                }
                field("Reception Staff Name"; "Reception Staff Name")
                {
                    Editable = false;
                }
            }
            group("Date and Time Change")
            {
                field("Estimated Completion Date"; "Estimated Completion Date")
                {
                }
                field("Estimated Completion Time"; "Estimated Completion Time")
                {
                }
                field("Delivery Changed Date"; "Delivery Changed Date")
                {
                }
                field("Delivery Changed Time"; "Delivery Changed Time")
                {
                }
                field("Completion Changed Date"; "Completion Changed Date")
                {
                }
                field("Completion Changed Time"; "Completion Changed Time")
                {
                }
            }
            part(Lines; 80012)
            {
                Caption = 'Lines';
                SubPageLink = Document No.=FIELD(No.);
            }
            group("Preparation for Delivery")
            {
                group("Other Findings")
                {
                    field("Other Findings/Advice"; "Other Findings/Advice")
                    {
                        MultiLine = true;
                    }
                }
                group(Memos)
                {
                    field(Memo; Memo)
                    {
                        MultiLine = true;
                    }
                }
                group("Pre-delivery Confirmation")
                {
                    group("1.")
                    {
                        field(Cleanliness; Cleanliness)
                        {
                        }
                        field("Courtesy Items Removal"; "Courtesy Items Removal")
                        {
                        }
                        field("Outer Minor P / Seat P"; "Outer Minor P / Seat P")
                        {
                        }
                        field("Clock Adj / Radio Setting"; "Clock Adj / Radio Setting")
                        {
                        }
                        field("Pre-d C Staff Name"; "Pre-d C Staff Name")
                        {
                            Caption = 'Staff Name';
                        }
                    }
                    group("2.")
                    {
                        field(Cleanliness2; Cleanliness2)
                        {
                            Caption = 'Cleanliness';
                        }
                        field("Courtesy Items Removal2"; "Courtesy Items Removal2")
                        {
                            Caption = 'Courtesy Items Removal';
                        }
                        field("Outer Minor P / Seat P2"; "Outer Minor P / Seat P2")
                        {
                            Caption = 'Outer Minor P / Seat P';
                        }
                        field("Clock Adj / Radio Setting2"; "Clock Adj / Radio Setting2")
                        {
                            Caption = 'Clock Adj / Radio Setting';
                        }
                        field("Pre-d C Confirmed by"; "Pre-d C Confirmed by")
                        {
                            Caption = 'Confirmed By';
                        }
                    }
                }
                group("Job Completion Notification")
                {
                    field(Technician; Technician)
                    {
                    }
                    field("Technician Name"; "Technician Name")
                    {
                    }
                    field("QC Staff Code"; "QC Staff Code")
                    {
                    }
                    field("QC Staff Name"; "QC Staff Name")
                    {
                    }
                    field("QC Result"; "QC Result")
                    {
                    }
                    field("QC Comment"; "QC Comment")
                    {
                        MultiLine = true;
                    }
                    field("Actual Hours Clocked"; "Actual Hours Clocked")
                    {
                    }
                    field("Job CN Staff Name"; "Job CN Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                    field("Job CN Date"; "Job CN Date")
                    {
                        Caption = 'Date';
                    }
                    field("Job CN Time"; "Job CN Time")
                    {
                        Caption = 'Time';
                    }
                }
                group("Job Results Explanation")
                {
                    field("Payment for Estimate"; "Payment for Estimate")
                    {
                    }
                    field("Job Details Explanation"; "Job Details Explanation")
                    {
                    }
                    field("Fee Explanation"; "Fee Explanation")
                    {
                    }
                    field("Results Confirmation w / Cust."; "Results Confirmation w / Cust.")
                    {
                    }
                    field("Walk-around Check"; "Walk-around Check")
                    {
                    }
                    field(Fixed;Fixed)
                    {
                    }
                    field("Level-up"; "Level-up")
                    {
                    }
                    field("No Fixed"; "No Fixed")
                    {
                    }
                    field("P.S.F.U. (Plan)"; "P.S.F.U. (Plan)")
                    {
                    }
                    field("JRE Staff Code"; "JRE Staff Code")
                    {
                        Caption = 'Staff Code';
                    }
                    field("JRE Staff Name"; "JRE Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                }
                group("Customer Contact")
                {
                    field("CC Date"; "CC Date")
                    {
                        Caption = 'Date';
                    }
                    field("CC Time"; "CC Time")
                    {
                        Caption = 'Time';
                    }
                    field("CC Staff Name"; "CC Staff Name")
                    {
                        Caption = 'Staff Name';
                    }
                }
                group(PSFU)
                {
                    field("P.S.F.U. (Plan) Date"; "P.S.F.U. (Plan) Date")
                    {
                    }
                    field("P.S.F.U. (Plan) Time"; "P.S.F.U. (Plan) Time")
                    {
                    }
                    field("P.S.F.U Other"; "P.S.F.U Other")
                    {
                    }
                    field("P.S.F.U. (Actual) Date"; "P.S.F.U. (Actual) Date")
                    {
                    }
                    field("P.S.F.U. (Actual) Time"; "P.S.F.U. (Actual) Time")
                    {
                    }
                    field("P.S.F.U. Staff Name"; "P.S.F.U. Staff Name")
                    {
                    }
                    field("P.S.F.U. Confirmed by"; "P.S.F.U. Confirmed by")
                    {
                    }
                }
                group("PSFU Contact")
                {
                    field("Contact Telephone"; "Contact Telephone")
                    {
                        Caption = 'Telephone';
                    }
                    field("CT Home"; "CT Home")
                    {
                        Caption = 'Home';
                    }
                    field("CT Mobile"; "CT Mobile")
                    {
                        Caption = 'Mobile';
                    }
                    field("CT Business"; "CT Business")
                    {
                        Caption = 'Business';
                    }
                    field("JI E-mail"; "JI E-mail")
                    {
                        Caption = 'Email';
                    }
                    field("JI EMail2"; "JI EMail2")
                    {
                        Caption = 'Email';
                    }
                    field("JI Other"; "JI Other")
                    {
                        Caption = 'Other';
                    }
                    field("JI Other II"; "JI Other II")
                    {
                        Caption = 'Other';
                    }
                }
                group(Delivery)
                {
                    field("Delivery Customer"; "Delivery Customer")
                    {
                    }
                    field("Delivery Staff Name"; "Delivery Staff Name")
                    {
                    }
                    field("Next Operation Code"; "Next Operation Code")
                    {
                    }
                    field(Delivered; Delivered)
                    {
                        Caption = 'Delivered';

                        trigger OnValidate()
                        begin
                            CurrPage.CLOSE;
                        end;
                    }
                    field("Date Delivered"; "Date Delivered")
                    {
                        Caption = 'Date';
                    }
                    field("Time Delivered"; "Time Delivered")
                    {
                        Caption = 'Time';
                    }
                }
            }
            group(Workflow)
            {
                field(Stage; Stage)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Job Clocking")
            {
                Image = Timesheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Page 80013;
                RunPageLink = Job No.=FIELD(No.);
            }
            action("Update Actual Clocked Hours")
            {
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    ClockedHours := 0;
                    Clocking.SETCURRENTKEY("Job No.");
                    Clocking.SETRANGE("Job No.","No.");
                    IF Clocking.FINDFIRST THEN BEGIN
                      REPEAT
                        ClockedHours := ClockedHours + Clocking."Clocked Time";
                      UNTIL Clocking.NEXT = 0;
                    END;

                    "Actual Hours Clocked" := ROUND(ClockedHours/3600000);
                    MODIFY;
                end;
            }
            action("Print Job Instruction")
            {
                Caption = 'Print Job Instruction';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    COFRec.SETRANGE("No.","No.");
                    IF COFRec.FINDFIRST THEN
                      REPORT.RUN(50308,TRUE,TRUE,COFRec);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Delivered = TRUE THEN
        CurrPage.EDITABLE := FALSE;
    end;

    trigger OnOpenPage()
    begin
        IF Delivered = TRUE THEN
        CurrPage.EDITABLE := FALSE;
    end;

    var
        COFRec: Record "70034";
        ServiceOrder: Record "5900";
        SericeItemLine: Record "5901";
        ServiceLine: Record "5902";
        PurchSetup: Record "312";
        USERSETUP: Record "91";
        JIRec: Record "70034";
        CustOrderLine: Record "70036";
        CustOrderLine2: Record "70036";
        ServiceLine2: Record "5902";
        CustOrderTable: Record "70034";
        PurchOrderHeader: Record "38";
        PurchOrderLine: Record "39";
        NextLineNo: Integer;
        NoSeriesMgt: Record "308";
        VRI2: Record "50058";
        ItemRec: Record "27";
        COFRec2: Record "70034";
        VRIRec: Record "50058";
        COFLine: Record "70036";
        Clocking: Record "70038";
        ClockedHours: Duration;

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
        //CREATED BY SEGUNIO
        //FOR TRANSFER OF UNAVAILABLE PARTS TO THE PURCHASE REQUISITION SHEET

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
            RequisitionLine."Customer Class" := CustOrderLine."Customer Class";
            RequisitionLine."Line No." := CustOrderLine."Line No.";
            RequisitionLine.Type := RequisitionLine.Type::Item;
            RequisitionLine."Location Code" := CustOrderLine."Location Code";
            RequisitionLine.VALIDATE(RequisitionLine."No.",CustOrderLine."No.");
            RequisitionLine.VALIDATE(RequisitionLine.Quantity,CustOrderLine."Quantity Received");
            RequisitionLine.Description := CustOrderLine.Description;
            RequisitionLine."Model Name" := "Model Name";
            RequisitionLine.VALIDATE("COF No.",CustOrderLine."Document No.");
            RequisitionLine."PR Raised" := CustOrderLine."PR Raised";
            RequisitionLine."Starting Date" := TODAY;
            RequisitionLine."Starting Time" := TIME;
            RequisitionLine.INSERT;
          UNTIL CustOrderLine.NEXT = 0;
        "Request Batch Name" := ReqWrkShtName.Name;
        //CurrForm.UPDATE;
        MESSAGE('Purchase Requests successfully created',ReqWrkShtName.Name);


        CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
        CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Item);
        CustOrderLine.SETRANGE(CustOrderLine."Stock Status",CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised",FALSE);
        IF CustOrderLine.FINDSET THEN REPEAT
          CustOrderLine."PR Raised" := TRUE;
          CustOrderLine.MODIFY;
        UNTIL CustOrderLine.NEXT = 0;
    end;

    [Scope('Internal')]
    procedure CreatEstimateRequestion()
    var
        RequisitionLine: Record "246";
        RequisitionLine2: Record "246";
        ReqWrkShtName: Record "245";
        ReqWkshTemp: Record "244";
        NextLine: Integer;
        ReqBatchName: Code[20];
    begin
        //CREATED BY SEGUNIO
        //FOR TRANSFER OF UNAVAILABLE PARTS TO THE PURCHASE REQUISITION SHEET

        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name",'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines",0);
        IF ReqWrkShtName.FINDSET THEN REPEAT
          ReqWrkShtName."COF No." :='';
          ReqWrkShtName."Veh. Reg. No." := '';
          ReqWrkShtName."Customer No." := '';
          ReqWrkShtName."Customer Name" := '';
          ReqWrkShtName."Request Type" :=ReqWrkShtName."Request Type"::Estimate;
          ReqWrkShtName.MODIFY;
          UNTIL ReqWrkShtName.NEXT = 0;

        TESTFIELD("Est. Req. Batch Name",'');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name",'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines",0);
        IF NOT ReqWrkShtName.FINDFIRST THEN
          ERROR('You can not create a new Purchase Requisitions unless the Parts Post All Outstanding Requisitions!')
        ELSE BEGIN
          ReqWrkShtName."COF No." := "No.";
          ReqWrkShtName."Customer No." := "Customer No.";
          ReqWrkShtName."Customer Name" := "Customer Name";
          ReqWrkShtName."Veh. Reg. No." := "Vehicle Registration No.";
          ReqWrkShtName.MODIFY;
         END;
          CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
          CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Item);
          //CustOrderLine.SETRANGE(CustOrderLine."Stock Status",CustOrderLine."Stock Status"::Insufficient);
          CustOrderLine.SETRANGE(CustOrderLine."PR Raised",FALSE);
          IF CustOrderLine.FINDSET THEN REPEAT
            RequisitionLine.INIT;
            RequisitionLine."Worksheet Template Name" := ReqWrkShtName."Worksheet Template Name";
            RequisitionLine."Journal Batch Name" := ReqWrkShtName.Name;
            RequisitionLine."Customer Class" := CustOrderLine."Customer Class";
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
        "Est. Req. Batch Name" := ReqWrkShtName.Name;
        //CurrForm.UPDATE;
        MESSAGE('Purchase Requests successfully created',ReqWrkShtName.Name);


        CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
        CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Item);
        CustOrderLine.SETRANGE(CustOrderLine."Stock Status",CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised",FALSE);
        IF CustOrderLine.FINDSET THEN REPEAT
          CustOrderLine."PR Raised" := TRUE;
          CustOrderLine.MODIFY;
        UNTIL CustOrderLine.NEXT = 0;
    end;

    [Scope('Internal')]
    procedure AddOperations()
    var
        ServiceLine: Record "5902";
        ServItemLine: Record "5901";
        ServiceRec: Record "5900";
    begin

        CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
        CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Resource);
        CustOrderLine.SETRANGE(CustOrderLine."On Part Order",FALSE);
        IF CustOrderLine.FIND('-') THEN REPEAT
          CustOrderLine."On Part Order" := TRUE;
          CustOrderLine.MODIFY;
        UNTIL CustOrderLine.NEXT = 0;

        CustOrderLine.SETRANGE(CustOrderLine."Document No.","No.");
        CustOrderLine.SETRANGE(CustOrderLine.Type,CustOrderLine.Type::Cost);
        CustOrderLine.SETRANGE(CustOrderLine."On Part Order",FALSE);
        IF CustOrderLine.FIND('-') THEN REPEAT
          CustOrderLine."On Part Order" := TRUE;
          CustOrderLine.MODIFY;
        UNTIL CustOrderLine.NEXT = 0;
    end;
}

