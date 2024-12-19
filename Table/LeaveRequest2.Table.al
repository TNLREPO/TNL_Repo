table 50545 "Leave Request2"
{

    fields
    {
        field(1; "Request No."; Code[20])
        {
        }
        field(2; "Entry Date"; Date)
        {
        }
        field(3; "Request Type"; Option)
        {
            OptionCaption = ',HOD,Manager,Junior staff - Deputy Manager,Branch';
            OptionMembers = ,HOD,Manager,"Junior staff - Deputy Manager",Branch;
        }
        field(4; Requester; Code[50])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(5; "Requester Name"; Text[80])
        {
        }
        field(6; "User ID"; Code[30])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(7; "Global Dimension 1 code"; Code[20])
        {
            Caption = 'Global Dimention 1 code';
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
        field(10; "Approved by"; Code[20])
        {
        }
        field(12; "Send for Approval"; Boolean)
        {

            /* trigger OnValidate()
            begin
                CRLF := '';
                CRLF[1] := 13;
                CRLF[2] := 10;

                IF "1st Approval" = '' THEN
                    ERROR('You need to choose an approver!');

                IF ("Request Type" = "Request Type"::HOD) THEN BEGIN
                    IF UserSetup.GET("1st Approval") THEN BEGIN
                        Addressee := 'HOD HR/ADMIN';
                        Sender := USERID;
                        UserSetup2.GET(USERID);
                        SenderName := UserSetup2.Name;
                        "Sent Time" := CURRENTDATETIME;
                        "User ID" := USERID;
                        "Current Pending Person" := "1st Approval";
                        ToName := UserSetup."E-Mail";
                        subject := STRSUBSTNO(text001, "Request No.");
                        Body := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                          'Regards,' + CRLF + CRLF + SenderName;
                        Mail.NewMessage(ToName, CCName, Bcc, subject, Body, Attachment, TRUE);
                    END;
                END;
                IF ("Request Type" = "Request Type"::Manager) THEN BEGIN
                    IF UserSetup.GET("1st Approval") THEN BEGIN
                        Addressee := 'HOD';
                        Sender := USERID;
                        UserSetup2.GET(USERID);
                        SenderName := UserSetup2.Name;
                        "Sent Time" := CURRENTDATETIME;
                        "User ID" := USERID;
                        "Current Pending Person" := "1st Approval";
                        ToName := UserSetup."E-Mail";
                        subject := STRSUBSTNO(text001, "Request No.");
                        Body := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                          'Regards,' + CRLF + CRLF + SenderName;
                        Mail.NewMessage(ToName, CCName, Bcc, subject, Body, Attachment, TRUE);
                    END;
                END;
                IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") THEN BEGIN
                    IF UserSetup.GET("1st Approval") THEN BEGIN
                        Addressee := 'HOD';
                        Sender := USERID;
                        UserSetup2.GET(USERID);
                        SenderName := UserSetup2.Name;
                        "Sent Time" := CURRENTDATETIME;
                        "User ID" := USERID;
                        "Current Pending Person" := "1st Approval";
                        ToName := UserSetup."E-Mail";
                        subject := STRSUBSTNO(text001, "Request No.");
                        Body := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                          'Regards,' + CRLF + CRLF + SenderName;
                        Mail.NewMessage(ToName, CCName, Bcc, subject, Body, Attachment, TRUE);
                    END;
                END;
                IF ("Request Type" = "Request Type"::Branch) THEN BEGIN
                    IF UserSetup.GET("1st Approval") THEN BEGIN
                        Addressee := 'Branch Manager';
                        Sender := USERID;
                        UserSetup2.GET(USERID);
                        SenderName := UserSetup2.Name;
                        "Sent Time" := CURRENTDATETIME;
                        "User ID" := USERID;
                        "Current Pending Person" := "1st Approval";
                        ToName := UserSetup."E-Mail";
                        subject := STRSUBSTNO(text001, "Request No.");
                        Body := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                          'Regards,' + CRLF + CRLF + SenderName;
                        Mail.NewMessage(ToName, CCName, Bcc, subject, Body, Attachment, TRUE);
                    END;
                END;
            end; */
        }
        field(13; "1st Approval"; Code[30])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
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

            /*        trigger OnValidate()
                   begin
                       CRLF := '';
                       CRLF[1] := 13;
                       CRLF[2] := 10;
                       IF ("Request Type" = "Request Type"::HOD) THEN BEGIN
                           IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
                               IF UserSetup.GET("2nd Approval") THEN BEGIN
                                   "1st Approval Time" := CURRENTDATETIME;
                                   "Current Pending Person" := "2nd Approval";
                                   ToName := UserSetup."E-Mail";
                                   subject := STRSUBSTNO(text001, "Request No.");
                                   Addressee := 'MD';

                                   UserSetup2.GET(USERID);
                                   SenderName := UserSetup2.Name;
                                   "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                                   'Regards,' + CRLF + CRLF + SenderName;
                                   Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                               END;
                           END;
                       END;
                       IF ("Request Type" = "Request Type"::Manager) THEN BEGIN
                           IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
                               IF UserSetup.GET("2nd Approval") THEN BEGIN
                                   "1st Approval Time" := CURRENTDATETIME;
                                   "Current Pending Person" := "2nd Approval";
                                   ToName := UserSetup."E-Mail";
                                   subject := STRSUBSTNO(text001, "Request No.");
                                   Addressee := 'HOD HR/ADMIN';

                                   UserSetup2.GET(USERID);
                                   SenderName := UserSetup2.Name;
                                   "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                                   'Regards,' + CRLF + CRLF + SenderName;
                                   Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                               END;
                           END;
                       END;

                       IF ("Request Type" = "Request Type"::Branch) THEN BEGIN
                           IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
                               IF UserSetup.GET("2nd Approval") THEN BEGIN
                                   "1st Approval Time" := CURRENTDATETIME;
                                   "Current Pending Person" := "2nd Approval";
                                   ToName := UserSetup."E-Mail";
                                   subject := STRSUBSTNO(text001, "Request No.");
                                   Addressee := 'HOD';

                                   UserSetup2.GET(USERID);
                                   SenderName := UserSetup2.Name;
                                   "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                                   'Regards,' + CRLF + CRLF + SenderName;
                                   Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                               END;
                           END;
                       END;

                       IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") THEN BEGIN
                           IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
                               IF UserSetup.GET("2nd Approval") THEN BEGIN
                                   "1st Approval Time" := CURRENTDATETIME;
                                   "Current Pending Person" := "2nd Approval";
                                   ToName := UserSetup."E-Mail";
                                   subject := STRSUBSTNO(text001, "Request No.");
                                   Addressee := 'HOD HR/ADMIN';

                                   UserSetup2.GET(USERID);
                                   SenderName := UserSetup2.Name;
                                   "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                                   'Regards,' + CRLF + CRLF + SenderName;
                                   Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                               END;
                           END;
                       END;

                       CASE "1st Approval Status" OF
                           "1st Approval Status"::Rejected:
                               BEGIN
                                   "1st Approval Time" := CURRENTDATETIME;
                                   UserSetup2.GET(Requester);
                                   ToName := UserSetup2."E-Mail";
                                   subject := STRSUBSTNO(text003, "Request No.");
                                   Addressee := UserSetup2.Name;

                                   UserSetup.GET(USERID);
                                   SenderName := UserSetup.Name;
                                   "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Please note that your leave request has been rejected.' + CRLF + CRLF + CRLF +
                                   'Regards,' + CRLF + CRLF + SenderName;
                                   Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);

                               END;
                           "1st Approval Status"::"On hold":
                               BEGIN
                                   "1st Approval Time" := CURRENTDATETIME;
                                   UserSetup2.GET(Requester);
                                   ToName := UserSetup2."E-Mail";
                                   subject := STRSUBSTNO(text004, "Request No.");
                                   Addressee := UserSetup2.Name;

                                   UserSetup.GET(USERID);
                                   SenderName := UserSetup.Name;
                                   "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Please note that your leave request is on-hold.' + CRLF + CRLF + CRLF +
                                   'Regards,' + CRLF + CRLF + SenderName;
                                   Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                               END;
                       END;
                   end; */
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

            /*    trigger OnValidate()
               begin
                   CRLF := '';
                   CRLF[1] := 13;
                   CRLF[2] := 10;

                   //IF "2nd Approval" = "Final Approval" THEN
                   //ERROR(text009);
                   IF ("2nd Approval Status" = "2nd Approval Status"::Approved) AND ("Request Type" = "Request Type"::HOD) THEN BEGIN
                       "2nd Approval Time" := CURRENTDATETIME;
                       UserSetup.GET(Requester);
                       ToName := UserSetup."E-Mail";
                       CCName := 'lawal@toyotanigeria.com;' + 'ibidapo-obe@toyotanigeria.com';
                       subject := STRSUBSTNO(text008, "Request No.");
                       Addressee := UserSetup.Name;

                       UserSetup2.GET(USERID);
                       SenderName := UserSetup2.Name;
                       "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Leave request approved and Leave certificate can be generated' + CRLF + CRLF + CRLF +
                       'Regards,' + CRLF + CRLF + SenderName;
                       Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);

                   END;
                   CASE "2nd Approval Status" OF
                       "2nd Approval Status"::Rejected:
                           BEGIN
                               "2nd Approval Time" := CURRENTDATETIME;
                               UserSetup2.GET(Requester);
                               ToName := UserSetup2."E-Mail";
                               CCName := 'lawal@toyotanigeria.com;' + 'ibidapo-obe@toyotanigeria.com';
                               subject := STRSUBSTNO(text003, "Request No.");
                               Addressee := UserSetup2.Name;

                               UserSetup.GET(USERID);
                               SenderName := UserSetup.Name;
                               "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Please note that your reject request has been rejected.' + CRLF + CRLF + CRLF +
                               'Regards,' + CRLF + CRLF + SenderName;
                               Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);

                           END;
                       "2nd Approval Status"::"On hold":
                           BEGIN
                               "2nd Approval Time" := CURRENTDATETIME;
                               UserSetup2.GET(Requester);
                               ToName := UserSetup2."E-Mail";
                               CCName := 'lawal@toyotanigeria.com; ' + 'ibidapo-obe@toyotanigeria.com';
                               subject := STRSUBSTNO(text004, "Request No.");
                               Addressee := UserSetup2.Name;

                               UserSetup.GET(USERID);
                               SenderName := UserSetup.Name;
                               "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Please note that your Leave request is on-hold.' + CRLF + CRLF + CRLF +
                                'Regards,' + CRLF + CRLF + SenderName;
                               Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                           END;
                   END;

                   IF ("2nd Approval Status" = "2nd Approval Status"::Approved) AND ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND
                      ("Send to MD for Approval" = FALSE) THEN BEGIN
                       "2nd Approval Time" := CURRENTDATETIME;
                       UserSetup.GET(Requester);
                       ToName := UserSetup."E-Mail";
                       UserSetup2.GET("1st Approval");
                       CCName := UserSetup2."E-Mail" + ';lawal@toyotanigeria.com;';
                       subject := STRSUBSTNO(text008, "Request No.");
                       Addressee := UserSetup.Name;

                       UserSetup2.GET(USERID);
                       SenderName := UserSetup2.Name;
                       "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Leave request approved and Leave certificate can be generated' + CRLF + CRLF + CRLF +
                       'Regards,' + CRLF + CRLF + SenderName;
                       Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);

                   END;


                   IF ("2nd Approval Status" = "2nd Approval Status"::Approved) AND (("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND
                   ("Send to MD for Approval" = TRUE)) THEN BEGIN
                       IF UserSetup.GET("3rd Approval") THEN BEGIN
                           "2nd Approval Time" := CURRENTDATETIME;
                           "Current Pending Person" := "3rd Approval";
                           ToName := UserSetup."E-Mail";
                           CCName := 'lawal@toyotanigeria.com';
                           subject := STRSUBSTNO(text008, "Request No.");
                           Addressee := ' MD';

                           UserSetup2.GET(USERID);
                           SenderName := UserSetup2.Name;
                           "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                            'Regards,' + CRLF + CRLF + SenderName;
                           Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                       END;
                   END;

                   IF ("2nd Approval Status" = "2nd Approval Status"::Approved) AND ("Request Type" = "Request Type"::Manager) THEN BEGIN
                       IF UserSetup.GET("3rd Approval") THEN BEGIN
                           "2nd Approval Time" := CURRENTDATETIME;
                           "Current Pending Person" := "3rd Approval";
                           ToName := UserSetup."E-Mail";
                           CCName := 'lawal@toyotanigeria.com';
                           subject := STRSUBSTNO(text001, "Request No.");
                           Addressee := 'MD';

                           UserSetup2.GET(USERID);
                           SenderName := UserSetup2.Name;
                           "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                           'Regards,' + CRLF + CRLF + SenderName;
                           Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                       END;
                   END;

                   IF ("2nd Approval Status" = "2nd Approval Status"::Approved) AND ("Request Type" = "Request Type"::Branch) THEN BEGIN
                       IF UserSetup.GET("3rd Approval") THEN BEGIN
                           "2nd Approval Time" := CURRENTDATETIME;
                           "Current Pending Person" := "3rd Approval";
                           ToName := UserSetup."E-Mail";
                           CCName := 'lawal@toyotanigeria.com';
                           subject := STRSUBSTNO(text001, "Request No.");
                           Addressee := 'HOD HR/ADMIN';

                           UserSetup2.GET(USERID);
                           SenderName := UserSetup2.Name;
                           "Mail Body" := 'Dear ' + Addressee + ',' + CRLF + CRLF + 'Kindly approve this leave request.' + CRLF + CRLF + CRLF +
                           'Regards,' + CRLF + CRLF + SenderName;
                           Mail.NewMessage(ToName, CCName, Bcc, subject, "Mail Body", Attachment, TRUE);
                       END;
                   END;

               end; */
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
            Caption = '1st Approval Satues';
            OptionCaption = ' ,On hold,Approved,Rejected';
            OptionMembers = " ","On hold",Approved,Rejected;

            /* trigger OnValidate()
            begin
                CRLF := '';
                CRLF[1] := 13;
                CRLF[2] := 10;
                IF ("3rd Approval Status" ="3rd Approval Status"::Approved) AND ("Request Type"= "Request Type":: Manager) THEN BEGIN
                  "3rd  Approval Time"  := CURRENTDATETIME;
                  UserSetup.GET(Requester);
                  ToName  := UserSetup."E-Mail";
                  UserSetup.GET("1st Approval");
                   CCName :=UserSetup."E-Mail"+ ';lawal@toyotanigeria.com;'+ 'ibidapo-obe@toyotanigeria.com' ;
                  subject := STRSUBSTNO(text002,"Request No.");
                  Addressee := 'HOD';

                  UserSetup.GET(USERID);
                  SenderName :=  UserSetup.Name;
                  "Mail Body" :='Dear ' + Addressee +',' + CRLF + CRLF + 'Leave request approved and Leave certificate can be generated' + CRLF + CRLF + CRLF +
                  'Regards,'+CRLF + CRLF + SenderName;
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);

                END;
                CASE  "3rd Approval Status" OF
                 "3rd Approval Status"::Rejected:
                  BEGIN
                  "3rd  Approval Time"  := CURRENTDATETIME;
                  UserSetup2.GET(Requester);
                  ToName  := UserSetup2."E-Mail";
                  CCName := 'lawal@toyotanigeria.com;'+ 'ibidapo-obe@toyotanigeria.com' ;
                  subject := STRSUBSTNO(text003,"Request No.");
                  Addressee := UserSetup2.Name;

                  UserSetup.GET(USERID);
                  SenderName :=  UserSetup.Name;
                  "Mail Body" :='Dear ' + Addressee +',' + CRLF + CRLF + 'Please note that your reject request has been rejected.' + CRLF + CRLF + CRLF +
                  'Regards,'+CRLF + CRLF + SenderName;
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);

                  END;
                 "3rd Approval Status"::"On hold":
                  BEGIN
                  "3rd  Approval Time" := CURRENTDATETIME;
                  UserSetup2.GET(Requester);
                  ToName  := UserSetup2."E-Mail";
                  CCName := 'lawal@toyotanigeria.com; '+ 'ibidapo-obe@toyotanigeria.com';
                  subject := STRSUBSTNO(text004,"Request No.");
                  Addressee := UserSetup2.Name;

                  UserSetup.GET(USERID);
                  SenderName :=  UserSetup.Name;
                  "Mail Body" := 'Dear ' + Addressee +',' + CRLF + CRLF + 'Please note that your Leave request is on-hold.' + CRLF + CRLF + CRLF +
                  'Regards,'+CRLF + CRLF + SenderName;
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);
                END;
                END;

                IF ("3rd Approval Status" ="3rd Approval Status"::Approved) AND ("Request Type"= "Request Type":: Branch) THEN BEGIN
                  "3rd  Approval Time"  := CURRENTDATETIME;
                  UserSetup.GET(Requester);
                  ToName  := UserSetup."E-Mail";
                  CCName := 'lawal@toyotanigeria.com;'+ 'ibidapo-obe@toyotanigeria.com' ;
                  subject := STRSUBSTNO(text002,"Request No.");

                  UserSetup2.GET(USERID);
                  SenderName :=  UserSetup2.Name;
                  Addressee := UserSetup.Name ;
                  "Mail Body" :='Dear ' + Addressee +',' + CRLF + CRLF + 'Leave request approved and Leave certificate can be generated' + CRLF + CRLF + CRLF +
                   'Regards,'+CRLF + CRLF + SenderName;
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);

                END;
                 
                IF ("3rd Approval Status" ="3rd Approval Status"::Approved) AND (("Request Type"= "Request Type":: "Junior staff - Deputy Manager") AND
                   ("Send to MD for Approval"= TRUE)) THEN BEGIN
                  "3rd  Approval Time"  := CURRENTDATETIME;
                  UserSetup.GET(Requester);
                  ToName  := UserSetup."E-Mail";
                  CCName := 'lawal@toyotanigeria.com;'+ 'ibidapo-obe@toyotanigeria.com' ;
                  subject := STRSUBSTNO(text002,"Request No.");
                  Addressee := UserSetup2.Name;

                  UserSetup2.GET(USERID);
                  SenderName :=  UserSetup2.Name;
                  "Mail Body" :='Dear ' + Addressee +',' + CRLF + CRLF + 'Leave request approved and Leave certificate can be generated' + CRLF + CRLF + CRLF +
                  'Regards,'+CRLF + CRLF + SenderName;
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);

                END;
                
            end;*/
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

            /* trigger OnValidate()
            begin
                CRLF := '';
                CRLF[1] := 13;
                CRLF[2] := 10;

                IF "4th  Approval Status"= "4th  Approval Status"::Approved THEN BEGIN
                  IF UserSetup.GET(Requester) THEN BEGIN
                    "4th Approval Time":= CURRENTDATETIME;
                    ToName  := UserSetup."E-Mail";
                    subject := STRSUBSTNO(text001,"Request No.");
                    Addressee := UserSetup.Name;
                    "Mail Body" := 'Dear ' + Addressee +',' + CRLF + CRLF + 'Kindly approve this pool car request.' + CRLF + CRLF + CRLF +
                    'Regards,';
                    Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);
                  END;
                END;
                CASE "4th  Approval Status" OF
                "4th  Approval Status"::Rejected:
                  BEGIN
                  "4th Approval Time" := CURRENTDATETIME;
                  UserSetup2.GET(Requester);
                  ToName  := UserSetup2."E-Mail";
                  subject := STRSUBSTNO(text003,"Request No.");
                  Addressee := UserSetup2.Name;
                  "Mail Body" := 'Dear ' + Addressee +',' + CRLF + CRLF + 'Please note that your pool car request has been rejected.' + CRLF + CRLF + CRLF +
                  'Regards,';
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);

                  END;
                "4th  Approval Status"::"On hold":
                  BEGIN
                  "4th Approval Time" := CURRENTDATETIME;
                  UserSetup2.GET(Requester);
                  ToName  := UserSetup2."E-Mail";
                  subject := STRSUBSTNO(text004,"Request No.");
                  Addressee := UserSetup2.Name;
                  "Mail Body" := 'Dear ' + Addressee +',' + CRLF + CRLF + 'Please note that your pool car request is on-hold.' + CRLF + CRLF + CRLF +
                  'Regards,';
                  Mail.NewMessage(ToName,CCName,Bcc,subject,"Mail Body",Attachment,TRUE);
                END;
                END;
            end; */
        }
        field(64; "4th Approval Time"; DateTime)
        {
        }
        field(65; "4th Approval's Comment"; Boolean)
        {
        }
        field(66; "Actual Start Date"; Date)
        {

            /*  trigger OnValidate()
             begin
                 //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                 IF "Actual Start Date"=0D THEN
                   BEGIN
                     "Actual Duration" :=0;
                     EXIT;
                   END;

                 IF ("Actual End Date"<"Actual Start Date") AND ("Actual End Date"<>0D) THEN
                    ERROR(FIELDCAPTION("Actual Start Date")+'Must be on or after '+FIELDCAPTION("Actual End Date"));

                 IF "Actual End Date"<>0D THEN
                     "Actual Duration" := GenPCode.GetNoOfDays("Actual Start Date","Actual End Date")
                 ELSE
                   IF "Actual Duration"<>0 THEN
                     "Actual End Date" := GenPCode.GetEndDate("Actual Start Date","Actual Duration");

                 CheckTotalDuration(9);
             end; */
        }
        field(67; "Actual End Date"; Date)
        {

            /*   trigger OnValidate()
              begin
                  //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                  IF "Actual End Date"=0D THEN
                  BEGIN
                    "Actual Duration" :=0;
                    EXIT;
                  END;

                  IF ("Actual End Date"<"Actual Start Date") AND ("Actual Start Date"<>0D) THEN
                     ERROR(FIELDCAPTION("Actual End Date")+'Must be on or before '+FIELDCAPTION("Actual Start Date"));

                  IF "Actual Start Date"<>0D THEN
                    "Actual Duration" := GenPCode.GetNoOfDays("Actual Start Date","Actual End Date")
                  ELSE
                    IF "Actual Duration"<>0 THEN
                      "Actual Start Date" := GenPCode.GetStartDate("Actual End Date","Actual Duration");

                  CheckTotalDuration(9);
              end; */
        }
        field(68; "Actual Duration"; Integer)
        {

            /*      trigger OnValidate()
                 begin
                     //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                     IF "Actual Duration"=0 THEN
                      BEGIN
                        VALIDATE("Actual End Date",0D);
                        EXIT;
                      END;

                     IF ("Actual Start Date"=0D) AND ("Actual End Date"=0D) THEN EXIT;

                     IF "Actual Start Date"<>0D THEN
                       "Actual End Date" := GenPCode.GetEndDate("Actual Start Date","Actual Duration")
                     ELSE
                       "Actual Start Date" := GenPCode.GetStartDate("Actual End Date","Actual Duration");

                     IF  EmpRec.GET("Employee No.") THEN EmpGrpCode := EmpRec."Employee Group";

                     CheckTotalDuration(9);


                     IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                     BEGIN
                       PayRec.FIND('+');
                       PayRec."Entry no" := PayRec."Entry no" + 10;
                       PayRec.INIT;
                       PayRec."Leave Plan No" := "Serial No";
                       PayRec."Payment Date" := TODAY;
                       PayRec."Total Days Paid For" := "No. Days";
                       PayRec.INSERT;
                     END;


                 end; */
        }
        field(69; "Leave Period"; Integer)
        {

            /*   trigger OnValidate()
              begin

                  EmpRec.GET("Employee No.");
                  IF PGrp.GET(EmpRec."Posting Group" ) THEN
                    BEGIN
                      EmpDate := EmpRec."Employment Date";
                      IF (EmpDate = 0D) THEN ERROR('Please specify the employment date for %1',EmpRec.FullName);
                      EmpDay  := DATE2DMY(EmpDate,1);
                      EmpMth  := DATE2DMY(EmpDate,2);
                      EmpYr   := DATE2DMY(EmpDate,3);



                      EmpLeaveYr:= "Leave Period";

                      VALIDATE("Annual Duration",PGrp."Annual Leave Days");
                      VALIDATE("Start Date1",DMY2DATE(EmpDay,EmpMth,EmpLeaveYr));
                      VALIDATE("No. Days1",PGrp."Annual Leave Days");
                    END;

              end; */
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
            /*  CalcFormula = Sum("Leave Payment Rev 2"."Amount Paid" WHERE ("Leave Period"=FIELD("Leave Period"),
                                                                          "Employee No."=FIELD("Employee No.")));
             Editable = false;
             FieldClass = FlowField; */
        }
        field(73; "Business Unit"; Code[10])
        {
            Editable = false;
        }
        field(74; "Global Dimension 2 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));

            trigger OnValidate()
            begin
                //ValidateShortcutDimCode(2, "Global Dimension 2 Code");
                MODIFY;
            end;
        }
        field(75; "Total Leaves Due"; Decimal)
        {
            /*  BlankZero = true;
             CalcFormula = Sum("Leave Plan Lines Rev 2"."Annual Duration" WHERE("Employee No." = FIELD("Employee No."),
                                                                                 "Leave Period" = FIELD("Period Filter"),
                                                                                 "Entry Type" = filter('PLAN')));
             DecimalPlaces = 0 : 0;
             Editable = false;
             FieldClass = FlowField; */
        }
        field(76; "Total Compassionate"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE("Employee No" = FIELD("Employee No."),
                                                      LeaveDate = FIELD("Date Filte"r),
                                                      "Leave Category"=filter('COMP'),
                                                      "Leave Period"=FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(77; "Total Exam"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD("Employee No."),
                                                      LeaveDate=FIELD(Date Filter),
                                                      "Leave Category"=filter('EXAM'),
                                                      "Leave Period"=FIELD("Period Filter")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(78; "Total Others"; Integer)
        {
            /*  BlankZero = true;
             CalcFormula = Count("Leave Roster" WHERE ("Employee No"=FIELD("Employee No."),
                                                       LeaveDate=FIELD(Date Filter),
                                                       Leave Category=CONST(OTHERS),
                                                       Leave Period=FIELD(Period Filter)));
             Editable = false;
             FieldClass = FlowField; */
        }
        field(79; "Total Consuming"; Integer)
        {
            BlankZero = true;
            /* CalcFormula = Count("Leave Roster" WHERE (Employee No=FIELD(Employee No.),
                                                      LeaveDate=FIELD(Date Filter),
                                                      Consuming=CONST(Yes),
                                                      Leave Period=FIELD(Period Filter)));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(80; "Total Annual"; Integer)
        {
            /*  BlankZero = true;
             CalcFormula = Count("Leave Roster" WHERE (Employee No=FIELD(Employee No.),
                                                       LeaveDate=FIELD(Date Filter),
                                                       Leave Category=CONST(ANNUAL),
                                                       Leave Period=FIELD(Period Filter)));
             Editable = false;
             FieldClass = FlowField; */
        }
        field(81; "Total Commuted To Cash"; Integer)
        {
            /* BlankZero = true;
            CalcFormula = Count("Leave Roster" WHERE (Employee No=FIELD(Employee No.),
                                                      LeaveDate=FIELD(Date Filter),
                                                      Leave Category=CONST(CASH),
                                                      Leave Period=FIELD(Period Filter)));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(82; "Start Date1"; Date)
        {

            /*  trigger OnValidate()
             begin
                 //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                 IF "Start Date1"=0D THEN
                   BEGIN
                     "No. Days1" :=0;
                     EXIT;
                   END;

                 IF ("End Date1"<"Start Date1") AND ("End Date1"<>0D) THEN
                    ERROR(FIELDCAPTION("Start Date1")+'Must be on or after '+FIELDCAPTION("End Date1"));

                 IF "End Date1"<>0D THEN
                   "No. Days1" := GenPCode.GetNoOfDays("Start Date1","End Date1")
                 ELSE
                   IF "No. Days1"<>0 THEN
                    "End Date1" := GenPCode.GetEndDate("Start Date1","No. Days1");

                 CheckTotalDuration(1);
             end; */
        }
        field(83; "End Date1"; Date)
        {

            /*  trigger OnValidate()
             begin
                 //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                 IF "End Date1"=0D THEN
                 BEGIN
                   "No. Days1" :=0;
                   EXIT;
                 END;

                 IF ("End Date1"<"Start Date1") AND ("Start Date1"<>0D) THEN ERROR(FORMAT("Start Date1") + ' == ' + FORMAT("End Date1"));
                 //   ERROR(FIELDCAPTION("End Date1")+'Must be on or before '+FIELDCAPTION("Start Date1"));

                 IF "Start Date1"<>0D THEN
                   "No. Days1" := GenPCode.GetNoOfDays("Start Date1","End Date1")
                 ELSE
                   IF "No. Days1"<>0 THEN
                    "Start Date1" := GenPCode.GetStartDate("End Date1","No. Days1");

                 CheckTotalDuration(1);
             end; */
        }
        field(84; "No. Days1"; Integer)
        {

            trigger OnValidate()
            begin
                /* //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');
                
                
                IF "No. Days1"=0 THEN EXIT;
                
                IF ("Start Date1"=0D) AND ("End Date1"=0D) THEN EXIT;
                
                IF "Start Date1"<>0D THEN
                  "End Date1" := GenPCode.GetEndDate("Start Date1","No. Days1")
                ELSE
                  "Start Date1" := GenPCode.GetStartDate("End Date1","No. Days1");
                
                IF  EmpRec.GET("Employee No.") THEN EmpGrpCode := EmpRec."Employee Group";
                
                CheckTotalDuration(1); */

                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */

            end;
        }
        field(85; "Start Date2"; Date)
        {

            /* trigger OnValidate()
              begin
                 //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                 IF "Start Date2"=0D THEN
                   BEGIN
                     "No. Days2" :=0;
                     EXIT;
                   END;

                 IF ("End Date2"<"Start Date2") AND ("End Date2"<>0D) THEN
                    ERROR(FIELDCAPTION("Start Date2")+'Must be on or after '+FIELDCAPTION("End Date2"));

                 IF "End Date2"<>0D THEN
                   "No. Days2" := GenPCode.GetNoOfDays("Start Date2","End Date2")
                 ELSE
                   IF "No. Days2"<>0 THEN
                     "End Date2" := GenPCode.GetEndDate("Start Date2","No. Days2");

                 CheckTotalDuration(1);
             end; */
        }
        field(86; "End Date2"; Date)
        {

            /* trigger OnValidate()
            begin

                IF "End Date2"=0D THEN
                BEGIN
                  "No. Days2" :=0;
                  EXIT;
                END;

                IF ("End Date2"<"Start Date2") AND ("Start Date2"<>0D) THEN
                   ERROR(FIELDCAPTION("End Date2")+'Must be on or before '+FIELDCAPTION("Start Date2"));

                IF "Start Date2"<>0D THEN
                  "No. Days2" := GenPCode.GetNoOfDays("Start Date2","End Date2")
                ELSE
                  IF "No. Days2"<>0 THEN
                    "Start Date2" := GenPCode.GetStartDate("End Date2","No. Days2");


                CheckTotalDuration(1);
            end; */
        }
        field(87; "No. Days2"; Integer)
        {

            trigger OnValidate()
            begin
                /*   //error('There');

                  IF "No. Days2"=0 THEN EXIT;

                  IF ("Start Date2"=0D) AND ("End Date2"=0D) THEN EXIT;

                  IF "Start Date2"<>0D THEN
                    "End Date2" := GenPCode.GetEndDate("Start Date2","No. Days2")
                  ELSE
                    "Start Date2" := GenPCode.GetStartDate("End Date2","No. Days2");

                  IF  EmpRec.GET("Employee No.") THEN EmpGrpCode := EmpRec."Employee Group";

                  CheckTotalDuration(1); */


                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */

            end;
        }
        field(88; "Start Date3"; Date)
        {

            /*  trigger OnValidate()
             begin

                 IF "Start Date3"=0D THEN BEGIN
                 "No. Days3" :=0;
                 EXIT;
                 END;

                 IF ("End Date3"<"Start Date3") AND ("End Date3"<>0D) THEN
                    ERROR(FIELDCAPTION("Start Date3")+'Must be on or after '+FIELDCAPTION("End Date3"));

                 IF "End Date3"<>0D THEN
                   "No. Days3" := GenPCode.GetNoOfDays("Start Date3","End Date3")
                 ELSE
                   IF "No. Days3"<>0 THEN
                     "End Date3" := GenPCode.GetEndDate("Start Date3","No. Days3");

                 CheckTotalDuration(1);
             end; */
        }
        field(89; "End Date3"; Date)
        {

            /*  trigger OnValidate()
             begin

                 IF "End Date3"=0D THEN
                 BEGIN
                   "No. Days3" :=0;
                   EXIT;
                 END;

                 IF ("End Date3"<"Start Date3") AND ("Start Date3"<>0D) THEN
                    ERROR(FIELDCAPTION("End Date3")+'Must be on or before '+FIELDCAPTION("Start Date3"));

                 IF "Start Date3"<>0D THEN
                   "No. Days3" := GenPCode.GetNoOfDays("Start Date3","End Date3")
                 ELSE
                   IF "No. Days3"<>0 THEN
                     "Start Date3" := GenPCode.GetStartDate("End Date3","No. Days3");

                 CheckTotalDuration(1);
             end; */
        }
        field(90; "No. Days3"; Integer)
        {

            trigger OnValidate()
            begin
                /* //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');
                
                //GetAmountDue;
                
                IF "No. Days3"=0 THEN EXIT;
                
                IF ("Start Date3"=0D) AND ("End Date3"=0D) THEN EXIT;
                
                IF "Start Date3"<>0D THEN
                  "End Date3" := GenPCode.GetEndDate("Start Date3","No. Days3")
                ELSE
                  "Start Date3" := GenPCode.GetStartDate("End Date3","No. Days3");
                
                IF  EmpRec.GET("Employee No.") THEN EmpGrpCode := EmpRec."Employee Group";
                
                CheckTotalDuration(1); */

                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */

            end;
        }
        field(91; "Start Date4"; Date)
        {

            /*  trigger OnValidate()
             begin
                 //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                 IF "Start Date4"=0D THEN
                   BEGIN
                     "No. Days4" :=0;
                     EXIT;
                   END;

                 IF ("End Date4"<"Start Date4") AND ("End Date4"<>0D) THEN
                    ERROR(FIELDCAPTION("Start Date4")+'Must be on or after '+FIELDCAPTION("End Date4"));

                 IF "End Date4"<>0D THEN
                     "No. Days4" := GenPCode.GetNoOfDays("Start Date4","End Date4")
                 ELSE
                   IF "No. Days4"<>0 THEN
                     "End Date4" := GenPCode.GetEndDate("Start Date4","No. Days4");

                 CheckTotalDuration(1);
             end; */
        }
        field(92; "End Date4"; Date)
        {

            /* trigger OnValidate()
            begin
                //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                IF "End Date4"=0D THEN
                BEGIN
                  "No. Days4" :=0;
                  EXIT;
                END;

                IF ("End Date4"<"Start Date4") AND ("Start Date4"<>0D) THEN
                   ERROR(FIELDCAPTION("End Date4")+'Must be on or before '+FIELDCAPTION("Start Date4"));

                IF "Start Date4"<>0D THEN
                  "No. Days4" := GenPCode.GetNoOfDays("Start Date4","End Date4")
                ELSE
                  IF "No. Days4"<>0 THEN
                    "Start Date4" := GenPCode.GetStartDate("End Date4","No. Days4");

                CheckTotalDuration(1);
            end; */
        }
        field(93; "No. Days4"; Integer)
        {

            trigger OnValidate()
            begin
                /*  //IF xRec.Registered THEN ERROR('You cannot MODIFY a Registered Leave Record');

                 //GetAmountDue;

                 IF "No. Days4"=0 THEN EXIT;

                 IF ("Start Date4"=0D) AND ("End Date4"=0D) THEN EXIT;

                 IF "Start Date4"<>0D THEN
                   "End Date4" := GenPCode.GetEndDate("Start Date4","No. Days4")
                 ELSE
                   "Start Date4" := GenPCode.GetStartDate("End Date4","No. Days4");

                 IF  EmpRec.GET("Employee No.") THEN EmpGrpCode := EmpRec."Employee Group";

                 CheckTotalDuration(1); */

                /*
                IF ("Leave Category" = 'CASH') AND NOT(Registered) AND ("No. Days" > 0)THEN
                BEGIN
                  PayRec.FIND('+');
                  PayRec."Entry no" := PayRec."Entry no" + 10;
                  PayRec.INIT;
                  PayRec."Leave Plan No" := "Serial No";
                  PayRec."Payment Date" := TODAY;
                  PayRec."Total Days Paid For" := "No. Days";
                  PayRec.INSERT;
                END;
                */

            end;
        }
        field(94; "Employee No."; Code[30])
        {
            TableRelation = Employee."No.";

            trigger OnValidate()
            begin
                IF EmpRec.GET("Employee No.") THEN BEGIN
                    // "Request Type":= EmplyRec."Leave Grade";
                    "Business Unit" := EmpRec."Business Unit";
                    "Global Dimension 1 code" := EmpRec."Global Dimension 1 Code";
                    "Global Dimension 2 Code" := EmpRec."Global Dimension 2 Code";
                    EmpGrpCode := EmpRec."Employee Group";
                END;


                IF ("Entry Type" = "Entry Type"::PLAN) AND (EmpGrpRec.GET(EmpGrpCode)) THEN BEGIN
                    "Amount Due" := 15 * (EmpRec."Basic Salary") / 100;
                END;
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
                IF ("Leave Category" = 'CASUAL') AND ("Actual Duration" > 3) THEN
                    ERROR('Casual leave cannot be more than 3 working days');

                IF ("Request Type" = "Request Type"::HOD) AND ("Leave Category" = 'ANNUAL') AND (("Actual Start Date" - "Entry Date") < 30) THEN
                    ERROR('You can only request for annual Leave 30 days ahead the plan actual start leave date');

                IF ("Request Type" = "Request Type"::Manager) AND ("Leave Category" = 'ANNUAL') AND (("Actual Start Date" - "Entry Date") < 30) THEN
                    ERROR('You can only request for annual Leave 30 days ahead the plan actual start leave date');

                IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Leave Category" = 'ANNUAL') AND (("Actual Start Date" - "Entry Date") < 14) THEN
                    ERROR('You can only request for annual Leave 14 days ahead the plan actual start leave date');

                IF ("Request Type" = "Request Type"::Branch) AND ("Leave Category" = 'ANNUAL') AND (("Actual Start Date" - "Entry Date") < 14) THEN
                    ERROR('You can only request for annual Leave 14 days ahead the plan actual start leave date');

                IF ("Actual Duration") > ("Total Leaves Due" - "Total Consuming") THEN
                    ERROR('Your Leave request is greater than the number of actual leave due');

                IF ("Leave Category" = 'ANNUAL') AND ("Actual Duration" > 15) THEN
                    ERROR('Annual leave cannot be more than 15 working days');
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

    trigger OnInsert()
    begin
        HRSetup.GET;
        IF "Request No." = '' THEN BEGIN
            HRSetup.GET;
            HRSetup.TESTFIELD("Leave Approval No.");
            "Request No." := NoSeriesMgt.GetNextNo(HRSetup."Leave Plan No");

        END;

        UserSetup.GET(USERID);
        "Entry Date" := TODAY;
        "Requester Name" := UserSetup.Name;
        Requester := UserSetup."User ID";
    end;

    var
        HRSetup: Record 5218;
        LeaveReg: Record 50545;
        NoSeriesMgt: Codeunit "No. Series";
        UserSetup: Record 91;
        EmplyRec: Record 5200;
        Mail: Codeunit 397;
        ToName: Text[80];
        CCName: Text[80];
        Attachment: Text[80];
        Opendialog: Boolean;
        Bcc: Text[80];
        subject: Text[100];
        CRLF: Text[2];
        Body: Text[200];
        UserSetup2: Record 91;
        Addressee: Text[50];
        text001: Label 'Leave request    ''%1''  requires your approval';
        text002: Label 'Leave request %1'' has been approved';
        text003: Label 'Leave request  ''%1'' has been rejected';
        text004: Label 'Leave request  ''%1'' is on hold';
        text006: Label 'This document needs your approval.';
        text008: Label 'This document has been approved generate Leave Certificate';
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
        //PGrp: Record "50011";
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


    procedure CheckTotalDuration(Cnt: Integer)
    begin
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
                        ERROR('%1 Have %2 Leave Days Left!!', "Employee No.", OldRemDur);
                END;
        END;
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
    end;
}

