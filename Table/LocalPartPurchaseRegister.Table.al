table 70018 "Local Part Purchase Register"
{

    fields
    {
        field(1; "LPP No."; Code[10])
        {
            Editable = false;
        }
        field(2; "Requester Code"; Code[30])
        {
            Editable = false;
            TableRelation = Customer;
        }
        field(3; "Requester Name"; Text[50])
        {
            Editable = false;
        }
        field(4; "Department Code"; Code[30])
        {
            Editable = false;
        }
        field(5; "Requester Department"; Text[30])
        {
            Editable = false;
        }
        field(6; Date; Date)
        {
            Editable = false;
        }
        field(7; "Supplier's Address"; Text[50])
        {
            NotBlank = false;
        }
        field(8; "Supplier's Name"; Text[30])
        {
            NotBlank = false;
        }
        field(9; "Profoma Invoice No:"; Code[10])
        {
            NotBlank = false;
        }
        field(10; "Justification for purchase"; Text[100])
        {
        }
        field(11; "Total Purchase Value"; Decimal)
        {
            CalcFormula = Sum("LPP Line".Amount WHERE("Document No." = FIELD("LPP No.")));
            FieldClass = FlowField;
        }
        field(12; "HOD Code"; Code[20])
        {
        }
        field(13; "HOD Name"; Text[30])
        {
        }
        field(14; Approved1; Boolean)
        {
        }
        field(15; Approved2; Boolean)
        {
        }
        field(16; "On-Hold1"; Boolean)
        {
        }
        field(17; "On-Hold2"; Boolean)
        {
        }
        field(18; Rejected1; Boolean)
        {
        }
        field(19; Rejected2; Boolean)
        {
            Editable = false;
        }
        field(20; Comment1; Text[70])
        {
        }
        field(21; Comment2; Text[70])
        {
        }
        field(22; "No. Series"; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(23; "User ID"; Code[30])
        {
        }
        field(24; "Send To"; Code[30])
        {
           /*  NotBlank = true;
            TableRelation = IF ("Order Type" = FILTER(<> 'Isolo Store')) "Head of Department"."Head of Department" WHERE("Department Code" = FILTER('05PARTS'))
            ELSE
            IF ("Order Type" = FILTER('Isolo Store')) "Head of Department"."Head of Department" WHERE("Head of Department" = FILTER('TOYOTANIGERIA\ISUEKEBHO')); */
        }
        field(25; Send; Boolean)
        {
            
        }
        field(26; "Sent By"; Code[30])
        {
        }
        field(27; Approved3; Boolean)
        {
        }
        field(28; Rejected3; Boolean)
        {
        }
        field(29; "On-Hold3"; Boolean)
        {
        }
        field(30; Comment3; Text[70])
        {
        }
        field(31; "Head of Department"; Option)
        {
            Description = 'HOD';
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;

        }
        field(32; "Name HOD"; Text[50])
        {
            Description = 'HOD Name';
            Editable = false;
        }
        field(33; "Head of Audit"; Option)
        {
            Description = 'HOD Audit';
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;

           /*  trigger OnValidate()
            begin
                IF Send = FALSE THEN
                    ERROR('The request has not been send for Audit Approval');

                TESTFIELD("Head of Department", "Head of Department"::Approved);
                IF "Compliance check" <> "Compliance check"::Satisfactory THEN
                    ERROR(Text032);
                UserSetup4.GET(USERID);
                IF (UserSetup4."User ID" <> 'TOYOTANIGERIA\ADEWUMI') THEN
                    IF (UserSetup4."User ID" <> 'TOYOTANIGERIA\AGBESUA') THEN
                        IF (UserSetup4."User ID" <> 'TOYOTANIGERIA\JOSHUA') THEN
                            //IF (UserSetup4."User ID" <> 'TOYOTANIGERIA\BRANO') THEN
                            ERROR(Text039);

                IF ("Head of Audit" = "Head of Audit"::Approved) THEN
                    IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                        "Head of Audit" := LPPRec."Head of Audit"::" "
                    ELSE BEGIN
                        CALCFIELDS("Total Purchase Value");
                        VendAmt := "Total Purchase Value";
                        "Supplier Name" := "Supplier's Name";
                        "Supplier Address" := "Supplier's Address";
                        Purpose := "Justification for purchase";

                        UserSetup4.GET(USERID);
                        SendersName := UserSetup4.Initials;
                        "Name Head of Audit" := UserSetup4.Name;
                        SenderAddress := UserSetup4."E-Mail";
                        TimeDate4 := CURRENTDATETIME;

                        IF (VendAmt <= 100000) THEN BEGIN
                            ToAddresses := 'ravinder@toyotanigeria.com';
                            CcAddresses := 'oshunniyi@toyotanigeria.com';
                            Addressee := 'RS,';
                            HODVisible := TRUE;
                            "Procurement Approval" := TRUE;
                        END;

                        IF (VendAmt >= 500000) THEN BEGIN
                            ToAddresses := 'dynamics@toyotanigeria.com';
                            Addressee := 'MD,';
                            MDVisible := TRUE;
                            "MD Approval" := TRUE;
                        END;

                        IF (VendAmt > 100000) AND (VendAmt < 500000) THEN BEGIN
                            ToAddresses := 'bunmi@toyotanigeria.com';
                            Addressee := 'OAO,';
                            GMVisible := TRUE;
                            "GM Approval" := TRUE;
                        END;

                        // WITH TempEmailItem DO BEGIN
                            "Send to" := ToAddresses;
                            "Send CC" := SenderAddress;
                            "Send BCC" := '';
                            Subject := STRSUBSTNO(Text001, "LPP No.");

                            CRLF := '';
                            CRLF[1] := 13;
                            CRLF[2] := 10;

                            // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                            BodyStream.WRITETEXT(Text002 + ' ' + Addressee);
                            BodyStream.WRITETEXT(CRLF + CRLF);
                            BodyStream.WRITETEXT(STRSUBSTNO(Text003, "LPP No.") + CRLF + CRLF +
                            Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                            Text015 + FORMAT("Supplier Address") + CRLF +
                            Text020 + FORMAT(Purpose) + CRLF + CRLF +
                            Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                            CRLF + CRLF +
                            Text004 + CRLF);
                            BodyStream.WRITETEXT(SendersName);
                            BodyStream.WRITETEXT(CRLF + CRLF);
                            BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                            // Body := BodyBlob.Blob;
                            // Send(FALSE);
                        END;
                    END;

                IF ("Head of Audit" = "Head of Audit"::"On-hold") THEN
                    IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                        "Head of Audit" := LPPRec."Head of Audit"::" "
                    ELSE BEGIN
                        UserSetup.GET("Sent By");
                        ToAddresses := UserSetup."E-Mail";
                        Addressee := UserSetup.Initials;
                        CcAddresses := '';
                        BccAddresses := '';
                        Subject := STRSUBSTNO(Text010, "LPP No.");
                        UserSetup4.GET(USERID);
                        SendersName := UserSetup4.Initials;
                        "Name Head of Audit" := UserSetup4.Name;
                        SenderAddress := UserSetup4."E-Mail";
                        TimeDate4 := CURRENTDATETIME;

                        // WITH TempEmailItem DO BEGIN
                            "Send to" := ToAddresses;
                            "Send CC" := SenderAddress;
                            "Send BCC" := '';
                            Subject := STRSUBSTNO(Text010, "LPP No.");

                            CRLF := '';
                            CRLF[1] := 13;
                            CRLF[2] := 10;

                            // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                            BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                            BodyStream.WRITETEXT(CRLF + CRLF);
                            BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                            Text004 + CRLF);
                            BodyStream.WRITETEXT(SendersName);
                            BodyStream.WRITETEXT(CRLF + CRLF);
                            BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                            // Body := BodyBlob.Blob;
                            // Send(FALSE);
                        //END;
                    END;


                IF ("Head of Audit" = "Head of Audit"::Rejected) THEN
                    IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                        "Head of Audit" := LPPRec."Head of Audit"::" "
                    ELSE BEGIN
                        UserSetup.GET("Sent By");
                        ToAddresses := UserSetup."E-Mail";
                        Addressee := UserSetup.Initials;
                        CcAddresses := '';
                        BccAddresses := '';
                        Subject := STRSUBSTNO(Text018, "LPP No.");
                        UserSetup4.GET(USERID);
                        SendersName := UserSetup4.Initials;
                        "Name Head of Audit" := UserSetup4.Name;
                        SenderAddress := UserSetup4."E-Mail";
                        TimeDate4 := CURRENTDATETIME;

                        // WITH TempEmailItem DO BEGIN
                            "Send to" := ToAddresses;
                            "Send CC" := SenderAddress;
                            "Send BCC" := '';
                            Subject := STRSUBSTNO(Text018, "LPP No.");

                            CRLF := '';
                            CRLF[1] := 13;
                            CRLF[2] := 10;

                            // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                            BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                            BodyStream.WRITETEXT(CRLF + CRLF);
                            BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                            Text004 + CRLF);
                            BodyStream.WRITETEXT(SendersName);
                            BodyStream.WRITETEXT(CRLF + CRLF);
                            BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                            // Body := BodyBlob.Blob;
                            // Send(FALSE);
                        END;
                        Rejected1 := TRUE;
                    END;
            end; */
        }
        field(34; "Name Head of Audit"; Text[50])
        {
            Description = 'HOD Audit Name';
            Editable = false;
        }
        field(35; "Managing Director"; Option)
        {
            Description = 'MD';
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;

            /* trigger OnValidate()
            begin
                CRLF := '';
                CRLF[1] := 13;
                CRLF[2] := 10;

                IF "Order Type" <> "Order Type"::"Isolo Store" THEN BEGIN
                    TESTFIELD("Head of Audit", "Head of Audit"::Approved);

                    IF "Managing Director" = "Managing Director"::Approved THEN
                        IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                            "Managing Director" := LPPRec."Managing Director"::" "
                        ELSE BEGIN
                            UserSetup.GET("Sent By");
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            Addressee := UserSetup.Initials;
                            UserSetup2.GET("Send To");
                            ToAddresses := UserSetup."E-Mail";
                            CcAddresses := UserSetup2."E-Mail";
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text025, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "Name MD" := UserSetup4.Name;
                            TimeDate7 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress + ';' + CcAddresses;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text025, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text024, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text029) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            "Genarate LPO" := TRUE;
                        END;

                    IF "Managing Director" = "Managing Director"::"On-hold" THEN
                        IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                            "Managing Director" := LPPRec."Managing Director"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";

                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name MD" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate7 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                        END;

                    IF "Managing Director" = "Managing Director"::Rejected THEN
                        IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                            "Managing Director" := LPPRec."Managing Director"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name MD" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate7 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;


                IF "Order Type" = "Order Type"::"Isolo Store" THEN BEGIN
                    IF "Managing Director" = "Managing Director"::Approved THEN
                        IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                            "Managing Director" := LPPRec."Managing Director"::" "
                        ELSE BEGIN
                            UserSetup.GET("Sent By");
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            Addressee := UserSetup.Initials;
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";

                            UserSetup2.GET("Send To");
                            ToAddresses := UserSetup2."E-Mail";
                            CcAddresses := 'albert@toyotanigeria.com;adewumi@toyotanigeria.com;agbesua@toyotanigeria.com';
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text025, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "Name MD" := UserSetup4.Name;
                            TimeDate7 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress + ';' + CcAddresses;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text025, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text024, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text029) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            "Genarate LPO" := TRUE;
                        END;

                    IF "Managing Director" = "Managing Director"::"On-hold" THEN
                        IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                            "Managing Director" := LPPRec."Managing Director"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name MD" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate7 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                        END;

                    IF "Managing Director" = "Managing Director"::Rejected THEN
                        IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                            "Managing Director" := LPPRec."Managing Director"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name MD" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate7 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;
            end; */
        }
        field(36; "Name MD"; Text[50])
        {
            Description = 'MD Name';
            Editable = false;
        }
        field(37; "General Manager"; Option)
        {
            Description = 'GM';
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;

     /*        trigger OnValidate()
            begin
                IF "Order Type" <> "Order Type"::"Isolo Store" THEN BEGIN
                    TESTFIELD("Head of Audit", "Head of Audit"::Approved);
                    IF "General Manager" = "General Manager"::Approved THEN
                        IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                            "General Manager" := LPPRec."General Manager"::" "
                        ELSE BEGIN
                            UserSetup.GET("Sent By");
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup2.GET("Send To");
                            ToAddresses := UserSetup2."E-Mail";
                            CcAddresses := 'albert@toyotanigeria.com;adewumi@toyotanigeria.com;agbesua@toyotanigeria.com';
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text025, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "Name GM" := UserSetup4.Name;
                            TimeDate6 := CURRENTDATETIME;
                            Addressee := UserSetup.Initials;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress + ';' + CcAddresses;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text025, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text024, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text029) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            "Genarate LPO" := TRUE;
                        END;

                    IF "General Manager" = "General Manager"::"On-hold" THEN
                        IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                            "General Manager" := LPPRec."General Manager"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name GM" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate6 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                        END;

                    IF "General Manager" = "General Manager"::Rejected THEN
                        IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                            "General Manager" := LPPRec."General Manager"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name GM" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate6 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;

                IF "Order Type" = "Order Type"::"Isolo Store" THEN BEGIN
                    IF "General Manager" = "General Manager"::Approved THEN
                        IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                            "General Manager" := LPPRec."General Manager"::" "
                        ELSE BEGIN
                            UserSetup.GET("Sent By");
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup2.GET("Send To");
                            ToAddresses := UserSetup2."E-Mail";
                            CcAddresses := 'albert@toyotanigeria.com;adewumi@toyotanigeria.com;agbesua@toyotanigeria.com';
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text025, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "Name GM" := UserSetup4.Name;
                            TimeDate6 := CURRENTDATETIME;
                            Addressee := UserSetup.Initials;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress + ';' + CcAddresses;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text025, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text024, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text029) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            "Genarate LPO" := TRUE;
                        END;

                    IF "General Manager" = "General Manager"::"On-hold" THEN
                        IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                            "General Manager" := LPPRec."General Manager"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name GM" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate6 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                        END;

                    IF "General Manager" = "General Manager"::Rejected THEN
                        IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                            "General Manager" := LPPRec."General Manager"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Name GM" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate6 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;
            end; */
        }
        field(38; "Name GM"; Text[50])
        {
            Description = 'GM Name';
            Editable = false;
        }
        field(39; "HOD's Part Procurement Appr."; Option)
        {
            Description = 'Procurement Approval';
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;

           /*  trigger OnValidate()
            begin
                IF "Order Type" <> "Order Type"::"Isolo Store" THEN BEGIN

                    TESTFIELD("Head of Audit", "Head of Audit"::Approved);

                    IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::Approved THEN
                        IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                            "HOD's Part Procurement Appr." := LPPRec."HOD's Part Procurement Appr."::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text019, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "HOD's Part  Appr. Name" := UserSetup4.Name;
                            TimeDate5 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text019, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text012, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text028) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                 Body := BodyBlob.Blob;
                                 Send(FALSE);
                            END;
                            Float := TRUE;
                        END;

                    IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::"On-hold" THEN
                        IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                            "HOD's Part Procurement Appr." := LPPRec."HOD's Part Procurement Appr."::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "HOD's Part  Appr. Name" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate5 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                        END;

                    IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::Rejected THEN
                        IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                            "HOD's Part Procurement Appr." := LPPRec."HOD's Part Procurement Appr."::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "HOD's Part  Appr. Name" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate5 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;


                            Rejected1 := TRUE;
                        END;
                END;


                IF "Order Type" = "Order Type"::"Isolo Store" THEN BEGIN
                    TESTFIELD("Send To", 'TOYOTANIGERIA\ISUEKEBHO');
                    //TESTFIELD("Send To",'TOYOTANIGERIA\UZONWANNE');
                    TESTFIELD("Compliance check", "Compliance check"::Satisfactory);

                    IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::Approved THEN
                        IF NOT CONFIRM('Are you sure you want to APPROVE', FALSE) THEN
                            "HOD's Part Procurement Appr." := LPPRec."HOD's Part Procurement Appr."::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            CcAddresses := '';
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text019, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "HOD's Part  Appr. Name" := UserSetup4.Name;
                            TimeDate5 := CURRENTDATETIME;
                            Addressee := UserSetup.Initials;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text019, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text012, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text028) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Float := TRUE;
                        END;

                    IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::"On-hold" THEN
                        IF NOT CONFIRM('Are you sure you want to place ON HOLD', FALSE) THEN
                            "HOD's Part Procurement Appr." := LPPRec."HOD's Part Procurement Appr."::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "HOD's Part  Appr. Name" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate5 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                        END;

                    IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::Rejected THEN
                        IF NOT CONFIRM('Are you sure you want to Reject', FALSE) THEN
                            "HOD's Part Procurement Appr." := LPPRec."HOD's Part Procurement Appr."::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "HOD's Part  Appr. Name" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate5 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + ' ' + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text017, "LPP No.") + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;
            end; */
        }
        field(40; "HOD's Part  Appr. Name"; Text[30])
        {
            Description = 'Procurement Approval Name';
            Editable = false;
        }
        field(41; "Compliance check"; Option)
        {
            Description = 'Compliance';
            OptionCaption = ' ,Satisfactory,Not Satisfactory';
            OptionMembers = " ",Satisfactory,"Not Satisfactory";

           /*  trigger OnValidate()
            begin
                CRLF := '';
                CRLF[1] := 13;
                CRLF[2] := 10;

                TESTFIELD(Send, TRUE);
                TESTFIELD("Head of Department", "Head of Department"::Approved);

                IF "Order Type" <> "Order Type"::"Isolo Store" THEN BEGIN
                    UserSetup4.GET(USERID);
                    IF NOT UserSetup4."Audit Service Approval" THEN
                        ERROR(Text033);
                    IF "Compliance check" = "Compliance check"::Satisfactory THEN
                        IF NOT CONFIRM('Are you sure you this is SATISFACTORY', FALSE) THEN
                            "Compliance check" := LPPRec."Compliance check"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            ToAddresses := 'adewumi@toyotanigeria.com';
                            CcAddresses := 'agbesua@toyotanigeria.com';
                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text001, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "Confirmed By" := UserSetup4.Name;
                            TimeDate3 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress + ';' + CcAddresses;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text001, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + 'STA,');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text021, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text030) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Float := TRUE;
                            HoDAuditApproval := TRUE;
                        END;

                    IF "Compliance check" = "Compliance check"::"Not Satisfactory" THEN
                        IF NOT CONFIRM('Are you sure you want to select NOT SATISFACTORY', FALSE) THEN
                            "Compliance check" := LPPRec."Compliance check"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";
                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Confirmed By" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate3 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text030) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;



                IF "Order Type" = "Order Type"::"Isolo Store" THEN BEGIN

                    IF "Compliance check" = "Compliance check"::Satisfactory THEN
                        IF NOT CONFIRM('Are you sure you this is SATISFACTORY', FALSE) THEN
                            "Compliance check" := LPPRec."Compliance check"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";

                            IF "Total Purchase Value" <= 100000 THEN BEGIN
                                ToAddresses := 'isuekebho@toyotanigeria.com';
                                CcAddresses := 'uzonwanne@toyotanigeria.com';
                                HODVisible := TRUE;
                                "Procurement Approval" := TRUE;
                            END ELSE
                                IF ("Total Purchase Value" > 100001) AND ("Total Purchase Value" < 500000) THEN BEGIN
                                    ToAddresses := 'bunmi@toyotanigeria.com';
                                    CcAddresses := 'paa@toyotanigeria.com';
                                    GMVisible := TRUE;
                                    "GM Approval" := TRUE;
                                END ELSE
                                    IF "Total Purchase Value" >= 500000 THEN BEGIN
                                        ToAddresses := 'kunle_ade-ojo@toyotanigeria.com';
                                        CcAddresses := 'bunmi@toyotanigeria.com';
                                        MDVisible := TRUE;
                                        "MD Approval" := TRUE;
                                    END;

                            BccAddresses := '';
                            Subject := STRSUBSTNO(Text001, "LPP No.");
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            SenderAddress := UserSetup4."E-Mail";
                            "Confirmed By" := UserSetup4.Name;
                            TimeDate3 := CURRENTDATETIME;

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress + ';' + CcAddresses;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text001, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + 'Sir,');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text021, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text030) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            HoDAuditApproval := TRUE;
                        END;

                    IF "Compliance check" = "Compliance check"::"Not Satisfactory" THEN
                        IF NOT CONFIRM('Are you sure you want to select NOT SATISFACTORY', FALSE) THEN
                            "Compliance check" := LPPRec."Compliance check"::" "
                        ELSE BEGIN
                            CALCFIELDS("Total Purchase Value");
                            VendAmt := "Total Purchase Value";
                            "Supplier Name" := "Supplier's Name";
                            "Supplier Address" := "Supplier's Address";
                            Purpose := "Justification for purchase";


                            UserSetup.GET("Sent By");
                            ToAddresses := UserSetup."E-Mail";
                            Addressee := UserSetup.Initials;
                            CcAddresses := '';
                            BccAddresses := '';
                            UserSetup4.GET(USERID);
                            SendersName := UserSetup4.Initials;
                            "Confirmed By" := UserSetup4.Name;
                            SenderAddress := UserSetup4."E-Mail";
                            TimeDate3 := CURRENTDATETIME;
                            Subject := STRSUBSTNO(Text006, "LPP No.");

                            // WITH TempEmailItem DO BEGIN
                                "Send to" := ToAddresses;
                                "Send CC" := SenderAddress;
                                "Send BCC" := '';
                                Subject := STRSUBSTNO(Text006, "LPP No.");

                                CRLF := '';
                                CRLF[1] := 13;
                                CRLF[2] := 10;

                                // BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                                BodyStream.WRITETEXT(Text002 + Addressee + ',');
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT(STRSUBSTNO(Text011, "LPP No.") + CRLF + CRLF +
                                STRSUBSTNO(Text030) + CRLF + CRLF +
                                Text014 + FORMAT("Supplier Name") + CRLF + CRLF +
                                Text015 + FORMAT("Supplier Address") + CRLF +
                                Text020 + FORMAT(Purpose) + CRLF + CRLF +
                                Text016 + FORMAT(VendAmt) + CRLF + CRLF +
                                CRLF + CRLF +
                                Text004 + CRLF);
                                BodyStream.WRITETEXT(SendersName);
                                BodyStream.WRITETEXT(CRLF + CRLF);
                                BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                                // Body := BodyBlob.Blob;
                                // Send(FALSE);
                            END;
                            Rejected1 := TRUE;
                        END;
                END;
            end; */
        }
        field(42; "Confirmed By"; Text[30])
        {
            Description = 'Compliance Name';
            Editable = false;
        }
        field(43; DateTime; DateTime)
        {
            Description = 'Requester';
            Editable = false;
        }
        field(44; TimeDate1; DateTime)
        {
            Description = 'Sender';
            Editable = true;
        }
        field(45; TimeDate2; DateTime)
        {
            Description = 'HOD';
            Editable = false;
        }
        field(46; TimeDate3; DateTime)
        {
            Description = 'Compliance';
            Editable = false;
        }
        field(47; TimeDate4; DateTime)
        {
            Description = 'HOD Audit';
            Editable = false;
        }
        field(48; TimeDate5; DateTime)
        {
            Description = 'HOD Payment';
            Editable = false;
        }
        field(49; TimeDate6; DateTime)
        {
            Description = 'GM';
            Editable = false;
        }
        field(50; HODVisible; Boolean)
        {
        }
        field(51; GMVisible; Boolean)
        {
        }
        field(52; MDVisible; Boolean)
        {
        }
        field(53; SendEditable; Boolean)
        {
        }
        field(54; HoDPartApproval; Boolean)
        {
        }
        field(55; HoDAuditApproval; Boolean)
        {
        }
        field(56; ComplianceCheck; Boolean)
        {
        }
        field(57; "Procurement Approval"; Boolean)
        {
        }
        field(58; GenaratePayment; Boolean)
        {
        }
        field(59; "Genarate LPO"; Boolean)
        {
        }
        field(60; Float; Boolean)
        {
        }
        field(61; "Procurement Approved"; Boolean)
        {
        }
        field(62; Closed; Boolean)
        {
        }
        field(63; TimeDate7; DateTime)
        {
            Description = 'MD';
            Editable = false;
        }
        field(64; "HOD Payment"; Option)
        {
            Description = 'HOD Payment';
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;

            trigger OnValidate()
            begin

                //CRLF := '';
                //CRLF[1] := 13;
                //CRLF[2] := 10;
                //TESTFIELD("HOD's Audit Approval","HOD's Audit Approval"::Approved);

                //IF "HOD's Approval" = "HOD's Approval" ::Approved THEN BEGIN
                //   LppLine.SETRANGE("Document No.","LPP No.");
                //   LppLine.SETRANGE(Preferred,TRUE);
                //  IF LppLine.FINDFIRST THEN BEGIN
                //      LppLine.CALCFIELDS(Amount);
                //      Amount:=LppLine.Amount ;
                //      "Supplier Name":=LppLine."Supplier's Name";
                //      "Supplier Address":=LppLine."Supplier's Address";
                //      Purpose:="Purchase For Justification";
                //   END;
                //
                //    UserSetup.GET("User ID");
                //    ToAddresses := UserSetup."E-Mail"  ;
                //    CcAddresses :=  '';
                //    BccAddresses := '';
                //    Subject := STRSUBSTNO(Text006,"LPP No.");
                //    UserSetup4.GET(USERID);
                //    SendersName := UserSetup4.Initials;
                //    "HOD's Approval Name"  := UserSetup4.Name;
                //    TimeDate1 := CURRENTDATETIME;
                //    Body := Text002 + UserSetup.Initials + CRLF + CRLF +
                //    STRSUBSTNO(Text012,"LPP No.") + CRLF + CRLF + CRLF +
                //   // STRSUBSTNO(Text003,"LPP No.") + CRLF + CRLF + CRLF +
                //    Text014 + FORMAT("Supplier Name") + CRLF +
                //    Text015 + FORMAT("Supplier Address") + CRLF +
                //    Text020 + FORMAT(Purpose)  + CRLF +
                //    Text016 + FORMAT(Amount) + CRLF +
                //
                //    CRLF + CRLF + CRLF +
                //    Text004 + CRLF + CRLF + SendersName;
                //
                // IF CURRENTCLIENTTYPE = CLIENTTYPE::Windows THEN
                //    Mail.NewMessage(ToAddresses,CcAddresses,BccAddresses,Subject,Body,'',TRUE);
                //  IF CURRENTCLIENTTYPE = CLIENTTYPE::Web THEN BEGIN
                //    SMTPMail.CreateMessage(SendersName,SenderAddress,ToAddresses,Subject,Body,TRUE);
                //    SMTPMail.Send;
                //    MESSAGE(Text013);
                //  END;
                //     "Genarate LPO":= TRUE;
                //     Float:= TRUE;
                //  END;

                //IF "HOD's Approval" = "HOD's Approval"::"On-hold" THEN BEGIN
                //   LppLine.SETRANGE("Document No.","LPP No.");
                //   LppLine.SETRANGE(Preferred,TRUE);
                //  IF LppLine.FINDFIRST THEN BEGIN
                //      LppLine.CALCFIELDS(Amount);
                //      Amount:=LppLine.Amount ;
                //      "Supplier Name":=LppLine."Supplier's Name";
                //      "Supplier Address":=LppLine."Supplier's Address";
                //      Purpose:="Purchase For Justification";
                //   END;

                //
                //   UserSetup.GET("Sent By");
                //   ToAddresses := UserSetup."E-Mail";
                //   Addressee := UserSetup.Initials ;
                //   CcAddresses :=  '';
                //   BccAddresses := '';
                //   UserSetup4.GET(USERID);
                //   SendersName := UserSetup4.Initials;
                //   "HOD's Approval Name"  := UserSetup4.Name;
                //   SenderAddress := UserSetup4."E-Mail";
                //   TimeDate1 := CURRENTDATETIME;
                //   Subject := STRSUBSTNO(Text006,"LPP No.");
                //   Body := Text002 + Addressee + ',' + CRLF + CRLF +
                //   STRSUBSTNO(Text011,"LPP No.") + CRLF + CRLF + CRLF +
                //    Text014 + FORMAT("Supplier Name") + CRLF +
                //    Text015 + FORMAT("Supplier Address") + CRLF +
                //    Text020 + FORMAT(Purpose)  + CRLF +
                //    Text016 + FORMAT(Amount) + CRLF +

                //   CRLF + CRLF + CRLF +
                //   Text004 + CRLF + CRLF + SendersName;
                //  IF CURRENTCLIENTTYPE = CLIENTTYPE::Windows THEN
                //    Mail.NewMessage(ToAddresses,CcAddresses,BccAddresses,Subject,Body,'',TRUE);
                //  IF CURRENTCLIENTTYPE = CLIENTTYPE::Web THEN BEGIN
                //    SMTPMail.CreateMessage(SendersName,SenderAddress,ToAddresses,Subject,Body,TRUE);
                //    SMTPMail.Send;
                //    MESSAGE(Text013);

                //  END;
                //END;

                //IF "HOD's Approval" = "HOD's Approval"::Rejected THEN BEGIN
                //   LppLine.SETRANGE("Document No.","LPP No.");
                //   LppLine.SETRANGE(Preferred,TRUE);
                //  IF LppLine.FINDFIRST THEN BEGIN
                //      LppLine.CALCFIELDS(Amount);
                //      Amount:=LppLine.Amount ;
                //      "Supplier Name":=LppLine."Supplier's Name";
                //      "Supplier Address":=LppLine."Supplier's Address";
                //      Purpose:="Purchase For Justification";
                //   END;

                //
                //    UserSetup.GET("Sent By");
                //    ToAddresses := UserSetup."E-Mail";
                //    Addressee :=UserSetup.Initials ;
                //    CcAddresses :=  '';
                //    BccAddresses := '';
                //    UserSetup4.GET(USERID);
                //    SendersName := UserSetup4.Initials ;
                //    "Name HOD"  := UserSetup4.Name;
                //    SenderAddress := UserSetup4."E-Mail";
                //    TimeDate1 := CURRENTDATETIME;
                //    Subject := STRSUBSTNO(Text006,"LPP No.");
                //
                //    Body := Text002 + Addressee + ',' + CRLF + CRLF +
                //    STRSUBSTNO(Text017,"LPP No.") + CRLF + CRLF + CRLF +
                //    Text014 + FORMAT("Supplier Name") + CRLF +
                //    Text015 + FORMAT("Supplier Address") + CRLF +
                //    Text020 + FORMAT(Purpose)  + CRLF +
                //    Text016 + FORMAT(Amount) + CRLF +

                //   CRLF + CRLF + CRLF +
                //   Text004 + CRLF + CRLF + SendersName;
                //  IF CURRENTCLIENTTYPE = CLIENTTYPE::Windows THEN
                //    Mail.NewMessage(ToAddresses,CcAddresses,BccAddresses,Subject,Body,'',TRUE);
                //  IF CURRENTCLIENTTYPE = CLIENTTYPE::Web THEN BEGIN
                //    SMTPMail.CreateMessage(SendersName,SenderAddress,ToAddresses,Subject,Body,TRUE);
                //    SMTPMail.Send;
                //    MESSAGE(Text013);
                //  //Reject:= TRUE;
                //  END;
                //  Reject:= TRUE;
                //END;
            end;
        }
        field(65; "Name HOD Payment"; Text[50])
        {
            Description = 'HOD Name Payment';
            Editable = false;
        }
        field(66; "Voucher Raised"; Boolean)
        {
        }
        field(67; "GM Approval"; Boolean)
        {
        }
        field(68; "MD Approval"; Boolean)
        {
        }
        field(69; "Order Type"; Option)
        {
            OptionCaption = ' ,Warranty,Stock Order,Dealer Emergency order,Dojo Store Order,SPV Order,Isolo Store';
            OptionMembers = " ",Warranty,"Stock Order","Dealer Emergency order","Dojo Store Order","SPV Order","Isolo Store";
        }
        field(70; Rejected; Boolean)
        {
        }
        field(71; "TCOF No."; Code[15])
        {
        }
        field(72; "RFQ No."; Code[15])
        {
        }
        field(73; "Suppliers Code"; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; "LPP No.")
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
        IF "LPP No." = '' THEN BEGIN
            PurchSetup.GET;
            PurchSetup.TESTFIELD("LPP Nos.");
            //NoSeriesMgt.InitSeries(PurchSetup."LPP Nos.", xRec."No. Series", 0D, "LPP No.", "No. Series");
        END;

        UserSetup.GET(USERID);
        Date := TODAY;
        "Requester Name" := UserSetup.Name;
        "Requester Code" := UserSetup."User ID";
        "Requester Department" := UserSetup.Department;
        "User ID" := UserSetup."User ID";
        DateTime := CURRENTDATETIME;
    end;

    var
        PurchSetup: Record "Purchases & Payables Setup";
        //NoSeriesMgt: Codeunit NoSeriesManagement;
        Employee: Record Employee;
        DimValue: Record "Dimension Value";
        //Mail: Codeunit Mail;
        ToAddresses: Text;
        CcAddresses: Text[200];
        BccAddresses: Text[100];
        Subject: Text[150];
        Body: Text[500];
        AttachFilename: Text;
        ShowNewMailDialogOnSend: Boolean;
        UserSetup: Record "User Setup";
        UserSetup2: Record "User Setup";
        EditHOD: Boolean;
        EditAudit: Boolean;
        EditGM: Boolean;
        EditMD: Boolean;
        VisibleGM: Boolean;
        VisibleMD: Boolean;
        CRLF: Text[2];
        VendName: Text[150];
        VendAddr: Text[100];
        VendAmt: Decimal;
        UserSetup4: Record "User Setup";
        SendersName: Text[200];
        Addressee: Text[50];
        //SMTPMail: Codeunit "400";
        SenderAddress: Text[200];
        EditSend: Boolean;
        "Supplier Name": Text;
        "Supplier Address": Text;
        Purpose: Text;
        Amount: Decimal;
        Text001: Label '%1  requires your approval  for Local Parts Procurement.';
        Text002: Label 'Dear ';
        Text003: Label 'The document No. %1 for local part purchase  requires your Procurement approval.';
        Text004: Label 'Regards,';
        Text005: Label 'Mail sent successfully.';
        Text006: Label 'This document No. %1 requires a compliance check :';
        Text007: Label 'You cannot approvee this Transaction.Kindly contact your system Administrator';
        Text008: Label 'Mail sent successfully.';
        Text009: Label 'You are not an auditor. Please contact your system administrator.';
        Text010: Label '%1  is on hold.';
        Text011: Label 'The above Document No. %1  has been placed on hold.';
        Text012: Label 'The Local  part  purchase  with Document No. %1 has been approved.';
        Text013: Label 'Mail sent successfully.';
        Text014: Label 'Vendor: ';
        Text015: Label 'Address: ';
        Text016: Label 'Amount: ';
        Text017: Label 'The Local part  purchase with document No. %1 has been rejected.';
        Text018: Label '%1  is rejected.';
        Text019: Label 'Local part purchase Document No.%1 has been Approved:';
        Text020: Label 'Purpose:';
        Text022: Label 'This document requires a compliance check.';
        Text021: Label 'Compliance Check %1  is Satisfactory.';
        Text023: Label 'Local part purchase request for  SPV requires your approval';
        LPPLine: Record "LPP Line";
        Text024: Label 'The Local  part  purchase  with Document No. %1 has been approved. ';
        Text025: Label '%1  requires your approval to  Procure and  Fianance &Account  to process payment:';
        Text026: Label '%1  requires your approval';
        Text027: Label 'The document No. %1 for local part purchase  requires approval to process local parts procurement.';
        Text028: Label ' Kindly Proceed to make payment from the departmental float .';
        Text029: Label 'Kindly Proceed to generate an LPO and Finance & Account to process payment.';
        Text030: Label 'Kindly approve the Local part procurement document.';
        Text031: Label 'This Local Purchase is not for your location';
        Text032: Label 'Requester needs to confirm the service delivery before you can proceed.';
        Text033: Label 'You are not an auditor. Please contact your system administrator.';
        Text039: Label 'You do not have permission to perform this function. Contact your system administrator.';
        Initials: Text[10];
        TempEmailItem: Record "Email Item" temporary;
        //EmailBody: Record "TempBlob";
        BodyTxt: Text;
        //BodyBlob: Record "TempBlob";
        BodyStream: OutStream;
        SenderInitial: Text;
        LPPRec: Record "Local Part Purchase Register";
}

