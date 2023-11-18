page 70089 "Job Instruction Card."
{
    SourceTable = Table50119;

    layout
    {
        area(content)
        {
            group(General)
            {
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
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Model No"; "Model No")
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
                    Caption = 'Home';
                }
                field("Contact Business"; "Contact Business")
                {
                    Caption = 'Business';
                }
                field("E-mail"; "E-mail")
                {
                    Caption = 'E-mail';
                }
                field("Additional Job Confirmation"; "Additional Job Confirmation")
                {
                }
                field("Service Order No."; "Service Order No.")
                {
                }
                field("Request Batch Name"; "Request Batch Name")
                {
                }
                field("Est. Req. Batch Name"; "Est. Req. Batch Name")
                {
                }
            }
            part("Job Instruction Line"; 50333)
            {
                Caption = 'Job Instruction Line';
                SubPageLink = Customer Order Form No.=FIELD(Customer Order Form No.);
            }
            group("Job Start")
            {
                Caption = 'Job Start';
                field(Technician; Technician)
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
                field("Job Start Date"; "Job Start Date")
                {
                }
                field("Job Start Time"; "Job Start Time")
                {
                }
                field("Estimated Completion Date"; "Estimated Completion Date")
                {
                }
                field("Estimated Completion Time"; "Estimated Completion Time")
                {
                }
                field("JC Date"; "JC Date")
                {
                    Caption = 'Job Completion Date';
                }
                field("JC Time"; "JC Time")
                {
                    Caption = 'Job Completion Time';
                }
            }
            group("Preparation for Delivery")
            {
                Caption = 'Preparation for Delivery';
                field("QC Staff"; "QC Staff")
                {
                }
                field("Car Wash"; "Car Wash")
                {
                }
                grid()
                {
                    GridLayout = Rows;
                    group()
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
                    }
                    group()
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
                    }
                }
                field("Actual Hours Clocked"; "Actual Hours Clocked")
                {
                }
                field("Other Findings/Advice"; "Other Findings/Advice")
                {
                }
                field(Memo; Memo)
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
            }
            group("Job Stage")
            {
                Caption = 'Job Stage';
                field("Appt Confirmed"; "Appt Confirmed")
                {
                }
                field("For Part Order"; "For Part Order")
                {
                }
                field("For Part Arrival"; "For Part Arrival")
                {
                }
                field("For Production"; "For Production")
                {
                }
                field("For Invoice"; "For Invoice")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Order Parts")
            {
                Caption = 'Order Parts';
                Image = CreateMovement;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    COFRec.GET("Customer Order Form No.");
                    IF NOT CONFIRM('Are you sure you want to reserve these parts for service?') THEN
                        MESSAGE('Material request is cancelled')
                    ELSE BEGIN
                        GenService;
                        COFRec."Service Order No." := ServiceOrder."No.";
                        MESSAGE('Material Request sent successfully');
                        MESSAGE('Service Order %1 successfully created!', ServiceOrder."No.");
                    END;
                end;
            }
            action("Create Part Requisition")
            {
                Caption = 'Create Part Requisition';
                Image = CreateMovement;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    CreatePurchaseRequisition;
                end;
            }
            action("Get Estimate Info")
            {
                Caption = 'Get Estimate Info';
                Image = CreateMovement;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    CreatEstimateRequestion;
                end;
            }
            action("Add Parts to Part Order")
            {
                Caption = 'Add Parts to Part Order';
                Image = CreateMovement;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    ServiceOrder.SETRANGE(ServiceOrder."No.", "Customer Order Form No.");
                    IF ServiceOrder.FINDFIRST THEN BEGIN
                        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
                        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Item);
                        CustOrderLine.SETRANGE(CustOrderLine."Additional Jobs", TRUE);
                        CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
                        IF CustOrderLine.FINDFIRST THEN BEGIN
                            REPEAT
                                ServiceLine.INIT;
                                ServiceLine."Document Type" := ServiceLine."Document Type"::Order;
                                ServiceLine."Document No." := "Customer Order Form No.";
                                ServiceLine."Line No." := CustOrderLine."Line No.";
                                ServiceLine.Type := ServiceLine.Type::Item;
                                ServiceLine.VALIDATE(ServiceLine."No.", CustOrderLine."No.");
                                ServiceLine.VALIDATE(ServiceLine."Location Code", CustOrderLine."Location Code");
                                ServiceLine."Variant Code" := CustOrderLine.Variant;
                                ServiceLine.VALIDATE(ServiceLine.Quantity, CustOrderLine.Quantity);
                                ServiceLine."Service Item No." := "Vehicle Registration No.";
                                ServiceLine."Model Description" := CustOrderLine."Model Description";
                                ServiceLine."Service Item Line No." := 10000;

                                ServiceLine."PR Raised" := CustOrderLine."PR Raised";
                                ServiceLine.INSERT;
                            UNTIL CustOrderLine.NEXT = 0;
                            MESSAGE('Additional Materials Transferred');
                        END
                        ELSE
                            MESSAGE('All Parts are already on Parts Order!');
                    END;


                    CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
                    CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Item);
                    CustOrderLine.SETRANGE(CustOrderLine."Additional Jobs", TRUE);
                    CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
                    IF CustOrderLine.FINDFIRST THEN
                        REPEAT
                            CustOrderLine."On Part Order" := TRUE;
                            CustOrderLine.MODIFY;
                        UNTIL CustOrderLine.NEXT = 0;
                end;
            }
            action("Update Additional Labour")
            {
                Caption = 'Update Additional Labour';
                Image = CreateMovement;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    ServiceOrder.SETRANGE(ServiceOrder."No.", "Customer Order Form No.");
                    IF ServiceOrder.FIND('-') THEN BEGIN
                        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
                        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Labour);
                        CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
                        IF CustOrderLine.FIND('-') THEN BEGIN
                            REPEAT
                                ServiceLine.INIT;
                                ServiceLine."Document Type" := ServiceLine."Document Type"::Order;
                                ServiceLine."Document No." := "Customer Order Form No.";
                                ServiceLine."Line No." := CustOrderLine."Line No.";
                                ServiceLine."Service Item No." := "Vehicle Registration No.";
                                ServiceLine."Model Description" := CustOrderLine."Model Description";
                                ServiceLine."Service Item Line No." := 10000;
                                ServiceLine.Type := ServiceLine.Type::Cost;
                                IF CustOrderLine."No." <> '' THEN
                                    ServiceLine.VALIDATE(ServiceLine."No.", CustOrderLine."No.");
                                ServiceLine.VALIDATE(ServiceLine."Location Code", CustOrderLine."Location Code");
                                ServiceLine."Variant Code" := CustOrderLine.Variant;
                                IF CustOrderLine.Quantity <> 0 THEN
                                    ServiceLine.VALIDATE(ServiceLine.Quantity, CustOrderLine.Quantity);
                                ServiceLine.Description := CustOrderLine.Description;
                                ServiceLine."Model Description" := CustOrderLine."Model Description";
                                ServiceLine.INSERT;
                            UNTIL CustOrderLine.NEXT = 0;
                            MESSAGE('Sundries and Labour Transferred');
                        END
                        ELSE
                            MESSAGE('Labours are already on Parts Order!');
                    END;


                    CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
                    CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Labour);
                    CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
                    IF CustOrderLine.FIND('-') THEN
                        REPEAT
                            CustOrderLine."On Part Order" := TRUE;
                            CustOrderLine.MODIFY;
                        UNTIL CustOrderLine.NEXT = 0;

                    ServiceOrder.SETRANGE(ServiceOrder."No.", "Customer Order Form No.");
                    IF ServiceOrder.FIND('-') THEN BEGIN
                        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
                        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::"Sundry Spares");
                        CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
                        IF CustOrderLine.FIND('-') THEN BEGIN
                            REPEAT
                                ServiceLine.INIT;
                                ServiceLine."Document Type" := ServiceLine."Document Type"::Order;
                                ServiceLine."Document No." := "Customer Order Form No.";
                                ServiceLine."Line No." := CustOrderLine."Line No.";
                                ServiceLine."Service Item No." := "Vehicle Registration No.";
                                ServiceLine."Model Description" := CustOrderLine."Model Description";
                                ServiceLine."Service Item Line No." := 10000;
                                ServiceLine.Type := ServiceLine.Type::Cost;
                                IF CustOrderLine."No." <> '' THEN
                                    ServiceLine.VALIDATE(ServiceLine."No.", CustOrderLine."No.");
                                ServiceLine.VALIDATE(ServiceLine."Location Code", CustOrderLine."Location Code");
                                ServiceLine."Variant Code" := CustOrderLine.Variant;
                                IF CustOrderLine.Quantity <> 0 THEN
                                    ServiceLine.VALIDATE(ServiceLine.Quantity, CustOrderLine.Quantity);
                                ServiceLine.Description := CustOrderLine.Description;
                                ServiceLine."Model Description" := CustOrderLine."Model Description";
                                ServiceLine.INSERT;
                            UNTIL CustOrderLine.NEXT = 0;
                            MESSAGE('Sundries and Labour Transferred');
                        END
                        ELSE
                            MESSAGE('Labours are already on Parts Order!');
                    END;


                    CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
                    CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::"Sundry Spares");
                    CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
                    IF CustOrderLine.FIND('-') THEN
                        REPEAT
                            CustOrderLine."On Part Order" := TRUE;
                            CustOrderLine.MODIFY;
                        UNTIL CustOrderLine.NEXT = 0;
                end;
            }
            action(" Add Markup")
            {
                Caption = ' Add Markup';
                Image = Allocate;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    COFLine.SETRANGE(COFLine."Customer Order Form No.", "Customer Order Form No.");
                    IF COFLine.FINDFIRST THEN BEGIN
                        REPEAT
                            IF ItemRec.GET(COFLine."No.") THEN
                                IF (ItemRec."Inventory Posting Group" = 'N_PARTCONS') OR
                                (ItemRec."Inventory Posting Group" = 'N_PARTS') THEN BEGIN
                                    COFLine.VALIDATE(COFLine."No.");
                                    COFLine.VALIDATE("Unit Price", 1.6 * COFLine."Unit Cost");
                                    COFLine.MODIFY;
                                END;
                        UNTIL COFLine.NEXT = 0;
                    END;

                    COFLine.SETRANGE(COFLine."Customer Order Form No.", "Customer Order Form No.");
                    IF COFLine.FINDFIRST THEN BEGIN
                        REPEAT
                            IF COFLine."No." = 'SUBLET' THEN BEGIN
                                COFLine.VALIDATE("Unit Price", 1.25 * COFLine."Unit Cost");
                                COFLine.MODIFY;
                            END;
                        UNTIL COFLine.NEXT = 0;
                    END;

                    MESSAGE('Price has been updated!');
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

                    //JIRec.SETRANGE(JIRec."No.","Customer Order Form No.");
                    //IF JIRec.FIND('-') THEN
                    //REPORT.RUNMODAL(50312,TRUE,TRUE,JIRec);


                    JIRec.SETRANGE(JIRec."Customer Order Form No.", "Customer Order Form No.");
                    IF JIRec.FIND('-') THEN
                        REPORT.RUNMODAL(50312, TRUE, TRUE, JIRec);
                end;
            }
            action("Print Estimate II")
            {
                Caption = 'Print Estimate II';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    //JIRec.SETRANGE(JIRec."No.","Customer Order Form No.");
                    //IF JIRec.FIND('-') THEN
                    //REPORT.RUNMODAL(50403,TRUE,TRUE,JIRec);


                    JIRec.SETRANGE(JIRec."Customer Order Form No.", "Customer Order Form No.");
                    IF JIRec.FIND('-') THEN
                        REPORT.RUNMODAL(50403, TRUE, TRUE, JIRec);
                end;
            }
            action("Print Estimate 2")
            {
                Caption = 'Print Estimate 2';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    JIRec.SETRANGE(JIRec."Customer Order Form No.", "Customer Order Form No.");
                    IF JIRec.FIND('-') THEN
                        REPORT.RUNMODAL(50375, TRUE, TRUE, JIRec);
                end;
            }
            action("Print Invoice")
            {
                Caption = 'Print Invoice';
                Image = print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    IF VRIRec.GET("Vehicle Registration No.") THEN
                        IF VRIRec."Claim No." = '' THEN
                            IF "Customer No." = '940000' THEN
                                ERROR('There is no claim number!');

                    JIRec.SETRANGE(JIRec."Customer Order Form No.", "Customer Order Form No.");
                    IF JIRec.FIND('-') THEN
                        REPORT.RUNMODAL(50404, TRUE, TRUE, JIRec);
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

    [Scope('Internal')]
    procedure CreatePurchaseRequisition()
    var
        RequisitionLine: Record 246;
        RequisitionLine2: Record 246;
        ReqWrkShtName: Record 245;
        ReqWkshTemp: Record 244;
        NextLine: Integer;
        ReqBatchName: Code[20];
    begin
        //CREATED BY SEGUNIO
        //FOR TRANSFER OF UNAVAILABLE PARTS TO THE PURCHASE REQUISITION SHEET

        IF "COF Origin" = "COF Origin"::VRI THEN BEGIN
            IF VRI2.GET("Vehicle Registration No.") THEN
                VRI2.TESTFIELD("Send to Workshop Aprroval", TRUE);
        END;

        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name", 'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines", 0);
        IF ReqWrkShtName.FINDSET THEN
            REPEAT
                ReqWrkShtName."COF No." := '';
                ReqWrkShtName."Veh. Reg. No." := '';
                ReqWrkShtName."Customer No." := '';
                ReqWrkShtName."Customer Name" := '';
                ReqWrkShtName.MODIFY;
            UNTIL ReqWrkShtName.NEXT = 0;

        TESTFIELD("Request Batch Name", '');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name", 'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines", 0);
        IF NOT ReqWrkShtName.FINDFIRST THEN
            ERROR('You can not create a new Purchase Requisitions unless the Parts Post All Outstanding Requisitions!')
        ELSE BEGIN
            ReqWrkShtName."COF No." := "Customer Order Form No.";
            ReqWrkShtName."Customer No." := "Customer No.";
            ReqWrkShtName."Customer Name" := "Customer Name";
            ReqWrkShtName."Veh. Reg. No." := "Vehicle Registration No.";
            ReqWrkShtName."Request Type" := ReqWrkShtName."Request Type"::Parts;
            ReqWrkShtName.MODIFY;
        END;
        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Item);
        CustOrderLine.SETRANGE(CustOrderLine."Stock Status", CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised", FALSE);
        IF CustOrderLine.FINDFIRST THEN
            REPEAT
                RequisitionLine.INIT;
                RequisitionLine."Worksheet Template Name" := ReqWrkShtName."Worksheet Template Name";
                RequisitionLine."Journal Batch Name" := ReqWrkShtName.Name;
                RequisitionLine."Customer Class" := CustOrderLine."Customer Class";
                RequisitionLine."Line No." := CustOrderLine."Line No.";
                RequisitionLine.Type := RequisitionLine.Type::Item;
                RequisitionLine."Location Code" := CustOrderLine."Location Code";
                RequisitionLine.VALIDATE(RequisitionLine."No.", CustOrderLine."No.");
                RequisitionLine.VALIDATE(RequisitionLine.Quantity, CustOrderLine.Quantity);
                RequisitionLine.Description := CustOrderLine.Description;
                RequisitionLine."Model Name" := "Model Name";
                RequisitionLine.VALIDATE("COF No.", CustOrderLine."Customer Order Form No.");
                RequisitionLine."PR Raised" := CustOrderLine."PR Raised";
                RequisitionLine."Starting Date" := TODAY;
                RequisitionLine."Starting Time" := TIME;
                RequisitionLine.INSERT;
            UNTIL CustOrderLine.NEXT = 0;
        "Request Batch Name" := ReqWrkShtName.Name;
        //CurrForm.UPDATE;
        MESSAGE('Purchase Requests successfully created', ReqWrkShtName.Name);


        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Item);
        CustOrderLine.SETRANGE(CustOrderLine."Stock Status", CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised", FALSE);
        IF CustOrderLine.FINDSET THEN
            REPEAT
                CustOrderLine."PR Raised" := TRUE;
                CustOrderLine.MODIFY;
            UNTIL CustOrderLine.NEXT = 0;
    end;

    [Scope('Internal')]
    procedure CreatEstimateRequestion()
    var
        RequisitionLine: Record 246;
        RequisitionLine2: Record 246;
        ReqWrkShtName: Record 245;
        ReqWkshTemp: Record 244;
        NextLine: Integer;
        ReqBatchName: Code[20];
    begin
        //CREATED BY SEGUNIO
        //FOR TRANSFER OF UNAVAILABLE PARTS TO THE PURCHASE REQUISITION SHEET

        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name", 'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines", 0);
        IF ReqWrkShtName.FINDSET THEN
            REPEAT
                ReqWrkShtName."COF No." := '';
                ReqWrkShtName."Veh. Reg. No." := '';
                ReqWrkShtName."Customer No." := '';
                ReqWrkShtName."Customer Name" := '';
                ReqWrkShtName."Request Type" := ReqWrkShtName."Request Type"::Estimate;
                ReqWrkShtName.MODIFY;
            UNTIL ReqWrkShtName.NEXT = 0;

        TESTFIELD("Est. Req. Batch Name", '');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."Worksheet Template Name", 'REQ.');
        ReqWrkShtName.SETRANGE(ReqWrkShtName."No. Of Lines", 0);
        IF NOT ReqWrkShtName.FINDFIRST THEN
            ERROR('You can not create a new Purchase Requisitions unless the Parts Post All Outstanding Requisitions!')
        ELSE BEGIN
            ReqWrkShtName."COF No." := "Customer Order Form No.";
            ReqWrkShtName."Customer No." := "Customer No.";
            ReqWrkShtName."Customer Name" := "Customer Name";
            ReqWrkShtName."Veh. Reg. No." := "Vehicle Registration No.";
            ReqWrkShtName.MODIFY;
        END;
        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Item);
        //CustOrderLine.SETRANGE(CustOrderLine."Stock Status",CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised", FALSE);
        IF CustOrderLine.FINDSET THEN
            REPEAT
                RequisitionLine.INIT;
                RequisitionLine."Worksheet Template Name" := ReqWrkShtName."Worksheet Template Name";
                RequisitionLine."Journal Batch Name" := ReqWrkShtName.Name;
                RequisitionLine."Customer Class" := CustOrderLine."Customer Class";
                RequisitionLine."Line No." := CustOrderLine."Line No.";
                RequisitionLine.Type := RequisitionLine.Type::Item;
                RequisitionLine."Location Code" := CustOrderLine."Location Code";
                RequisitionLine.VALIDATE(RequisitionLine."No.", CustOrderLine."No.");
                RequisitionLine.VALIDATE(RequisitionLine.Quantity, CustOrderLine.Quantity);
                RequisitionLine.Description := CustOrderLine.Description;
                RequisitionLine."Model Name" := "Model Name";
                RequisitionLine.VALIDATE("COF No.", CustOrderLine."Customer Order Form No.");
                RequisitionLine."PR Raised" := CustOrderLine."PR Raised";
                RequisitionLine.INSERT;
            UNTIL CustOrderLine.NEXT = 0;
        "Est. Req. Batch Name" := ReqWrkShtName.Name;
        //CurrForm.UPDATE;
        MESSAGE('Purchase Requests successfully created', ReqWrkShtName.Name);


        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Item);
        CustOrderLine.SETRANGE(CustOrderLine."Stock Status", CustOrderLine."Stock Status"::Insufficient);
        CustOrderLine.SETRANGE(CustOrderLine."PR Raised", FALSE);
        IF CustOrderLine.FINDSET THEN
            REPEAT
                CustOrderLine."PR Raised" := TRUE;
                CustOrderLine.MODIFY;
            UNTIL CustOrderLine.NEXT = 0;
    end;

    [Scope('Internal')]
    procedure AddOperations()
    var
        ServiceLine: Record 5902;
        ServItemLine: Record 5901;
        ServiceRec: Record 5900;
    begin
        ServiceOrder.SETRANGE(ServiceOrder."No.", "Customer Order Form No.");
        IF ServiceOrder.FIND('-') THEN BEGIN
            CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
            CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Labour);
            CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
            IF CustOrderLine.FIND('-') THEN BEGIN
                REPEAT
                    ServiceLine.INIT;
                    ServiceLine."Document Type" := ServiceLine."Document Type"::Order;
                    ServiceLine."Document No." := "Customer Order Form No.";
                    ServiceLine."Customer Class" := CustOrderLine."Customer Class";
                    ServiceLine."Line No." := CustOrderLine."Line No.";
                    ServiceLine."Service Item No." := "Vehicle Registration No.";
                    ServiceLine.Type := ServiceLine.Type::Cost;
                    ServiceLine."Model Description" := CustOrderLine."Model Description";
                    IF CustOrderLine."No." <> '' THEN
                        ServiceLine.VALIDATE(ServiceLine."No.", CustOrderLine."No.");
                    ServiceLine.VALIDATE(ServiceLine."Location Code", CustOrderLine."Location Code");
                    ServiceLine."Variant Code" := CustOrderLine.Variant;
                    IF CustOrderLine.Quantity <> 0 THEN
                        ServiceLine.VALIDATE(ServiceLine.Quantity, CustOrderLine.Quantity);
                    ServiceLine.Description := CustOrderLine.Description;
                    ServiceLine.INSERT;
                UNTIL CustOrderLine.NEXT = 0;
                MESSAGE('Sundries and Labour Transferred');
            END
            ELSE
                MESSAGE('Labours are already on Parts Order!');
        END;

        ServiceOrder.SETRANGE(ServiceOrder."No.", "Customer Order Form No.");
        IF ServiceOrder.FIND('-') THEN BEGIN
            CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
            CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::"Sundry Spares");
            CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
            IF CustOrderLine.FIND('-') THEN BEGIN
                REPEAT
                    ServiceLine.INIT;
                    ServiceLine."Document Type" := ServiceLine."Document Type"::Order;
                    ServiceLine."Document No." := "Customer Order Form No.";
                    ServiceLine."Customer Class" := CustOrderLine."Customer Class";
                    ServiceLine."Line No." := CustOrderLine."Line No.";
                    ServiceLine."Service Item No." := "Vehicle Registration No.";
                    ServiceLine.Type := ServiceLine.Type::Cost;
                    ServiceLine."Model Description" := CustOrderLine."Model Description";
                    IF CustOrderLine."No." <> '' THEN
                        ServiceLine.VALIDATE(ServiceLine."No.", CustOrderLine."No.");
                    ServiceLine.VALIDATE(ServiceLine."Location Code", CustOrderLine."Location Code");
                    ServiceLine."Variant Code" := CustOrderLine.Variant;
                    IF CustOrderLine.Quantity <> 0 THEN
                        ServiceLine.VALIDATE(ServiceLine.Quantity, CustOrderLine.Quantity);
                    ServiceLine.Description := CustOrderLine.Description;
                    ServiceLine.INSERT;
                UNTIL CustOrderLine.NEXT = 0;
                MESSAGE('Sundries and Labour Transferred');
            END
            ELSE
                MESSAGE('Labours are already on Parts Order!');
        END;

        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::Labour);
        CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
        IF CustOrderLine.FIND('-') THEN
            REPEAT
                CustOrderLine."On Part Order" := TRUE;
                CustOrderLine.MODIFY;
            UNTIL CustOrderLine.NEXT = 0;

        CustOrderLine.SETRANGE(CustOrderLine."Customer Order Form No.", "Customer Order Form No.");
        CustOrderLine.SETRANGE(CustOrderLine."Line Type", CustOrderLine."Line Type"::"Sundry Spares");
        CustOrderLine.SETRANGE(CustOrderLine."On Part Order", FALSE);
        IF CustOrderLine.FIND('-') THEN
            REPEAT
                CustOrderLine."On Part Order" := TRUE;
                CustOrderLine.MODIFY;
            UNTIL CustOrderLine.NEXT = 0;
    end;
}

