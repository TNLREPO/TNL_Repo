tableextension 50010 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
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
                    IF UserSetup.GET("1st Approval to") THEN BEGIN
                        Sender := USERID;
                        "Sent Time" := CURRENTDATETIME;
                        TESTFIELD("1st Approval to");
                        TESTFIELD("1st Apprv. Status", 0);
                        "Current pending Person" := "1st Approval to";
                        ToName := UserSetup."E-Mail";
                        Subject := STRSUBSTNO(Text073, "No.");
                        //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                        //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                        //.Send;
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
                TESTFIELD("1st Approval to", USERID);
                IF UserSetup.GET("Send to") THEN
                    UserSetup.TESTFIELD(UserSetup."Credit Memo Approval", TRUE);
                IF Approved THEN
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
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No."= CONST(1));

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
                                "1st Approval Time" := CURRENTDATETIME;
                                UserSetup.GET("2nd Approval to");
                                "Current pending Person" := "2nd Approval to";
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(Text073, "No.");
                                "Mail Body" := STRSUBSTNO(Text073, "No.");
                                // mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
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
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
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
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
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
                                Subject := STRSUBSTNO(Text073, "No.");
                                "Mail Body" := STRSUBSTNO(Text073, "No.");
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
                                Subject := STRSUBSTNO(Text075, "No.");
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
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
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
                                Subject := STRSUBSTNO(Text073, "No.");
                                "Mail Body" := STRSUBSTNO(Text073, "No.");
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
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
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
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
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
                                Subject := STRSUBSTNO(Text073, "No.");
                                "Mail Body" := STRSUBSTNO(Text073, "No.");
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
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
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
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
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

            trigger OnValidate()
            begin
                IF "Shortcut Dimension 1 Code" = '09MARKET' THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Apprv. Status", 2);
                    TESTFIELD("2nd Approval to", USERID);
                    "2nd Approval Time" := 0DT;
                    CASE "2nd Apprv. Status" OF
                        "2nd Apprv. Status"::Approved:
                            BEGIN
                                // TESTFIELD("3rd Approval to");
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                //  "Current pending Person" := "3rd Approval to";
                                ToName := UserSetup."E-Mail";
                                //CCName  := 'oshunniyi@toyotanigeria.com'
                                Subject := STRSUBSTNO(Text074, "No.");
                                "Mail Body" := STRSUBSTNO(Text074, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;

                            END;
                        "2nd Apprv. Status"::Rejected:
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(Text075, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "2nd Apprv. Status"::"on Hold":
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                Subject := STRSUBSTNO(Text076, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'DEFECTIVE') THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Apprv. Status", 2);
                    TESTFIELD("2nd Approval to", USERID);
                    "2nd Approval Time" := 0DT;
                    CASE "2nd Apprv. Status" OF
                        "2nd Apprv. Status"::Approved:
                            BEGIN
                                // TESTFIELD("3rd Approval to");
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                //  "Current pending Person" := "3rd Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'agbesua@toyotanigeria.com;' + 'brano@toyotanigeria.com;' + 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text073, "No.");
                                "Mail Body" := STRSUBSTNO(Text073, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');

                            END;
                        "2nd Apprv. Status"::Rejected:
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "2nd Apprv. Status"::"on Hold":
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;

                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'NDEFECTIVE') THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Apprv. Status", 2);
                    TESTFIELD("2nd Approval to", USERID);
                    "2nd Approval Time" := 0DT;
                    CASE "2nd Apprv. Status" OF
                        "2nd Apprv. Status"::Approved:
                            BEGIN
                                // TESTFIELD("3rd Approval to");
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                //  "Current pending Person" := "3rd Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com;' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text074, "No.");
                                "Mail Body" := STRSUBSTNO(Text074, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "2nd Apprv. Status"::Rejected:
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com;' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "2nd Apprv. Status"::"on Hold":
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com;' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'ERROR') THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    TESTFIELD("1st Apprv. Status", 2);
                    TESTFIELD("2nd Approval to", USERID);
                    "2nd Approval Time" := 0DT;
                    CASE "2nd Apprv. Status" OF
                        "2nd Apprv. Status"::Approved:
                            BEGIN
                                // TESTFIELD("3rd Approval to");
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                //  "Current pending Person" := "3rd Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com;' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text074, "No.");
                                "Mail Body" := STRSUBSTNO(Text074, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');

                            END;
                        "2nd Apprv. Status"::Rejected:
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com;' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "2nd Apprv. Status"::"on Hold":
                            BEGIN
                                "2nd Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
            end;
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

            trigger OnValidate()
            begin
                //IF UserSetup.GET("Final Approval to") THEN
                //"Final Approver's Name" := UserSetup.Name;
                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'ERROR') THEN
                    ERROR('Final approval is not need for this transaction');

                IF ("Shortcut Dimension 1 Code" = '05PARTS') AND ("Reason Code" = 'NDEFECTIVE') THEN
                    ERROR('Final approval is not need for this transaction');

                IF ("Shortcut Dimension 1 Code" = '09MARKET') THEN
                    ERROR('Final approval is not need for this transaction');


                IF UserSetup.GET("Final Approval to") THEN
                    "Final Approver's Name" := UserSetup.Name;
                "Final Approval to" := "Final Approval to";
                MODIFY;
            end;
        }
        field(50189; "Final Approver's Name"; Text[50])
        {
        }
        field(50190; "Final Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            trigger OnValidate()
            begin

                IF "Shortcut Dimension 1 Code" = '05PARTS' THEN BEGIN
                    TESTFIELD("Send for Approval", TRUE);
                    "Final Approval Time" := 0DT;
                    //"Final Approver's Name" := UserSetup.Name;

                    CASE "Final Apprv. Status" OF
                        "Final Apprv. Status"::Approved:
                            BEGIN
                                TESTFIELD("1st Approval to");
                                "Final Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                //"Current pending Person" := "Final Approval to";
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text074, "No.");
                                "Mail Body" := STRSUBSTNO(Text074, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "Final Apprv. Status"::Rejected:
                            BEGIN
                                "Final Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text075, "No.");
                                "Mail Body" := STRSUBSTNO(Text075, "No.");
                                //mailsent := approvalmessage.NewMessage(ToName,CCName,Subject,'',"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                        "Final Apprv. Status"::"on Hold":
                            BEGIN
                                "Final Approval Time" := CURRENTDATETIME;
                                IF UserSetup2.GET(USERID) THEN
                                    SenderEmail := UserSetup2."E-Mail";
                                UserSetup.GET(Sender);
                                ToName := UserSetup."E-Mail";
                                CCName := 'oshunniyi@toyotanigeria.com;' + 'ravinder@toyotanigeria.com;' + 'goc@toyotanigeria.com' + 'agbesua@toyotanigeria.com';
                                Subject := STRSUBSTNO(Text076, "No.");
                                "Mail Body" := STRSUBSTNO(Text076, "No.");

                                //mailsent := approvalmessage.NewMessage(ToName,CCName,Subject,'',"Mail Body",attachement,TRUE);
                                //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                                //.Send;
                                MESSAGE('Mail Sent Successfully!');
                            END;
                    END;
                END;
            end;
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

            trigger OnValidate()
            begin
                IF UserRec.GET(USERID) THEN BEGIN
                    Sender := UserRec.Name;
                    "Sent Time" := CURRENTDATETIME;
                    TESTFIELD(Amount);
                    TESTFIELD("1st Approval to");
                    TESTFIELD("1st Apprv. Status", 0);
                    TESTFIELD("2nd Approval to");
                    TESTFIELD("2nd Apprv. Status", 0);
                    IF UserSetup2.GET(USERID) THEN
                        SenderEmail := UserSetup2."E-Mail";
                    UserSetup.GET("1st Approval to");
                    "Current pending Person" := "1st Approval to";
                    ToName := UserSetup."E-Mail";
                    Subject := STRSUBSTNO(Text073, "No.");
                    //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                    //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                    //.Send;
                    MESSAGE('Mail Sent Successfully!');

                END;
            end;
        }
        field(50197; "Send for 3rd Apprv."; Boolean)
        {

            trigger OnValidate()

            begin
                IF UserRec.GET(USERID, 15) THEN BEGIN
                    Sender := UserRec.Name;
                    "Sent Time" := CURRENTDATETIME;
                    TESTFIELD(Amount);
                    TESTFIELD("1st Approval to");
                    TESTFIELD("1st Apprv. Status", 0);
                    IF UserSetup2.GET(USERID) THEN
                        SenderEmail := UserSetup2."E-Mail";
                    UserSetup.GET("1st Approval to");
                    "Current pending Person" := "1st Approval to";
                    ToName := UserSetup."E-Mail";
                    Subject := STRSUBSTNO(Text073, "No.");
                    //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                    //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                    //.Send;
                    MESSAGE('Mail Sent Successfully!');
                END;
            end;
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
        field(60108; "Customer Line discount"; Decimal)
        {
        }
        field(60109; "Serial No"; Code[20])
        {
        }
        field(60110; "Inventory Group"; Code[10])
        {
        }
        field(60111; "Finance Apprv Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            trigger OnValidate()
            begin

                TESTFIELD("Logistics Send for Approval", TRUE);
                TESTFIELD("Logistics Send to", USERID);
                TESTFIELD("Finance Send to", USERID);
                "Finance Approved Time" := 0DT;
                CASE "Finance Apprv Status" OF
                    "Finance Apprv Status"::Approved:
                        BEGIN
                            TESTFIELD("Marketing Send To");
                            UserRec.GET("Finance Send to");
                            "Finance Approved By" := UserRec.Name;
                            "HOD Marketing Signature" := UserSetup.Signature;
                            "Finance Approved Time" := CURRENTDATETIME;

                            UserSetup.GET("Marketing Send To");

                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text073, "No.");
                            "Mail Body" := STRSUBSTNO(Text073, "No.");

                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');

                        END;
                    "Finance Apprv Status"::Rejected:
                        BEGIN
                            UserRec.GET("Finance Send to");
                            "Finance Approved By" := UserRec.Name;
                            "HOD Marketing Signature" := UserSetup.Signature;
                            "Finance Approved Time" := CURRENTDATETIME;
                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";
                            UserSetup.GET("Logistics Sender");
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text075, "No.");
                            "Mail Body" := STRSUBSTNO(Text075, "No.");

                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');
                        END;
                    "Finance Apprv Status"::"on Hold":
                        BEGIN

                            UserRec.GET("Finance Send to");
                            "Finance Approved By" := UserRec.Name;
                            "HOD Marketing Signature" := UserSetup.Signature;
                            "Finance Approved Time" := CURRENTDATETIME;
                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";
                            UserSetup.GET("Logistics Sender");
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text076, "No.");
                            "Mail Body" := STRSUBSTNO(Text076, "No.");


                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');
                        END;
                END;
            end;
        }
        field(60112; "Finance Send to"; Code[10])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(60113; "Marketing Send To"; Code[10])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("Marketing Send To") THEN
                    "Marketing Sender" := UserSetup.Name;
                "Marketing Sent Time" := CURRENTDATETIME;
            end;
        }
        field(60114; "Marketing Apprv Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            trigger OnValidate()
            begin
                TESTFIELD("Logistics Send for Approval", TRUE);
                TESTFIELD("Logistics Send to", USERID);
                TESTFIELD("Finance Send to", USERID);
                //TESTFIELD("Finance Send to",USERID);
                "Marketing Approved Time" := 0DT;
                CASE "Finance Apprv Status" OF
                    "Marketing Apprv Status"::Approved:
                        BEGIN
                            TESTFIELD("Marketing Send To");
                            UserRec.GET("Marketing Send To");
                            "Marketing Approved By" := UserRec.Name;
                            "HOD Finance Signature" := UserSetup.Signature;
                            "Marketing Approved Time" := CURRENTDATETIME;

                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";

                            UserSetup.GET("Marketing Send To");
                            //"Current pending Person" := "2nd Approval to";
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text073, "No.");
                            "Mail Body" := STRSUBSTNO(Text073, "No.");

                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');


                        END;
                    "Marketing Apprv Status"::Rejected:
                        BEGIN
                            UserRec.GET("Marketing Send To");
                            "Marketing Approved By" := UserRec.Name;
                            "HOD Finance Signature" := UserSetup.Signature;
                            "Marketing Approved Time" := CURRENTDATETIME;
                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";
                            UserSetup.GET("Logistics Sender");
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text075, "No.");
                            "Mail Body" := STRSUBSTNO(Text075, "No.");

                            //SMTPMail.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');
                        END;
                    "Marketing Apprv Status"::"on Hold":
                        BEGIN
                            UserRec.GET("Marketing Send To");
                            "Marketing Approved By" := UserRec.Name;
                            "HOD Finance Signature" := UserSetup.Signature;
                            "Marketing Approved Time" := CURRENTDATETIME;
                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";
                            UserSetup.GET("Logistics Sender");
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text076, "No.");
                            "Mail Body" := STRSUBSTNO(Text076, "No.");
                            //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');
                        END;
                END;
            end;
        }
        field(60115; "Logistics Send to"; Code[10])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(60116; "Logistics Apprv Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            trigger OnValidate()
            begin

                TESTFIELD("Logistics Send for Approval", TRUE);
                TESTFIELD("Logistics Send to", USERID);
                "Logistics Approved Time" := 0DT;
                CASE "Logistics Apprv Status" OF
                    "Logistics Apprv Status"::Approved:
                        BEGIN
                            TESTFIELD("Finance Send to");
                            UserRec.GET("Logistics Send to");
                            "Logistics Approved By" := UserRec.Name;
                            "HOD Marketing Signature" := UserSetup.Signature;
                            "Logistics Approved Time" := CURRENTDATETIME;

                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";

                            UserSetup.GET("Finance Send to");
                            //"Current pending Person" := "2nd Approval to";
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text073, "No.");
                            "Mail Body" := STRSUBSTNO(Text073, "No.");
                            //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');

                        END;
                    "Logistics Apprv Status"::Rejected:
                        BEGIN
                            UserRec.GET("Logistics Send to");
                            "Logistics Approved By" := UserRec.Name;
                            "HOD Marketing Signature" := UserSetup.Signature;
                            "Logistics Approved Time" := CURRENTDATETIME;
                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";
                            UserSetup.GET("Logistics Sender");
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text075, "No.");
                            "Mail Body" := STRSUBSTNO(Text075, "No.");
                            //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');
                        END;
                    "Logistics Apprv Status"::"on Hold":
                        BEGIN
                            UserRec.GET("Logistics Send to");
                            "Logistics Approved By" := UserRec.Name;
                            "HOD Marketing Signature" := UserSetup.Signature;
                            "Logistics Approved Time" := CURRENTDATETIME;
                            IF UserSetup2.GET(USERID) THEN
                                SenderEmail := UserSetup2."E-Mail";
                            UserSetup.GET("Logistics Sender");
                            ToName := UserSetup."E-Mail";
                            Subject := STRSUBSTNO(Text076, "No.");
                            "Mail Body" := STRSUBSTNO(Text076, "No.");
                            //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                            //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                            //.Send;
                            MESSAGE('Mail Sent Successfully!');
                        END;
                END;
            end;
        }
        field(60117; "Logistics Sent Time"; DateTime)
        {
        }
        field(60118; "Logistics Approved Time"; DateTime)
        {
        }
        field(60119; "Logistics Approved By"; Code[10])
        {
        }
        field(60120; "Logistics Sender"; Code[10])
        {
        }
        field(60122; "Logistic Sent Time"; DateTime)
        {
        }
        field(60123; "Finance Approved By"; Text[5])
        {
        }
        field(60124; "Marketing Sender"; Text[10])
        {
        }
        field(60125; "Marketing Sent Time"; DateTime)
        {
        }
        field(60126; "Finance Approved Time"; DateTime)
        {
        }
        field(60127; "Marketing Approved By"; Text[10])
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
        field(60132; "HOD Logistics Signature"; BLOB)
        {
        }
        field(60133; "HOD Finance Signature"; BLOB)
        {
        }
        field(60134; "HOD Marketing Signature"; BLOB)
        {
        }
        field(60135; "Logistics Send for Approval"; Boolean)
        {

            trigger OnValidate()
            begin
                IF "Logistics Send for Approval" = TRUE THEN
                    IF UserSetup.GET("Finance Send to") THEN BEGIN
                        "Logistics Sender" := USERID;
                        "Logistics Sent Time" := CURRENTDATETIME;
                        TESTFIELD("Logistics Send for Approval");
                        TESTFIELD("Finance Apprv Status", 0);
                        IF UserSetup2.GET(USERID) THEN
                            SenderEmail := UserSetup2."E-Mail";
                        //"Current pending Person" := "1st Approval to";
                        ToName := UserSetup."E-Mail";
                        Subject := STRSUBSTNO(Text073, "No.");
                        //mailsent := approvalmessage.NewMessage(ToName,CCName,'',Subject,"Mail Body",attachement,TRUE);
                        //.CreateMessage(USERID, SenderEmail, ToName, Subject, "Mail Body", FALSE);
                        //.Send;
                        MESSAGE('Mail Sent Successfully!');
                    END;
            end;
        }
        field(60136; "Customer Preferred Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }


    }

    var

        //Color: Record "50067";
        //PurchInvLine: Record "123";
        //approvalmessage: Codeunit "397";
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
        Text073: Label 'Document %1  is waiting for your approval';
        Text074: Label 'Document ''%1''  has been approved';
        Text075: Label 'Document ''%1''  has been rejected';
        Text076: Label 'Document ''%1''  is on hold';
        SenderEmail: Text[40];
        ////: Codeunit "400";
        UserRec: Record "User Setup";




}


