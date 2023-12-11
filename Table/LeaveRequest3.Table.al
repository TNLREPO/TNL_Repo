table 70009 "Leave Request3"
{

    fields
    {
        field(1; "Request No."; Code[30])
        {

        }
        field(2; "Entry Date"; Date)
        {
            Editable = true;
        }
        field(3; "Request Type"; Option)
        {
            OptionCaption = ',HOD,Manager,Junior staff - Deputy Manager,Branch,HOD1,MD OFFICE,FG';
            OptionMembers = ,HOD,Manager,"Junior staff - Deputy Manager",Branch,HOD1,"MD OFFICE",FG;
        }
        field(4; Requester; Code[50])
        {
            Editable = false;
            TableRelation = "User Setup"."User ID";
        }
        field(5; "Requester Name"; Text[80])
        {
            Editable = false;
        }
        field(6; "User ID"; Code[30])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(7; "Global Dimension 1 code"; Code[30])
        {
            Caption = 'Global Dimention 1 code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(9; Approved; Boolean)
        {

            trigger OnValidate()
            begin
                IF Approved THEN
                    "Approved by" := USERID
                ELSE
                    "Approved by" := '';
            end;
        }
        field(10; "Approved by"; Code[30])
        {
        }
        field(12; "Send for Approval"; Boolean)
        {

            trigger OnValidate()
            begin

            end;
        }
        field(13; "1st Approval"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF "1st Approval" = USERID THEN
                    ERROR('You cannot select yourself as the 1st APPROVER');

                IF UserSetup.GET("1st Approval") THEN
                    "1st Approver" := UserSetup.Name;
            end;
        }
        field(14; "2nd Approval"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("2nd Approval") THEN
                    "2nd Approver" := UserSetup.Name;
            end;
        }
        field(15; "3rd Approval"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("3rd Approval") THEN
                    "3rd Approver" := UserSetup.Name;
            end;
        }
        field(16; "4th Approval"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("4th Approval") THEN
                    "4th  Approver" := UserSetup.Name;
            end;
        }
        field(20; Comment; Text[100])
        {
        }
        field(26; "1st Approver"; Text[50])
        {
        }
        field(27; "1st Approval Status"; Option)
        {
            Caption = '1st Approval Satues';
            OptionCaption = ' ,On hold,Approved,Rejected';
            OptionMembers = " ","On hold",Approved,Rejected;

            trigger OnValidate()
            begin

            end;
        }
        field(28; "1st Approval Time"; DateTime)
        {
        }
        field(29; "1st Approval's Comment"; Boolean)
        {
        }
        field(30; "2nd Approver"; Text[50])
        {
        }
        field(31; "2nd Approval Status"; Option)
        {
            OptionCaption = ' ,On hold,Approved,Rejected';
            OptionMembers = " ","On hold",Approved,Rejected;

            trigger OnValidate()
            begin

            end;
        }
        field(32; "2nd Approval Time"; DateTime)
        {
        }
        field(33; "2nd Approval's Comment"; Boolean)
        {
        }
        field(34; Treated; Boolean)
        {
        }
        field(35; Sender; Text[50])
        {
        }
        field(36; "Sent Time"; DateTime)
        {
        }
        field(50; "Current Pending Person"; Code[50])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(51; "Mail Body"; Text[250])
        {
        }
        field(52; Hours; Duration)
        {
        }
        field(53; Days; Duration)
        {
        }
        field(54; Employee; Code[30])
        {
            TableRelation = Employee."No.";
        }
        field(55; "Final Approval"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("Final Approval") THEN BEGIN
                    "Final Approver" := UserSetup.Name;
                    "Current Pending Person" := '';
                END;
            end;
        }
        field(56; "Final Approver"; Text[50])
        {
        }
        field(57; "3rd Approver"; Text[50])
        {
        }
        field(59; "3rd Approval Status"; Option)
        {
            Caption = '<3rd Approval Satues>';
            OptionCaption = ' ,On hold,Approved,Rejected';
            OptionMembers = " ","On hold",Approved,Rejected;

            trigger OnValidate()
            begin

            end;
        }
        field(60; "3rd  Approval Time"; DateTime)
        {
        }
        field(61; "3rd  Approval's Comment"; Boolean)
        {
        }
        field(62; "4th  Approver"; Text[50])
        {
        }
        field(63; "4th  Approval Status"; Option)
        {
            Caption = '1st Approval Satues';
            OptionCaption = ' ,On hold,Approved,Rejected';
            OptionMembers = " ","On hold",Approved,Rejected;

            trigger OnValidate()
            begin

            end;
        }
        field(64; "4th Approval Time"; DateTime)
        {
        }
        field(65; "4th Approval's Comment"; Boolean)
        {
        }
        field(66; "Actual Start Date"; Date)
        {

            trigger OnValidate()
            begin

            end;
        }
        field(67; "Actual End Date"; Date)
        {
            Editable = true;


        }
        field(68; "Actual Duration"; Integer)
        {

            trigger OnValidate()
            begin



            end;
        }
        field(69; "Leave Period"; Integer)
        {

            trigger OnValidate()
            begin



            end;
        }
        field(70; "Annual Duration"; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(71; "Amount Due"; Decimal)
        {
        }
        field(72; "Amount Paid"; Decimal)
        {
            /*  CalcFormula = Sum("Leave Payment Rev 2"."Amount Paid" WHERE ("Leave Period="FIELD(Leave Period),
                                                                          ""Employee No"."=FIELD(""Employee No".")));
             Editable = false;
             FieldClass = FlowField; */
        }
        field(73; "Business Unit"; Code[10])
        {
            Editable = false;
        }
        field(74; "Global Dimension 2 Code"; Code[30])
        {
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(2, "Global Dimension 2 Code");
                MODIFY;
            end;
        }
        field(75; "Total Leaves Due"; Decimal)
        {
            /* BlankZero = true;
            CalcFormula = Sum("Leave Plan Lines Rev 2"."Annual Duration" WHERE ("Employee No."=FIELD("Employee No".),
                                                                                "Entry Type"=filter('PLAN'),
                                                                                "Leave Period"=FIELD("Leave Period")));
            DecimalPlaces = 0:0;
            Editable = false;
            FieldClass = FlowField; */
        }
        field(76; "Total Compassionate"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD(""Employee No"."),
                                                      LeaveDate=FIELD("Date Filter"),
                                                      "Leave Category"=CONST(COMP),
                                                      "Leave Period="FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(77; "Total Exam"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD(""Employee No"."),
                                                      LeaveDate=FIELD("Date Filter"),
                                                      "Leave Category"=CONST(EXAM),
                                                      "Leave Period="FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(78; "Total Others"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD(""Employee No"."),
                                                      LeaveDate=FIELD("Date Filter"),
                                                      "Leave Category"=CONST(OTHERS),
                                                      "Leave Period="FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(79; "Total Consuming"; Integer)
        {
            /*  BlankZero = true;
             CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD(""Employee No"."),
                                                       LeaveDate=FIELD("Date Filter"),
                                                       Consuming=CONST(Yes),
                                                       "Leave Period="FIELD(Leave Period)));
             Editable = false;
             FieldClass = FlowField; */
        }
        field(80; "Total Annual"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD(""Employee No"."),
                                                      LeaveDate=FIELD("Date Filter"),
                                                      "Leave Category"=CONST(ANNUAL),
                                                      "Leave Period="FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(81; "Total Commuted To Cash"; Integer)
        {
            /*  BlankZero = true;
             CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD(""Employee No"."),
                                                       LeaveDate=FIELD("Date Filter"),
                                                       "Leave Category"=CONST(CASH),
                                                       "Leave Period="FIELD("Period Filter")));
             Editable = false;
             FieldClass = FlowField; */
        }
        field(82; "Start Date1"; Date)
        {


        }
        field(83; "End Date1"; Date)
        {


        }
        field(84; "No. Days1"; Integer)
        {

            trigger OnValidate()
            begin



            end;
        }
        field(85; "Start Date2"; Date)
        {

            trigger OnValidate()
            begin

            end;
        }
        field(86; "End Date2"; Date)
        {

            trigger OnValidate()
            begin


            end;
        }
        field(87; "No. Days2"; Integer)
        {

            trigger OnValidate()
            begin



            end;
        }
        field(88; "Start Date3"; Date)
        {

            trigger OnValidate()
            begin


            end;
        }
        field(89; "End Date3"; Date)
        {

            trigger OnValidate()
            begin


            end;
        }
        field(90; "No. Days3"; Integer)
        {

            trigger OnValidate()
            begin



            end;
        }
        field(91; "Start Date4"; Date)
        {

            trigger OnValidate()
            begin

            end;
        }
        field(92; "End Date4"; Date)
        {

            trigger OnValidate()
            begin

            end;
        }
        field(93; "No. Days4"; Integer)
        {

            trigger OnValidate()
            begin



            end;
        }
        field(94; "Employee No."; Code[30])
        {
            TableRelation = Employee."No.";

            trigger OnValidate()
            begin


            end;
        }
        field(95; "Entry Type"; Option)
        {
            OptionMembers = PLAN,ACTUAL;

            trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');
            end;
        }
        field(96; "Leave Category"; Code[30])
        {
            TableRelation = "Leave Categories".Code;

            trigger OnValidate()
            begin

            end;
        }
        field(97; LeaveDate; Date)
        {
        }
        field(98; "Entry Type Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Leave Roster Summary"."Unit of Measure";
        }
        field(99; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(100; "Period Filter"; Integer)
        {
            FieldClass = FlowFilter;
        }
        field(101; HOD; Boolean)
        {
        }
        field(102; "Send to MD for Approval"; Boolean)
        {
        }
        field(103; "Employment Date"; Date)
        {
            CalcFormula = Lookup(Employee."Employment Date" WHERE("No." = FIELD("Employee No.")));
            FieldClass = FlowField;
        }
        field(105; "MD Leave Approval"; Boolean)
        {
        }
        field(106; Approved2; Boolean)
        {
        }
        field(107; Reject; Boolean)
        {
        }
        field(108; "HOD HR/ADMIN"; Boolean)
        {
        }
        field(109; SKIP; Boolean)
        {
        }
        field(110; SKIP2; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Request No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        ERROR('You can not delete this entry. Contact your System Administrator!');
    end;

    trigger OnInsert()
    begin
        HRSetup.GET;

        IF "Request No." = '' THEN BEGIN
            LevRec.COPYFILTERS(Rec);
            LevRec.SETFILTER(LevRec."Request No.", '<>%1', '');
            LevRec.SETRANGE(LevRec.Reject, FALSE);
            LevRec.SETRANGE(LevRec.Approved2, FALSE);
            LevRec.SETRANGE(LevRec.Requester, USERID);
            IF LevRec.FIND('-') THEN
                ERROR('Created Leave Request No. %1 not used!\New Leave Request cannot be created', LevRec."Request No.");
        END;


        IF "Request No." = '' THEN BEGIN
            HRSetup.GET;
            HRSetup.TESTFIELD(HRSetup."Leave Approval No.");
            NoSeriesMgt.InitSeries(HRSetup."Leave Approval No.", HRSetup."Leave Approval No.", 0D, "Request No.", HRSetup."Leave Approval No.");
        END;

        UserSetup.GET(USERID);
        "Entry Date" := TODAY;
        "Requester Name" := UserSetup.Name;
        Requester := UserSetup."User ID";
    end;

    var

        HRSetup: Record 5218;
        LeaveReg: Record 70008;
        NoSeriesMgt: Codeunit 396;
        UserSetup: Record 91;
        EmplyRec: Record 5200;
        Mail: Codeunit 397;
        ToName: Text[200];
        ToAddresses: Text[200];
        CCName: Text[200];
        BccAddresses: Text[100];
        Attachment: Text[200];
        Opendialog: Boolean;
        Bcc: Text[80];
        subject: Text[200];
        CRLF: Text[2];
        Body: Text[400];
        UserSetup2: Record 91;
        Addressee: Text[100];
        text001: Label 'Leave request    ''%1''  requires your approval';
        text002: Label 'Leave request %1'' has been approved';
        text003: Label 'Leave request  ''%1'' has been rejected';
        text004: Label 'Leave request  ''%1'' is on hold';
        text006: Label 'This document needs your approval.';
        text008: Label 'This document has been approved, generate  Leave Certificate';
        text009: Label 'The same person cannot approve this request.';
        //GenPCode: Codeunit "50004";
        ActualLeaves: Integer;
        ConSumingLeaves: Integer;
        EmpRec: Record 5200;
        DtFilter: Text[30];
        RemLeaves: Integer;
        LCategory: Record 50074;
        CatName: Text[30];
        EmpBasic: Decimal;
        EmpGrpRec: Record 50009;
        EmpLineRec: Record 50008;
        BasicAmount: Decimal;
        EmpGrpCode: Code[10];
        TakenTotal: Integer;
        RemDur: Integer;
        OldRemDur: Integer;
        OldTotal: Integer;
        PGrp: Record 50011;
        EmpDate: Date;
        EmpDay: Integer;
        EmpMth: Integer;
        EmpYr: Integer;
        EmpLeaveYr: Integer;
        DimMgt: Codeunit 408;
        LeavPRec: Record 50075;
        LeavPRec2: Record 50075;
        HumanResSetup: Record 5218;
        SenderName: Text[70];
        CasualDiff: Integer;
        LeaveRequest: Record 70009;
        AnnualDiff: Integer;
        text010: Label 'Actual duration:%1';
        LevRec: Record 70009;
        text011: Label 'Start Date :';
        text012: Label 'End Date :';
        LeaveYear: Integer;
        Text50001: Label 'The employee has an open leave request. New leave request cannot be created.';
        Text032: Label 'Mail sent!';
        //SMTPMail: Codeunit "400";
        SenderAddress: Text[50];
        //EmailBody: Record "99008535";
        BodyTxt: Text;
        //BodyBlob: Record "99008535";
        BodyStream: OutStream;
        SenderInitial: Text;
        SenderEmail: Text[50];
        TempEmailItem: Record 9500 temporary;
        Text013: Label 'Dear';
        Text014: Label 'Kindly approve this leave request.';
        Text015: Label 'Request No : ';
        Text016: Label 'Requester Name :';
        Text017: Label '"Leave Category" :';
        Text018: Label 'Regards';
        Text019: Label 'Please note that your leave request has been rejected.';
        Text020: Label 'Please note that your leave request is on-hold.';



    procedure CheckTotalDuration(Cnt: Integer)
    begin
        /*
        CALCFIELDS("Total Leaves Due", "Total Compassionate", "Total Exam", "Total Others", "Total Consuming", "Total Annual");

        CASE Cnt OF
            1:
                BEGIN
                    OldTotal := xRec."No. Days1" + xRec."No. Days2" + xRec."No. Days3" + xRec."No. Days4";
                    TakenTotal := "No. Days1" + "No. Days2" + "No. Days3" + "No. Days4";
                    RemDur := "Annual Duration" - TakenTotal;
                    OldRemDur := "Annual Duration" - OldTotal;
                    IF ((RemDur < 0) AND (LCategory."Category Type" <> LCategory."Category Type"::Maternity)) THEN
                        ERROR('%1 Have %2 Leave Days Left!!', "Employee No.", OldRemDur);

                END;
            9:
                BEGIN
                    OldTotal := "Total Consuming";
                    TakenTotal := OldTotal + "Actual Duration" - xRec."Actual Duration";

                    RemDur := "Total Leaves Due" - TakenTotal;
                    OldRemDur := "Total Leaves Due" - OldTotal;

                    LCategory.GET("Leave Category");
                    IF ((RemDur < 0) AND IsConsuming("Leave Category") AND
                        (LCategory."Category Type" <> LCategory."Category Type"::Maternity)) THEN
                        ERROR('%1 Have %2 Leave Days Left!!', """Employee No"."", OldRemDur);
                END;
        END;
        */
    end;


    procedure IsConsuming(LCat: Code[10]): Boolean
    begin
        IF LCategory.GET(LCat) THEN
            EXIT(LCategory.Consuming)
        ELSE
            EXIT(FALSE);
    end;

    procedure ValidateShortcutDimCode(FieldNo: Integer; var ShortcutDimCode: Code[20])
    begin
        DimMgt.ValidateDimValueCode(FieldNo, ShortcutDimCode);
        DimMgt.SaveDefaultDim(DATABASE::"Leave Plan Lines Rev 2", "Employee No.", FieldNo, ShortcutDimCode);
        MODIFY;
    end;

    procedure RemainingLeave(): Integer
    begin
        CALCFIELDS("Total Consuming");
        EXIT("Total Leaves Due" - "Total Consuming");

        IF "Leave Period" <> 0 THEN BEGIN
            LeaveYear := DATE2DMY(TODAY, 3);

            LevRec.SETRANGE("Leave Period", "Leave Period");
            IF "Leave Period" <> LeaveYear THEN
                // EXIT(0)
                ERROR('Kindly choose the current year')
            ELSE
                CALCFIELDS("Total Consuming");
            EXIT("Total Leaves Due" - "Total Consuming");
        END;
    end;

    local procedure Register()
    begin
        /*IF Registered THEN ERROR('This leave is already registered!');
        IF (LeaveType = LeaveType::ACTUAL) AND (EmpRec.GET("""Employee No".""))THEN
        BEGIN
          CALCFIELDS("Total Leaves Due","Total Consuming","Total Annual");
          RemLeaves := "Total Leaves Due" - "Total Consuming";
        
          LCategory.GET(""Leave Category"");
          IF (RemLeaves < "Actual Duration") AND (IsConsuming(""Leave Category"") AND
             (LCategory."Category Type"<>LCategory."Category Type"::Maternity))THEN
              ERROR('%1 has %2 Consuming Leaves Remaining',EmpRec.FullName,RemLeaves);
        END;
        
        IF LCategory.GET(""Leave Category"") THEN
          CatName := UPPERCASE(LCategory.Description)
        ELSE
          CatName := '';
        
        ExplodeRec();
        
        IF LeaveRequest.GET(Leave_Request) THEN BEGIN
          LeaveRequest.Treated := TRUE;
          LeaveRequest.MODIFY;
        END;
        */

    end;
}

