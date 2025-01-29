tableextension 50010 "Sales Header Ext" extends "Sales Header"
{
    fields
    {

        modify("Sell-to Customer No.")
        {
            trigger OnAfterValidate()
            var

                Customer: Record Customer;

            begin
                if Customer.get("Sell-to Customer No.") then
                    "Customer Line discount" := Customer."Customer Line Discount";

            end;
        }


        field(50001; Quantity; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Sales Line".Quantity WHERE("Document No." = FIELD("No.")));
            DecimalPlaces = 0 : 5;
        }
        field(50003; "Order Type"; Option)
        {
            OptionMembers = " ",Sea,Air,Land;
        }
        field(50151; "First User ID"; Code[30])
        {
            TableRelation = "User Setup";
        }
        field(50152; "Last User ID"; Code[30])
        {
            TableRelation = "User Setup";
        }
        field(50153; Modified; Date)
        {
        }
        field(50154; "Address 3"; Text[30])
        {
        }
        field(50155; "P.O.Box"; Text[30])
        {
        }
        field(50156; "Del.Add. 3"; Text[30])
        {
        }
        field(50157; "Del.P.O.Box"; Text[30])
        {
        }
        field(50159; "Status(DOS)"; Text[4])
        {
        }
        field(50161; "xForeign Currency"; Boolean)
        {
            BlankZero = true;
            InitValue = false;
        }
        field(50162; xStatus; Text[16])
        {
        }
        field(50163; "Send for Approval"; Boolean)
        {

            trigger OnValidate()

            begin
                IF UserSetup2.GET(USERID) THEN
                    SenderEmail := UserSetup2."E-Mail";

                IF "Send for Approval" = TRUE THEN
                    TESTFIELD("1st Approval to");
                TESTFIELD("1st Apprv. Status", 0);
                "Current pending Person" := "1st Approval to";

                IF UserSetup.GET("1st Approval to") THEN BEGIN
                    ReceiverEmail := UserSetup."E-Mail";
                    ReceiverInitials := UserSetup.Initials;
                    Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                    "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                    CreateEmailBody("No.", Addressee, "Mail Body");
                    SendEmail(ReceiverEmail, Subject, EmailBody, CCName, SenderEmail);
                    "Sent Time" := CURRENTDATETIME;
                    Sender := USERID;
                END;
            end;
        }
        field(50164; Sender; Code[30])
        {
        }
        field(50165; "Send to"; Code[30])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(50166; Approved; Boolean)
        {

            trigger OnValidate()
            begin

                UserSetup.get(USERID);
                if not UserSetup."Credit Memo Approval" then
                    Error('You cannot approve this document!');

                "Approved Time" := CURRENTDATETIME;
                "Approved By" := USERID;
            end;
        }
        field(50167; "Sent Time"; DateTime)
        {
        }
        field(50168; "Approved Time"; DateTime)
        {
        }
        field(50169; "Mail Body"; Text[250])
        {
        }
        field(50170; "Approved By"; Code[30])
        {
        }
        field(50171; "User Department"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'User Department';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(1, "Shortcut Dimension 1 Code");
            end;
        }
        field(50173; "1st Approval to"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()

            begin
                IF UserSetup.GET("1st Approval to") THEN
                    "1st Approver" := UserSetup.Name;
            end;
        }
        field(50174; "1st Approver"; Text[50])
        {
        }
        field(50175; "1st Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            trigger OnValidate()
            begin
                IF "Shortcut Dimension 1 Code" = '09MARKET' THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Approval to", USERID);
                    "1st Approval Time" := 0DT;

                    CASE "1st Apprv. Status" OF
                        "1st Apprv. Status"::Approved:
                            BEGIN
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";

                                TESTFIELD("2nd Approval to");
                                UserSetup.GET("2nd Approval to");
                                "Current pending Person" := "2nd Approval to";
                                ReceiverEmail := UserSetup."E-Mail";

                                Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                                "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");



                                "1st Approval Time" := CURRENTDATETIME;

                            END;
                        "1st Apprv. Status"::Rejected:
                            BEGIN
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(RejectedText, "No.");
                                "Mail Body" := STRSUBSTNO(RejectedText, "No.");
                                // mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "1st Apprv. Status"::"on Hold":
                            BEGIN
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(OnholdText, "No.");
                                "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;

                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'DEFECTIVE') THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Approval to", USERID);
                    "1st Approval Time" := 0DT;
                    CASE "1st Apprv. Status" OF
                        "1st Apprv. Status"::Approved:
                            BEGIN
                                TESTFIELD("2nd Approval to");
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET("2nd Approval to");
                                "Current pending Person" := "2nd Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'ravinder@toyotanigeria.com;' + 'godwin@toyotanigeria.com;' + 'Ingale@toyotanigeria.com';
                                Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                                "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "1st Apprv. Status"::Rejected:
                            BEGIN
                                "1st Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(RejectedText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "1st Apprv. Status"::"on Hold":
                            BEGIN
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(OnholdText, "No.");
                                "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'NDEFECTIVE') THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Approval to", USERID);
                    "1st Approval Time" := 0DT;
                    CASE "1st Apprv. Status" OF
                        "1st Apprv. Status"::Approved:
                            BEGIN
                                TESTFIELD("2nd Approval to");
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET("2nd Approval to");
                                "Current pending Person" := "2nd Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'agbesua@toyotanigeria.com;' + 'brano@toyotanigeria.com;' + 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                                "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');

                            END;
                        "1st Apprv. Status"::Rejected:
                            BEGIN
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(RejectedText, "No.");
                                "Mail Body" := STRSUBSTNO(RejectedText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "1st Apprv. Status"::"on Hold":
                            BEGIN
                                "1st Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(OnholdText, "No.");
                                "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'ERROR') THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Approval to", USERID);
                    "1st Approval Time" := 0DT;
                    CASE "1st Apprv. Status" OF
                        "1st Apprv. Status"::Approved:
                            BEGIN
                                TESTFIELD("2nd Approval to");
                                "1st Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET("2nd Approval to");
                                // "Current pending Person" := "2nd Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'agbesua@toyotanigeria.com;' + 'brano@toyotanigeria.com;' + 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                                "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                            END;
                        "1st Apprv. Status"::Rejected:
                            BEGIN
                                "1st Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(RejectedText, "No.");
                                "Mail Body" := STRSUBSTNO(RejectedText, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "1st Apprv. Status"::"on Hold":
                            BEGIN
                                "1st Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(OnholdText, "No.");
                                "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                                //                   mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
            end;
        }
        field(50176; "1st Approval Time"; DateTime)
        {
        }
        field(50177; "1st Approver's Comment"; Boolean)
        {

        }
        field(50178; "2nd Approval to"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("2nd Approval to") THEN BEGIN
                    "2nd Approver" := UserSetup.Name;
                    "2nd Approval to" := "2nd Approval to";
                    MODIFY;
                END;
            end;
        }
        field(50179; "2nd Approver"; Text[50])
        {
        }
        field(50180; "2nd Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

        }
        field(50181; "2nd Approval Time"; DateTime)
        {
        }
        field(50182; "2nd Approver's Comment"; Boolean)
        {
        }
        field(50188; "Final Approval to"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

        }
        field(50189; "Final Approver's Name"; Text[50])
        {
        }
        field(50190; "Final Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

        }
        field(50191; "Final Approval Time"; DateTime)
        {
        }
        field(50192; "Final Approver's Comment"; Boolean)
        {
        }
        field(50194; "Current pending Person"; Code[50])
        {
            TableRelation = "User Setup";
        }
        field(50195; Attachment; Text[250])
        {
        }
        field(50196; "Send for 2nd Apprv."; Boolean)
        {


        }
        field(50197; "Send for 3rd Apprv."; Boolean)
        {

        }
        field(50258; "Foreign Currency"; Boolean)
        {
        }
        field(50259; "Tracker No."; Code[10])
        {
        }
        field(50260; "Include Accessory"; Boolean)
        {
        }
        field(50261; "Shelf No."; Code[10])
        {
        }
        field(50262; "Sales Time"; Time)
        {
        }
        field(50263; Posting_Time; DateTime)
        {
        }
        field(50264; "Online Order"; Boolean)
        {
        }
        field(50267; "Total Amount"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Sales Line"."Amount Including VAT" WHERE("Document No." = FIELD("No.")));
        }
        field(50268; "Vehicle Order No."; Code[30])
        {

        }
        field(60108; "Customer Line discount"; Decimal)
        {
        }
        field(60109; "Serial No"; Code[20])
        {
        }
        field(60110; "Inventory Group"; Code[10])
        {
        }
        field(60111; "Finance Apprv Status"; Enum "Document Status")
        {
            trigger OnValidate()
            begin

                TESTFIELD("Finance Send to", USERID);
                "Finance Approved Time" := 0DT;

                //"HOD Marketing Signature" := UserSetup.Signature; //why?

                IF UserSetup2.GET(UserId) THEN
                    SenderEmail := UserSetup2."E-Mail";

                CASE "Finance Apprv Status" OF
                    "Finance Apprv Status"::Approved:
                        BEGIN

                            UserSetup.GET("Marketing Send To");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                            "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail); //marketing gets email
                        END;

                    "Finance Apprv Status"::Rejected:
                        BEGIN
                            UserSetup.GET("Logistics Sender");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(RejectedText, "No.");
                            "Mail Body" := STRSUBSTNO(RejectedText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail); //logistics sender gets email
                        END;

                    "Finance Apprv Status"::"On-Hold":
                        BEGIN

                            UserSetup.GET("Logistics Sender");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(OnholdText, "No.");
                            "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail) //logistics sender gets email

                        END;
                END;

                UserRec.GET(UserId);
                "Finance Approved By" := UserRec.Name;
                "Finance Approved Time" := CURRENTDATETIME;
            end;
        }
        field(60112; "Finance Send to"; Code[30])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(60113; "Marketing Send To"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("Marketing Send To") THEN
                    "Marketing Sender" := UserSetup.Name;
                "Marketing Sent Time" := CURRENTDATETIME;
            end;
        }
        field(60114; "Marketing Apprv Status"; Enum "Document Status")
        {
            trigger OnValidate()
            begin
                TESTFIELD("Marketing Send To", USERID);
                "Marketing Approved Time" := 0DT;

                // "HOD Finance Signature" := UserSetup.Signature;   //why?

                IF UserSetup2.GET(USERID) THEN
                    SenderEmail := UserSetup2."E-Mail";

                CASE "Marketing Apprv Status" OF
                    "Marketing Apprv Status"::Approved:
                        BEGIN

                            TESTFIELD("Marketing Send To");
                            UserSetup.GET("Marketing Send To"); // this is wrong. who should get email?
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                            "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail);

                            IF VehicleOrderOnline.GET("Vehicle Order No.") THEN BEGIN
                                VehicleOrderOnline.SETRANGE("Order No.", "Vehicle Order No.");
                                VehicleOrderOnline."Approval Status Changed" := TRUE;
                                VehicleOrderOnline.MODIFY;
                            END;
                        END;

                    "Marketing Apprv Status"::Rejected:
                        BEGIN

                            UserSetup.GET("Logistics Sender");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(RejectedText, "No.");
                            "Mail Body" := STRSUBSTNO(RejectedText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail); //logistics sender gets email

                        END;

                    "Marketing Apprv Status"::"On-Hold":
                        BEGIN

                            UserSetup.GET("Logistics Sender");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(OnholdText, "No.");
                            "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail) //logistics sender gets email
                        END;
                END;

                UserRec.GET(UserId);
                "Marketing Approved By" := UserRec.Name;
                "Marketing Approved Time" := CURRENTDATETIME;

            end;
        }
        field(60115; "Logistics Send to"; Code[30])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(60116; "Logistics Apprv Status"; Enum "Document Status")
        {
            trigger OnValidate()
            begin

                TESTFIELD("Logistics Send to", USERID);
                "Logistics Approved Time" := 0DT;

                //"HOD Marketing Signature" := UserSetup.Signature; //why? which UserSetup?

                IF UserSetup2.GET(USERID) THEN
                    SenderEmail := UserSetup2."E-Mail";

                CASE "Logistics Apprv Status" OF
                    "Logistics Apprv Status"::Approved:
                        BEGIN

                            TESTFIELD("Finance Send to");
                            UserSetup.GET("Finance Send to");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                            "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail); //finance gets email
                        END;

                    "Logistics Apprv Status"::Rejected:
                        BEGIN
                            UserSetup.GET("Logistics Sender");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(RejectedText, "No.");
                            "Mail Body" := STRSUBSTNO(RejectedText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail); //logistics sender gets email
                        END;

                    "Logistics Apprv Status"::"On-Hold":
                        BEGIN
                            UserSetup.GET("Logistics Send to");
                            ReceiverEmail := UserSetup."E-Mail";
                            ReceiverInitials := UserSetup.Initials;

                            Subject := STRSUBSTNO(OnholdText, "No.");
                            "Mail Body" := STRSUBSTNO(OnholdText, "No.");
                            CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                            SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail); //logistics sender gets email
                        END;
                END;

                UserRec.GET("Logistics Send to");
                "Logistics Approved By" := UserRec.Name;
                "Logistics Approved Time" := CURRENTDATETIME;
            end;
        }
        field(60117; "Logistics Sent Time"; DateTime)
        {
        }
        field(60118; "Logistics Approved Time"; DateTime)
        {
        }
        field(60119; "Logistics Approved By"; Code[30])
        {
        }
        field(60120; "Logistics Sender"; Code[30])
        {
        }
        field(60122; "Logistic Sent Time"; DateTime)
        {
        }
        field(60123; "Finance Approved By"; Text[30])
        {
        }
        field(60124; "Marketing Sender"; Text[30])
        {
        }
        field(60125; "Marketing Sent Time"; DateTime)
        {
        }
        field(60126; "Finance Approved Time"; DateTime)
        {
        }
        field(60127; "Marketing Approved By"; Text[30])
        {
        }
        field(60128; "Marketing Approved Time"; DateTime)
        {
        }
        field(60129; "Retail Cost"; Decimal)
        {
            //CalcFormula = Sum("Sales Line"."Retail Cost" WHERE(Document No.=FIELD(No.)));
            //FieldClass = FlowField;
        }
        field(60130; "Original Profit"; Decimal)
        {

            trigger OnValidate()
            begin
                VALIDATE(Amount);
                VALIDATE("Retail Cost");
                SalesHeader."Original Profit" := Amount - "Retail Cost";
            end;
        }
        field(60131; "Original Profit %"; Decimal)
        {
        }
        field(60132; "HOD Logistics Signature"; MediaSet)
        {
        }
        field(60133; "HOD Finance Signature"; MediaSet)
        {
        }
        field(60134; "HOD Marketing Signature"; MediaSet)
        {
        }
        field(60135; "Logistics Send for Approval"; Boolean)
        {

            trigger OnValidate()
            begin
                IF "Logistics Send for Approval" = TRUE THEN
                    IF UserSetup.GET("Finance Send to") THEN BEGIN  //why finance send to?
                        "Logistics Sender" := USERID;
                        "Logistics Sent Time" := CURRENTDATETIME;


                        TESTFIELD("Finance Apprv Status", 0);

                        IF UserSetup2.GET(USERID) THEN
                            SenderEmail := UserSetup2."E-Mail";

                        ToName := UserSetup."E-Mail";
                        Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                        MESSAGE('Mail Sent Successfully!');
                    END;
            end;
        }
        field(60136; "Customer Preferred Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60137; "Salesperson Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60138; "Custom Doc. Availability"; Boolean)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                TESTFIELD("Marketing Apprv Status", "Marketing Apprv Status"::Approved);
                IF "Custom Doc. Availability" THEN
                    "Document Sent" := TRUE
                ELSE
                    "Document Sent" := FALSE;
            end;
        }
        field(60139; "Acknowledged Doc Link"; Text[250])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(60140; "Audit Confirmation"; Boolean)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                TESTFIELD("Custom Doc. Availability", TRUE);
                IF UserSetup2.GET(USERID) THEN
                    SenderEmail := UserSetup2."E-Mail";
                IF "Audit Confirmation" = TRUE THEN
                    IF not confirm('Are you sure you want to confirm this Sales Order?', FALSE) THEN
                        "Audit Confirmation" := FALSE
                    ELSE BEGIN
                        Sender := USERID;
                        //UserSetup.GET("Send to");
                        "Sent Time" := CURRENTDATETIME;
                        ToName := 'ojo@toyotanigeria.com';   //why Ojo?

                        "Mail Body" := STRSUBSTNO(ApprovedText, "No.");
                        Subject := STRSUBSTNO(ApprovedText, "No.");

                        //UserSetup2.GET("1st Approval to");
                        //SenderInitial := UserSetup2.Initials;
                        //Initials := UserSetup.Initials;


                        ReceiverEmail := UserSetup."E-Mail";
                        ReceiverInitials := UserSetup.Initials;

                        Subject := STRSUBSTNO(ApprovedText, "No.");
                        "Mail Body" := STRSUBSTNO(ApprovedText, "No.");
                        CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                        SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail);


                        "Approved Time" := CURRENTDATETIME;
                        "Approved By" := USERID;
                    END
            end;

        }
        field(60141; test; Boolean)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin


            end;
        }
        field(60142; "Security Confirmation"; Boolean)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                IF "Security Confirmation" THEN
                    "Security Confirmation by" := USERID
                ELSE
                    "Security Confirmation by" := '';
            end;
        }
        field(60143; "Security Confirmation by"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(60144; "Document Sent"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(60145; "Security No."; Code[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee;

            trigger OnValidate()
            var
                Employee: Record Employee;
            begin
                IF Employee.GET("Security No.") THEN
                    "Security Name" := Employee.FullName
                ELSE
                    "Security Name" := '';
            end;
        }
        field(60146; "Security Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60147; "Send for Approval2"; Boolean)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                TESTFIELD("Logistics Send to");

                DesignatedApprovers.Get();
                UserSetup2.GET(USERID);
                SenderEmail := UserSetup2."E-Mail";
                Sender := USERID;
                "Sent Time" := CURRENTDATETIME;
                "Current pending Person" := "Logistics Send to";

                UserSetup.GET("Logistics Send to");
                ReceiverEmail := UserSetup."E-Mail";
                ReceiverInitials := UserSetup.Initials;

                CcAddresses := DesignatedApprovers."Logistics Notifications";
                //CcAddresses := 'olukoya@toyotanigeria.com;sunday@toyotanigeria.com;tola@toyotanigeria.com;smo@toyotanigeria.com;gbenga@toyotanigeria.com;James@toyotanigeria.com;johnson@toyotanigeria.com;komolafe@toyotanigeria.com';

                Subject := STRSUBSTNO(WaitingforApprovalText, "No.");
                "Mail Body" := STRSUBSTNO(WaitingforApprovalText, "No.");
                CreateEmailBody("No.", ReceiverInitials, "Mail Body");
                SendEmail(ReceiverEmail, Subject, EmailBody, CcAddresses, SenderEmail);

            end;
        }
        field(60148; "Audit Confirmation by"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60149; "Audit Summary"; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = ' ,Satisfactory,Non-Satisfactory';
            OptionMembers = " ",Satisfactory,"Non-Satisfactory";
        }
        field(60150; "Audit Confirmation Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }

    }

    var
        mailsent: Boolean;
        ToName: Text[100];
        CCName: Text[200];
        Subject: Text[100];
        Body: Text[100];
        attachement: Text[260];
        Opendialog: Boolean;
        UserSetup: Record "User Setup";
        UserSetup2: Record "User Setup";
        CustRec: Record Customer;
        WaitingforApprovalText: Label 'Document %1 is waiting for your approval.';
        ApprovedText: Label 'Document %1 has been approved.';
        RejectedText: Label 'Document %1 has been rejected.';
        OnholdText: Label 'Document %1 is on hold.';
        SenderEmail: Text[40];
        UserRec: Record "User Setup";
        EmailBody: Text[1024];
        ReceiverEmail: Text;
        Addressee: Text;
        Salutation: Label 'Dear %1,';
        CcAddresses: Text[100];
        SenderAddress: Text[100];
        ReceiverInitials: Text[10];
        VehicleOrderOnline: Record "Vehicle Online Order";
        DesignatedApprovers: Record "Designated Approvers";


    procedure CreateEmailBody(DocNo: Code[20]; RecipientInitials: Text; BodyMsg: Text);

    begin

        UserSetup.Get(UserId);

        EmailBody := STRSUBSTNO(Salutation, RecipientInitials);
        EmailBody += '<br><br>';
        EmailBody += STRSUBSTNO(BodyMsg, DocNo);
        EmailBody += '<br><br>';
        EmailBody += 'Regards,';
        EmailBody += '<br>';
        EmailBody += UserSetup.Initials;

    end;

    procedure SendEmail(ReceiverEmail: Text; Subject: Text; Body: Text; CCRecipients: Text; BCCRecipients: Text)
    var
        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";

    begin

        EmailMessage.Create(ReceiverEmail, Subject, EmailBody, true);
        EmailMessage.AddRecipient(enum::"Email Recipient Type"::Cc, CCRecipients);
        EmailMessage.AddRecipient(Enum::"Email Recipient Type"::Bcc, BCCRecipients);
        Email.OpenInEditorModally(EmailMessage, Enum::"Email Scenario"::Default)

    end;

    procedure LinkedAcctControl();

    var

        CustLedgEntry: Record "Cust. Ledger Entry";
        Cust: Record Customer;
        Cust2: Record Customer;
        CustRec2: Record Customer;
        FirstDate: Date;
        Diff: Integer;
        DealerVerifNo: Code[10];

    Begin
        IF (COPYSTR(Rec."Sell-to Customer No.", 1, 3) = 'TDP') THEN
            EXIT ELSE BEGIN

            Cust.GET(Rec."Sell-to Customer No.");
            DealerVerifNo := Cust."Dealer Verification No.";

            IF DealerVerifNo <> '' THEN
                CustRec2.RESET;
            Cust2.SETCURRENTKEY("Dealer Verification No.");
            Cust2.SETRANGE("Dealer Verification No.", DealerVerifNo);
            IF Cust2.FINDFIRST THEN
                REPEAT
                    CustLedgEntry.SETCURRENTKEY("Customer No.", "Document Type", Open);
                    CustLedgEntry.SETRANGE("Customer No.", Cust2."No.");
                    CustLedgEntry.SETRANGE("Document Type", CustLedgEntry."Document Type"::Invoice);
                    CustLedgEntry.SETRANGE(Open, TRUE);
                    IF CustLedgEntry.FINDFIRST THEN BEGIN
                        FirstDate := CustLedgEntry."Posting Date";
                        IF FirstDate <> 0D THEN
                            Diff := TODAY - FirstDate;
                        IF (Diff > 60) THEN
                            ERROR('Overdue invoices need to be cleared!')
                    END;
                UNTIL Cust2.NEXT = 0;
        END;
    end;


    procedure IncludeAccessory();

    var

        SalesLine: Record "Sales Line";
        SalesLine2: Record "Sales Line";
        SalesLine3: Record "Sales Line";
        SalesLine4: Record "Sales Line";
        LineNo: Integer;
        ItemRec2: Record Item;

    Begin
        //TotalWithAccessory := 0;
        SalesLine3.SETCURRENTKEY("Document No.");
        SalesLine3.SETRANGE("Document No.", Rec."No.");
        IF SalesLine3.FINDLAST THEN
            LineNo := SalesLine3."Line No.";

        SalesLine.RESET;
        SalesLine.SETCURRENTKEY("Document No.", Accessory);
        SalesLine.SETRANGE("Document No.", Rec."No.");
        SalesLine.SETRANGE(Accessory, TRUE);
        IF SalesLine.FINDFIRST THEN BEGIN
            REPEAT
                LineNo += 10000;
                IF SalesLine."Location Code" IN ['BLORE1', 'BLEXHIBTN', 'BLCONSGNMT'] THEN BEGIN
                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine.Type;
                    IF SalesLine.Degree = '45' THEN
                        //SalesLine2.VALIDATE("No.",'XS242-TOD01'); JA
                        SalesLine2.VALIDATE("No.", 'F2440-TOD72');
                    IF SalesLine.Degree = '180' THEN
                        SalesLine2.VALIDATE("No.", 'XS242-TOD02');
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;

                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine2.Type::Item;
                    //SalesLine2.VALIDATE("No.",'S4201-TOD00');      JA
                    SalesLine2.VALIDATE("No.", 'S3736-TD218');
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;

                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine2.Type::Item;
                    ItemRec2.SETCURRENTKEY(Degree, "Item Color");
                    ItemRec2.SETRANGE(Degree, SalesLine.Degree);
                    ItemRec2.SETRANGE("Item Color", SalesLine.Colour);
                    IF ItemRec2.FINDFIRST THEN
                        SalesLine2.VALIDATE("No.", ItemRec2."No.");
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;

                END;

                IF SalesLine."Location Code" IN ['ACC-ORE1', 'ACC-CONSG', 'ACC-EXHBT'] THEN BEGIN
                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine2.Type::Item;
                    IF SalesLine.Degree = '45' THEN
                        // SalesLine2.VALIDATE("No.",'XS242-TOD01'); JA
                        SalesLine2.VALIDATE("No.", 'F2440-TOD72');
                    IF SalesLine.Degree = '180' THEN
                        SalesLine2.VALIDATE("No.", 'XS242-TOD02');
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;

                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine2.Type::Item;
                    SalesLine2.VALIDATE("No.", 'S3736-TD218');
                    // SalesLine2.VALIDATE("No.",'S4201-TOD00');  JA
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;

                    //Degree and color
                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine2.Type::Item;
                    ItemRec2.SETCURRENTKEY(Degree, "Item Color");
                    ItemRec2.SETRANGE(Degree, SalesLine.Degree);
                    ItemRec2.SETRANGE("Item Color", SalesLine.Colour);
                    IF ItemRec2.FINDFIRST THEN
                        SalesLine2.VALIDATE("No.", ItemRec2."No.");
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;
                END;
            UNTIL SalesLine.NEXT = 0;
        END;

        SalesLine.RESET;
        SalesLine.SETCURRENTKEY("Document No.", Accessory);
        SalesLine.SETRANGE("Document No.", Rec."No.");
        SalesLine.SETRANGE(Accessory, TRUE);
        IF SalesLine.FINDFIRST THEN BEGIN
            REPEAT
                LineNo += 10000;
                IF SalesLine."Location Code" IN ['CWORE1', 'CWEXHIBTN', 'CPORE1'] THEN BEGIN
                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine.Type;
                    SalesLine2.VALIDATE("No.", 'S47B0-TOD2K');
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;

                    SalesLine2.INIT;
                    SalesLine2."Document Type" := SalesLine."Document Type";
                    SalesLine2."Document No." := SalesLine."Document No.";
                    SalesLine2."Line No." := LineNo;
                    SalesLine2.Type := SalesLine2.Type::Item;
                    SalesLine2.VALIDATE("No.", 'S35B0-TOD2K');
                    SalesLine2."Location Code" := 'BLORE1';
                    SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                    SalesLine2.INSERT(TRUE);
                    LineNo += 10000;
                END;
            UNTIL SalesLine.NEXT = 0;

        END;

        IF Rec."Include Accessory" = FALSE THEN BEGIN
            SalesLine4.SETRANGE("No.", 'XS242-TOD01');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS242-TOD02');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;


            SalesLine4.SETRANGE("No.", 'S4201-TOD00');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'F3712-TOD02');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'S35B0-TOD2K');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'S47B0-TOD2K');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS371-TOD76');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS371-TOD24');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS371-TOD75');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS371-TOD57');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS374-TODW1');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS374-TOD31');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS374-TOD11');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS374-TODM1');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

            SalesLine4.SETRANGE("No.", 'XS374-TOD04');
            IF SalesLine4.FINDFIRST THEN
                SalesLine4.DELETEALL;

        END;

    End;

}


