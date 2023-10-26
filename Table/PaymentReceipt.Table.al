table 50103 "Payment/Receipt."
{
    DataCaptionFields = "Document Type", "No.";

    fields
    {
        field(1; "No."; Code[20])
        {

            trigger OnValidate()
            begin
                /*IF "No." <> xRec."No." THEN BEGIN
                  GenSetup.GET;
                  NoSeriesMgt.TestManual(GetNoSeriesCode);
                  "No. Series" := '';
                END;
                */

            end;
        }
        field(2; "Document Type"; Option)
        {
            OptionCaption = 'Receipt,Requisition,Journal,e-Pay,e-Receipt';
            OptionMembers = Receipt,Requisition,Journal,"e-Pay","e-Receipt";
        }
        field(3; "Cash/Cheque"; Option)
        {
            OptionMembers = Cash,Cheque;
        }
        field(4; "Account Type"; Option)
        {
            OptionCaption = 'G/L Account,Customer,Supplier,Bank,Fixed Asset,Staff,LC';
            OptionMembers = "G/L Account",Customer,Supplier,Bank,"Fixed Asset",Staff,LC;

            /*  trigger OnValidate()
             begin
                 IF xRec."Account Type" <> "Account Type" THEN BEGIN
                     "Account No." := '';
                     "Account Description" := '';
                 END;
             end;
         }
         field(5; "Account No."; Code[20])
         {
             TableRelation = IF (Account Type=CONST(G/L Account)) "G/L Account".No. WHERE (Blocked=FILTER(No),
                                                                                           Account Type=CONST(Posting))
                                                                                           ELSE IF (Account Type=CONST(Customer)) Customer.No. WHERE (Blocked=FILTER(<>All),
                                                                                                                                                      Customer Posting Group=FILTER(<>STAFF))
                                                                                                                                                      ELSE IF (Cash/Cheque=CONST(Cheque),
                                                                                                                                                               Account Type=CONST(Bank)) "Bank Account".No. WHERE (Blocked=CONST(No))
                                                                                                                                                               ELSE IF (Account Type=CONST(Supplier)) Vendor.No. WHERE (Blocked=FILTER(<>All))
                                                                                                                                                               ELSE IF (Account Type=CONST(Fixed Asset)) "Fixed Asset".No. WHERE (Blocked=CONST(No))
                                                                                                                                                               ELSE IF (Account Type=CONST(Staff)) Customer.No. WHERE (Blocked=FILTER(<>All))
                                                                                                                                                               ELSE IF (Account Type=CONST(LC)) Vendor.No. WHERE (Blocked=FILTER(<>All),
                                                                                                                                                                                                                  Vendor Posting Group=FILTER(LC*));

             trigger OnValidate()
             begin
                 IF "Account No." <> '' THEN BEGIN
                   CASE "Account Type" OF
                   0: BEGIN
                        "g/lacc".GET("Account No.");
                        "Account Description" := "g/lacc".Name;
                        "Global Dimension 1 Code":="g/lacc"."Global Dimension 1 Code";
                        "Global Dimension 2 Code" := "g/lacc"."Global Dimension 2 Code";
                      END;
                   1,5: BEGIN
                        custrec.GET("Account No.");
                        "Account Description" := custrec.Name;
                        "Global Dimension 1 Code" := custrec."Global Dimension 1 Code";
                       "Global Dimension 2 Code":= custrec."Global Dimension 2 Code";
                      END;
                    2,6: BEGIN
                       vendrec.GET("Account No.");
                       "Account Description" := vendrec.Name;
                       "Global Dimension 1 Code":= vendrec."Global Dimension 1 Code";
                       "Global Dimension 2 Code":= vendrec."Global Dimension 2 Code";
                       END;
                    3: BEGIN
                       bankrec.GET("Account No.");
                       "Account Description" := bankrec.Name;
                       "Global Dimension 1 Code":= bankrec."Global Dimension 1 Code";
                       "Global Dimension 2 Code" := bankrec."Global Dimension 2 Code";
                      END;
                    4: BEGIN
                       fixedrec.GET("Account No.");
                       "Account Description" := fixedrec.Description;
                       "Global Dimension 1 Code" := fixedrec."Global Dimension 1 Code";
                       "Global Dimension 2 Code":=fixedrec."Global Dimension 2 Code";
                      END;
                   END;
                 END;
             end; */
        }
        field(6; "Account Description"; Text[50])
        {
        }
        field(7; "Transaction Description"; Text[250])
        {
        }
        field(8; "Balance Account Type"; Option)
        {
            OptionMembers = "G/L Account",Customer,Supplier,Bank,"Fixed Asset";

            /* trigger OnValidate()
             begin
                 IF xRec."Balance Account Type" <> "Balance Account Type" THEN
                   BEGIN
                     "Bal. Acc. Description":= '';
                     "Balance Account No.":= '';
                    END;
             end; */
        }
        field(9; "Balance Account No."; Code[20])
        {
            /* TableRelation = IF (Balance Account Type=CONST(G/L Account)) "G/L Account".No. WHERE (Blocked=CONST(No),
                                                                                                  Account Type=CONST(Posting))
                                                                                                  ELSE IF (Cash/Cheque=CONST(Cheque),
                                                                                                           Balance Account Type=CONST(Bank)) "Bank Account".No. WHERE (Blocked=CONST(No))
                                                                                                           ELSE IF (Balance Account Type=CONST(Customer)) Customer.No. WHERE (Blocked=FILTER(<>All))
                                                                                                           ELSE IF (Balance Account Type=CONST(Supplier)) Vendor.No. WHERE (Blocked=FILTER(<>All))
                                                                                                           ELSE IF (Balance Account Type=CONST(Fixed Asset)) "Fixed Asset".No. WHERE (Blocked=CONST(No))
                                                                                                           ELSE IF (Cash/Cheque=CONST(Cash),
                                                                                                                    Balance Account Type=CONST(Bank)) "Bank Account".No. WHERE (Blocked=CONST(No),
                                                                                                                                                                                Cashier=CONST(Yes));

            trigger OnValidate()
            begin
                IF "Balance Account No." <> '' THEN BEGIN
                CASE "Balance Account Type" OF
                  0: BEGIN
                       "g/lacc".GET("Balance Account No.");
                       "Bal. Acc. Description" := "g/lacc".Name;
                       "Balance Department Code":= "g/lacc"."Global Dimension 1 Code";
                       "Balance Branch Code":= "g/lacc"."Global Dimension 2 Code";
                     END;
                  1: BEGIN
                       custrec.GET("Balance Account No.");
                       "Bal. Acc. Description" := custrec.Name;
                       "Balance Department Code" := custrec."Global Dimension 1 Code";
                       "Balance Branch Code":= custrec."Global Dimension 2 Code";
                    END;
                  2: BEGIN
                     vendrec.GET("Balance Account No.");
                     "Bal. Acc. Description" := vendrec.Name;
                     "Balance Department Code" := vendrec."Global Dimension 1 Code";
                     "Balance Branch Code":= vendrec."Global Dimension 2 Code";
                     END;
                  3: BEGIN
                      bankrec.GET("Balance Account No.");
                      "Bal. Acc. Description" := bankrec.Name;
                      "Balance Department Code" := bankrec."Global Dimension 1 Code";
                      "Balance Branch Code":= bankrec."Global Dimension 2 Code";
                     END;
                  4: BEGIN
                      fixedrec.GET("Balance Account No.");
                      "Bal. Acc. Description" := fixedrec.Description;
                      "Balance Department Code" := fixedrec."Global Dimension 1 Code";
                      "Balance Branch Code":= fixedrec."Global Dimension 2 Code";
                     END;
                  END;
                END;
            end; */
        }
        field(10; "Global Dimension 1 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(11; "Global Dimension 2 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(12; Amount; Decimal)
        {

            /*  trigger OnValidate()
              begin
                  //GetCurrency;
                  IF "Currency Code" = '' THEN
                      "Amount (LCY)" := Amount
                  ELSE
                      "Amount (LCY)" := ROUND(
                        CurrExchRate.ExchangeAmtFCYToLCY(
                          "Posting Date", "Currency Code",
                          Amount, "Currency Factor"));

                  //Amount := ROUND(Amount,Currency."Amount Rounding Precision");
                  IF (CurrFieldNo <> 0) AND
                     (CurrFieldNo <> FIELDNO("Applies-to Doc. No.")) AND
                     ((("Account Type" = "Account Type"::Customer) AND
                       ("Account No." <> '') AND (Amount > 0) AND
                       (CurrFieldNo <> FIELDNO("Bal. Account No."))) OR
                      (("Bal. Account Type" = "Bal. Account Type"::Customer) AND
                       ("Bal. Account No." <> '') AND (Amount < 0) AND
                       (CurrFieldNo <> FIELDNO("Account No."))))
                  THEN
                    //CustCheckCreditLimit.GenJnlLineCheck(Rec);

                  VALIDATE("VAT %");
                  VALIDATE("Bal. VAT %");
                  UpdateLineBalance;


              end; */
        }
        field(13; "Received by"; Text[50])
        {
        }
        field(14; "Cheque No."; Code[20])
        {

            trigger OnValidate()
            begin
                IF "Cheque No." <> '' THEN
                    TESTFIELD("Cash/Cheque", 1);
            end;
        }
        field(15; "Multiple Balance Account"; Boolean)
        {

            /* trigger OnValidate()
            begin
                IF "Multiple Balance Account" = TRUE THEN
                BEGIN
                IF "Multiple Account" = TRUE THEN
                BEGIN
                ReqReptLine.SETRANGE(ReqReptLine.Type,"Document Type");
                ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque","Cash/Cheque");
                ReqReptLine.SETRANGE(ReqReptLine."No.","No.");
                IF ReqReptLine.FIND('-') THEN
                ReqReptLine.DELETEALL;
                "Multiple Account" := FALSE;
                END;
                END
                ELSE
                BEGIN
                ReqReptLine.SETRANGE(ReqReptLine.Type,"Document Type");
                ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque","Cash/Cheque");
                ReqReptLine.SETRANGE(ReqReptLine."No.","No.");
                IF ReqReptLine.FIND('-') THEN
                ReqReptLine.DELETEALL;
                END;
            end; */
        }
        field(16; Posted; Boolean)
        {
        }
        field(17; "No. Series"; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(18; "Last No Used"; Code[20])
        {
        }
        field(19; "Posting Date"; Date)
        {
        }
        field(20; "Document Date"; Date)
        {
        }
        field(21; "External Document No."; Code[20])
        {
        }
        field(22; "Location Code"; Code[20])
        {
            TableRelation = Location;
        }
        field(23; "Collected By"; Text[50])
        {
        }
        field(24; "Paid by"; Text[50])
        {
        }
        field(26; "Balance Amount"; Decimal)
        {
            /* CalcFormula = Sum("Payment/Receipt Bal. Line."."Amount (LCY)" WHERE ("No."=FIELD("No."),
                                                                                 Type=FIELD("Document Type"),
                                                                                 "Cash/Cheque"=FIELD("Cash/Cheque")));
            FieldClass = FlowField; */
        }
        field(27; Cashier; Code[20])
        {
        }
        field(28; "Credit Amount"; Decimal)
        {

            /*   trigger OnValidate()
              begin
                  IF "Credit Amount" <> 0 THEN
                  "Debit Amount" := 0;
                  Amount:= -"Credit Amount";
                  IF "Currency Code" = '' THEN
                    "Amount (LCY)" := Amount
                  ELSE
                    "Amount (LCY)" := ROUND(
                      CurrExchRate.ExchangeAmtFCYToLCY(
                        "Posting Date","Currency Code",
                        Amount,"Currency Factor"));

                  Amount := ROUND(Amount,currency."Amount Rounding Precision");
              end; */
        }
        field(29; "Debit Amount"; Decimal)
        {

            /* trigger OnValidate()
            begin
                IF "Debit Amount" <> 0 THEN
                "Credit Amount" := 0;
                Amount := "Debit Amount";
                IF "Currency Code" = '' THEN
                  "Amount (LCY)" := Amount
                ELSE
                  "Amount (LCY)" := ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      "Posting Date","Currency Code",
                      Amount,"Currency Factor"));

                Amount := ROUND(Amount,currency."Amount Rounding Precision");
            end; */
        }
        field(30; "Bal. Acc. Description"; Text[50])
        {
        }
        field(31; "Multiple Account"; Boolean)
        {

            /*   trigger OnValidate()
              begin
                  IF "Multiple Account" = TRUE THEN BEGIN
                      IF "Multiple Balance Account" = TRUE THEN BEGIN
                          ReqReptLine.SETRANGE(ReqReptLine.Type, "Document Type");
                          ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", "Cash/Cheque");
                          ReqReptLine.SETRANGE(ReqReptLine."No.", "No.");
                          IF ReqReptLine.FIND('-') THEN
                              ReqReptLine.DELETEALL;
                          "Multiple Balance Account" := FALSE;
                      END;
                      if "Debit Amount" <> 0 then
                        VALIDATE("Credit Amount","Debit Amount")
                      else
                        VALIDATE("Debit Amount","Credit Amount");
                  END
                  ELSE BEGIN
                      ReqReptLine.SETRANGE(ReqReptLine.Type, "Document Type");
                      ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", "Cash/Cheque");
                      ReqReptLine.SETRANGE(ReqReptLine."No.", "No.");
                      IF ReqReptLine.FIND('-') THEN
                          ReqReptLine.DELETEALL;
                  END;

              end; */
        }
        field(32; "Balance Department Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(33; "Balance Branch Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(34; "Bank Name"; Text[50])
        {
        }
        field(35; "Balance Total"; Decimal)
        {
            /* CalcFormula = Sum("Payment/Receipt Bal. Line.".Amount WHERE("No."=FIELD("No."),
                                                                         Type=FIELD("Document Type"),
                                                                         "Cash/Cheque"=FIELD("Cash/Cheque")));
            FieldClass = FlowField; */
        }
        field(36; Finished; Boolean)
        {
        }
        field(37; "Currency Code"; Code[20])
        {
            TableRelation = Currency.Code;

            /*   trigger OnValidate()
              begin
                  IF "Currency Code" <> '' THEN BEGIN
                    //GetCurrency;
                    IF ("Currency Code" <> xRec."Currency Code") OR
                       ("Posting Date" <> xRec."Posting Date") OR
                       (CurrFieldNo = FIELDNO("Currency Code")) OR
                       ("Currency Factor" = 0)
                    THEN
                      BEGIN
                      "Currency Factor" :=
                        CurrExchRate.ExchangeRate("Posting Date","Currency Code");
                        IF ("Exchange rate" <> 0) THEN
                        "Currency Factor" := 100/"Exchange rate";
                         IF Amount <> 0  THEN
                        "Amount (LCY)" := ROUND(
                         CurrExchRate.ExchangeAmtFCYToLCY(
                          "Posting Date","Currency Code",
                            Amount,"Currency Factor"));
                    END;

                  END ELSE
                    "Currency Factor" := 0;
              end; */
        }
        field(39; "Amount (LCY)"; Decimal)
        {
            Editable = true;
        }
        field(40; "Currency Factor"; Decimal)
        {
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;

            /* trigger OnValidate()
            begin
                IF ("Currency Code" = '') AND ("Currency Factor" <> 0) THEN
                  FIELDERROR("Currency Factor",STRSUBSTNO(Text002,FIELDCAPTION("Currency Code")));
            end; */
        }
        field(41; "Exchange rate"; Decimal)
        {
            DecimalPlaces = 2 : 9;

            /* trigger OnValidate()
            begin
                IF "Currency Code" = '' THEN
                  "Amount (LCY)" := Amount
                ELSE
                  BEGIN
                    IF "Exchange rate" <> 0 THEN
                    "Currency Factor" := 100/"Exchange rate";
                  "Amount (LCY)" := ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      "Posting Date","Currency Code",
                      Amount,"Currency Factor"));
                  END;
            end; */
        }
        field(42; "FA Posting Type"; Option)
        {
            OptionCaption = ' ,Acquisition Cost,Depreciation,Write-Down,Appreciation,Custom 1,Custom 2,Disposal,Maintenance';
            OptionMembers = " ","Acquisition Cost",Depreciation,"Write-Down",Appreciation,"Custom 1","Custom 2",Disposal,Maintenance;

            trigger OnValidate()
            begin
                IF NOT (("Account Type" = "Account Type"::"Fixed Asset") OR
                    ("Balance Account Type" = "Balance Account Type"::"Fixed Asset")) AND
                    ("FA Posting Type" = "FA Posting Type"::" ")
                THEN
                    ERROR('Transaction require a Fixed asset Code');
            end;
        }
        field(43; "Maintenance Code"; Code[10])
        {
            TableRelation = Maintenance;

            trigger OnValidate()
            begin
                IF "Maintenance Code" <> '' THEN
                    TESTFIELD("FA Posting Type", "FA Posting Type"::Maintenance);
            end;
        }
        field(44; "Job Code"; Code[20])
        {
            TableRelation = Job."No.";

            trigger OnValidate()
            begin
                IF "Job Code" <> '' THEN BEGIN
                    TESTFIELD("Account Type", 0);
                    TESTFIELD("Balance Account Type", 0);
                END;
            end;
        }
        field(45; "Job Task code"; Code[20])
        {
            TableRelation = "Job Task"."Job Task No." WHERE("Job No." = FIELD("Job Code"));
        }
        field(46; "Job Quantity"; Decimal)
        {
        }
        field(47; "Job Line Type"; Option)
        {
            OptionMembers = " ",Scheduled,Contract,"Scheduled & Contract";
        }
        field(48; "Loan ID"; Code[20])
        {
            TableRelation = "Loan."."Loan ID";
        }
        field(49; "Loan Type"; Code[20])
        {
        }
        field(50; "Form M No."; Code[20])
        {
        }
        field(51; "Send for Approval"; Boolean)
        {

            /*  trigger OnValidate()
             begin
                 IF "Send for Approval" THEN
                   IF NOT CONFIRM('Are you sure you want to request APPROVAL?',FALSE) THEN
                     "Send for Approval" := FALSE
                   ELSE BEGIN
                     IF UserSetup.GET("1st Approval to") THEN
                       Sender := COPYSTR(USERID,15);
                       "Sent Time"  := CURRENTDATETIME;
                       "User ID" := COPYSTR(USERID,15);
                       TESTFIELD(Amount);
                       TESTFIELD("1st Approval to");
                       TESTFIELD("1st Apprv. Status",0);
                       // UserSetup.GET("1st Approval to");
                       "Current pending Person" := "1st Approval to";
                       ToName  := UserSetup."E-Mail";
                       Subject := STRSUBSTNO(text001,"No.");
                       UserSetup2.GET(USERID);
                       SenderEmail := UserSetup2."E-Mail";
                       SenderInitial := UserSetup2.Initials;
                       Initials := UserSetup.Initials;

                       WITH TempEmailItem DO BEGIN
                         "Send to" := ToName;
                         "Send CC" := SenderEmail + ';' + CCName;
                         "Send BCC" := '';
                         Subject := STRSUBSTNO(text001,"No.");

                         CRLF := '';
                         CRLF[1] := 13;
                         CRLF[2] := 10;

                         BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                         BodyStream.WRITETEXT(text006 + Initials + ',');
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT(STRSUBSTNO(text001,"No.") + CRLF + CRLF +
                         CRLF + CRLF +
                         Text007 + CRLF);
                         BodyStream.WRITETEXT(SenderInitial);
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                         Body := BodyBlob.Blob;
                         Send(FALSE);
                       END;
                    //  mailsent := approvalmessage.NewMessage(ToName,CCName,Subject,"Mail Body",attachement,'',TRUE);
                   END;
             end; */
        }
        field(52; Sender; Text[50])
        {
            Editable = true;
        }
        field(53; "Sent Time"; DateTime)
        {
            Editable = false;
        }
        field(54; "1st Approval to"; Code[20])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("1st Approval to") THEN
                    "1st Approver" := UserSetup.Name;
            end;
        }
        field(55; "1st Approver"; Text[50])
        {
        }
        field(56; "1st Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            /* trigger OnValidate()
            begin
                 TESTFIELD("Send for Approval",TRUE);
                 TESTFIELD("1st Approval to",COPYSTR(USERID,15));
                  "1st Approval Time" := 0DT;
                CASE "1st Apprv. Status" OF
                  "1st Apprv. Status"::Approved:
                    BEGIN
                      TESTFIELD("2nd Approval to");
                      "1st Approval Time" := CURRENTDATETIME;
                      UserSetup.GET("2nd Approval to");
                      "Current pending Person" := "2nd Approval to";
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text001,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text001,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text001,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;

                  "1st Apprv. Status"::Rejected:
                    BEGIN
                      "1st Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text004,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text004,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text004,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;

                  "1st Apprv. Status"::"on Hold":
                    BEGIN
                      "1st Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text005,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text005,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text005,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;
                END;
            end; */
        }
        field(57; "1st Approval Time"; DateTime)
        {
        }
        field(58; "1st Approver's Comment"; Boolean)
        {
            CalcFormula = Exist("Payment Approval Comment Line" WHERE("Table Name" = filter('1st App'),
                                                                       "No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "2nd Approval to"; Code[20])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("2nd Approval to") THEN
                    "2nd Approver" := UserSetup.Name;
            end;
        }
        field(60; "2nd Approver"; Text[50])
        {
        }
        field(61; "2nd Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            /* trigger OnValidate()
            begin

                 TESTFIELD("Send for Approval",TRUE);
                 TESTFIELD("1st Apprv. Status",2);
                 TESTFIELD("2nd Approval to",COPYSTR(USERID,15));
                  "2nd Approval Time" := 0DT;
                CASE "2nd Apprv. Status" OF
                  "2nd Apprv. Status"::Approved:
                    BEGIN
                      TESTFIELD("3rd Approval to");
                      "2nd Approval Time" :=CURRENTDATETIME;
                      UserSetup.GET("3rd Approval to");
                      "Current pending Person" := "3rd Approval to";
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text001,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text001,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text001,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;

                  "2nd Apprv. Status"::Rejected:
                    BEGIN
                      "2nd Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text004,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text004,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text004,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;
                  "2nd Apprv. Status"::"on Hold":
                    BEGIN
                      "2nd Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text005,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text005,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text005,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;
                END;
            end; */
        }
        field(62; "2nd Approval Time"; DateTime)
        {
        }
        field(63; "2nd Approver's Comment"; Boolean)
        {
        }
        field(64; "3rd Approval to"; Code[20])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("3rd Approval to") THEN
                    "3rd Approver" := UserSetup.Name;
            end;
        }
        field(65; "3rd Approver"; Text[50])
        {
        }
        field(66; "3rd Apprv.Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            /*  trigger OnValidate()
             begin
                 TESTFIELD("Send for Approval",TRUE);
                 TESTFIELD("2nd Apprv. Status",2);
                 TESTFIELD("3rd Approval to",COPYSTR(USERID,15));
                 "3rd Approval Time" := 0DT;

                 CASE "3rd Apprv.Status" OF
                   "3rd Apprv.Status"::Approved:
                     BEGIN
                       TESTFIELD("Final Approval to");
                       "3rd Approval Time" := CURRENTDATETIME;
                       UserSetup.GET("Final Approval to");
                       "Current pending Person" := "Final Approval to";
                       ToName  := UserSetup."E-Mail";
                       Subject := STRSUBSTNO(text001,"No.");
                       UserSetup2.GET(USERID);
                       SenderEmail := UserSetup2."E-Mail";
                       SenderInitial := UserSetup2.Initials;
                       Initials := UserSetup.Initials;

                       WITH TempEmailItem DO BEGIN
                         "Send to" := ToName;
                         "Send CC" := SenderEmail;
                         "Send BCC" := '';
                         Subject := STRSUBSTNO(text001,"No.");

                         CRLF := '';
                         CRLF[1] := 13;
                         CRLF[2] := 10;

                         BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                         BodyStream.WRITETEXT(text006 + Initials + ',');
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT(STRSUBSTNO(text001,"No.") + CRLF + CRLF +
                         CRLF + CRLF +
                         Text007 + CRLF);
                         BodyStream.WRITETEXT(SenderInitial);
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                         Body := BodyBlob.Blob;
                         Send(FALSE);
                       END;
                     END;
                   "3rd Apprv.Status"::Rejected:
                     BEGIN
                       "3rd Approval Time" := CURRENTDATETIME;
                       UserSetup.GET(Sender);
                       ToName  := UserSetup."E-Mail";
                       Subject := STRSUBSTNO(text004,"No.");
                       UserSetup2.GET(USERID);
                       SenderEmail := UserSetup2."E-Mail";
                       SenderInitial := UserSetup2.Initials;
                       Initials := UserSetup.Initials;

                       WITH TempEmailItem DO BEGIN
                         "Send to" := ToName;
                         "Send CC" := SenderEmail;
                         "Send BCC" := '';
                         Subject := STRSUBSTNO(text004,"No.");

                         CRLF := '';
                         CRLF[1] := 13;
                         CRLF[2] := 10;

                         BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                         BodyStream.WRITETEXT(text006 + Initials + ',');
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT(STRSUBSTNO(text004,"No.") + CRLF + CRLF +
                         CRLF + CRLF +
                         Text007 + CRLF);
                         BodyStream.WRITETEXT(SenderInitial);
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                         Body := BodyBlob.Blob;
                         Send(FALSE);
                       END;
                     END;

                   "3rd Apprv.Status"::"on Hold":
                     BEGIN
                       "3rd Approval Time" := CURRENTDATETIME;
                       UserSetup.GET(Sender);
                       ToName  := UserSetup."E-Mail";
                       Subject := STRSUBSTNO(text005,"No.");
                       UserSetup2.GET(USERID);
                       SenderEmail := UserSetup2."E-Mail";
                       SenderInitial := UserSetup2.Initials;
                       Initials := UserSetup.Initials;

                       WITH TempEmailItem DO BEGIN
                         "Send to" := ToName;
                         "Send CC" := SenderEmail;
                         "Send BCC" := '';
                         Subject := STRSUBSTNO(text005,"No.");

                         CRLF := '';
                         CRLF[1] := 13;
                         CRLF[2] := 10;

                         BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                         BodyStream.WRITETEXT(text006 + Initials + ',');
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT(STRSUBSTNO(text005,"No.") + CRLF + CRLF +
                         CRLF + CRLF +
                         Text007 + CRLF);
                         BodyStream.WRITETEXT(SenderInitial);
                         BodyStream.WRITETEXT(CRLF + CRLF);
                         BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                         Body := BodyBlob.Blob;
                         Send(FALSE);
                       END;
                     END;
                 END;
             end; */
        }
        field(67; "3rd Approval Time"; DateTime)
        {
        }
        field(68; "3rd Approver's Comment"; Boolean)
        {
        }
        field(69; "Final Approval to"; Code[20])
        {
            TableRelation = "User Setup"."User ID";

            trigger OnValidate()
            begin
                IF UserSetup.GET("Final Approval to") THEN
                    "Final Approver's Name" := UserSetup.Name;
            end;
        }
        field(70; "Final Approver's Name"; Text[50])
        {
        }
        field(71; "Final Apprv. Status"; Option)
        {
            OptionCaption = ' ,on Hold,Approved,Rejected';
            OptionMembers = " ","on Hold",Approved,Rejected;

            /* trigger OnValidate()
            begin
                 TESTFIELD("Send for Approval",TRUE);
                 //TESTFIELD("3rd Apprv.Status",2);
                 TESTFIELD("2nd Apprv. Status",2);
                 //TESTFIELD("Final Approval to",COPYSTR(USERID,15));
                  "Final Approval Time" := 0DT;
                CASE "Final Apprv. Status" OF
                  "Final Apprv. Status"::Approved:
                    IF NOT CONFIRM('Are you sure you want this order Approved?', FALSE) THEN
                      "Final Apprv. Status" := PaymentReceipt."Final Apprv. Status"::" "
                    ELSE BEGIN
                      TESTFIELD("1st Approval to");
                      "Final Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      "Current pending Person" := "Final Approval to";
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text003,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text003,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text003,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;

                  "Final Apprv. Status"::Rejected:
                    IF NOT CONFIRM('Are you sure you want this order Rejected?', FALSE) THEN
                      "Final Apprv. Status" := PaymentReceipt."Final Apprv. Status"::" "
                    ELSE BEGIN
                      "Final Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text004,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text004,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text004,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;
                  "Final Apprv. Status"::"on Hold":
                    IF NOT CONFIRM('Are you sure you want to place this order On-hold?', FALSE) THEN
                      "Final Apprv. Status" := PaymentReceipt."Final Apprv. Status"::" "
                    ELSE BEGIN
                      "Final Approval Time" := CURRENTDATETIME;
                      UserSetup.GET(Sender);
                      ToName  := UserSetup."E-Mail";
                      Subject := STRSUBSTNO(text005,"No.");
                      UserSetup2.GET(USERID);
                      SenderEmail := UserSetup2."E-Mail";
                      SenderInitial := UserSetup2.Initials;
                      Initials := UserSetup.Initials;

                      WITH TempEmailItem DO BEGIN
                        "Send to" := ToName;
                        "Send CC" := SenderEmail;
                        "Send BCC" := '';
                        Subject := STRSUBSTNO(text005,"No.");

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;

                        BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                        BodyStream.WRITETEXT(text006 + Initials + ',');
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT(STRSUBSTNO(text005,"No.") + CRLF + CRLF +
                        CRLF + CRLF +
                        Text007 + CRLF);
                        BodyStream.WRITETEXT(SenderInitial);
                        BodyStream.WRITETEXT(CRLF + CRLF);
                        BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                        Body := BodyBlob.Blob;
                        Send(FALSE);
                      END;
                    END;
                END;
            end; */
        }
        field(72; "Final Approval Time"; DateTime)
        {
        }
        field(73; "Final Approver's Comment"; Boolean)
        {
        }
        field(74; "General Comment"; Boolean)
        {
        }
        field(75; "Mail Body"; Text[250])
        {
        }
        field(76; "User ID"; Code[20])
        {
            //TableRelation = Table2000000002.Field1;
        }
        field(77; "Current pending Person"; Code[20])
        {
            //TableRelation = Table2000000002.Field1;
        }
        field(78; Attachment; Text[250])
        {
        }
        field(79; "Send for 2nd Apprv."; Boolean)
        {

            /*  trigger OnValidate()
             begin
                 IF "Send for 2nd Apprv." THEN
                   IF NOT CONFIRM('Are you sure you want to request APPROVAL?',FALSE) THEN
                     "Send for 2nd Apprv." := FALSE
                   ELSE BEGIN
                 IF UserSetup.GET(COPYSTR(USERID,15)) THEN
                     Sender := UserSetup.Name;
                     "Sent Time"  := CURRENTDATETIME;
                     "User ID" := COPYSTR(USERID,15);
                     TESTFIELD(Amount);
                     TESTFIELD("1st Approval to");
                     TESTFIELD("1st Apprv. Status",0);
                     TESTFIELD("2nd Approval to");
                     TESTFIELD("2nd Apprv. Status",0);
                     UserSetup.GET("1st Approval to");
                     "Current pending Person" := "1st Approval to";
                     ToName  := UserSetup."E-Mail";
                     Subject := STRSUBSTNO(text001,"No.");
                     UserSetup2.GET(USERID);
                     SenderEmail := UserSetup2."E-Mail";
                     SenderInitial := UserSetup2.Initials;
                     Initials := UserSetup.Initials;

                     WITH TempEmailItem DO BEGIN
                       "Send to" := ToName;
                       "Send CC" := SenderEmail;
                       "Send BCC" := '';
                       Subject := STRSUBSTNO(text001,"No.");

                       CRLF := '';
                       CRLF[1] := 13;
                       CRLF[2] := 10;

                       BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                       BodyStream.WRITETEXT(text006 + Initials + ',');
                       BodyStream.WRITETEXT(CRLF + CRLF);
                       BodyStream.WRITETEXT(STRSUBSTNO(text001,"No.") + CRLF + CRLF +
                       CRLF + CRLF +
                       Text007 + CRLF);
                       BodyStream.WRITETEXT(SenderInitial);
                       BodyStream.WRITETEXT(CRLF + CRLF);
                       BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                       Body := BodyBlob.Blob;
                       Send(FALSE);
                     END;
                   END;
             end; */
        }
        field(80; "Send for 3rd Apprv."; Boolean)
        {

            /*     trigger OnValidate()
                begin
                    IF "Send for 3rd Apprv." THEN
                      IF NOT CONFIRM('Are you sure you want to send for Approval?',FALSE) THEN
                        "Send for 3rd Apprv." := FALSE
                      ELSE BEGIN
                        UserSetup.GET(COPYSTR(USERID,15));
                        Sender := UserSetup.Name;
                        "Sent Time"  := CURRENTDATETIME;
                        "User ID" := COPYSTR(USERID,15);
                        TESTFIELD(Amount);
                        TESTFIELD("1st Approval to");
                        TESTFIELD("1st Apprv. Status",0);
                        UserSetup.GET("1st Approval to");
                        "Current pending Person" := "1st Approval to";
                        ToName  := UserSetup."E-Mail";
                        Subject := STRSUBSTNO(text001,"No.");
                        UserSetup2.GET(USERID);
                        SenderEmail := UserSetup2."E-Mail";
                        SenderInitial := UserSetup2.Initials;
                        Initials := UserSetup.Initials;

                        WITH TempEmailItem DO BEGIN
                          "Send to" := ToName;
                          "Send CC" := SenderEmail;
                          "Send BCC" := '';
                          Subject := STRSUBSTNO(text001,"No.");

                          CRLF := '';
                          CRLF[1] := 13;
                          CRLF[2] := 10;

                          BodyBlob.Blob.CREATEOUTSTREAM(BodyStream);
                          BodyStream.WRITETEXT(text006 + Initials + ',');
                          BodyStream.WRITETEXT(CRLF + CRLF);
                          BodyStream.WRITETEXT(STRSUBSTNO(text001,"No.") + CRLF + CRLF +
                          CRLF + CRLF +
                          Text007 + CRLF);
                          BodyStream.WRITETEXT(SenderInitial);
                          BodyStream.WRITETEXT(CRLF + CRLF);
                          BodyStream.WRITETEXT('This is a system generated mail. Please do not reply to this email ID.');
                          Body := BodyBlob.Blob;
                          Send(FALSE);
                        END;
                      END;
                end; */
        }
        field(81; Comment; Boolean)
        {
            CalcFormula = Exist("Payment Approval Comment Line" WHERE("Table Name" = filter('General'),
                                                                       "No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(82; "e-Pay"; Boolean)
        {
        }
        field(83; "Detail Balance"; Decimal)
        {
            /* CalcFormula = Sum("Payment/Receipt Bal. Line."."Amount (LCY)" WHERE ("No."=FIELD("No.")));
            Editable = false;
            FieldClass = FlowField; */
        }
        field(84; "Voucher Type"; Option)
        {
            OptionCaption = 'Journal Voucher,Sundry Credit Note,Sundry Debit Note';
            OptionMembers = "Journal Voucher","Sundry Credit Note","Sundry Debit Note";
        }
        field(85; Cancled; Boolean)
        {
            CalcFormula = Exist("G/L Entry" WHERE(Reversed = filter(true),
                                                   "Document No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(86; "Created By"; Code[20])
        {
            Editable = false;
        }
        field(87; "Modified By"; Code[20])
        {
            Editable = false;
        }
        field(88; "Test Report"; Boolean)
        {
        }
        field(89; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(90; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            Editable = false;

            /* trigger OnLookup()
            var
                GenJnlPostLine: Codeunit "12";
                PaymentToleranceMgt: Codeunit "426";
            begin
            end; */

            trigger OnValidate()
            var
                CustLedgEntry: Record 21;
                VendLedgEntry: Record 25;
                TempGenJnlLine: Record 81 temporary;
            begin
            end;
        }
        field(91; "Apply Entry"; Integer)
        {
            /*     TableRelation = IF (Account Type=CONST(Customer),
                                    Credit Amount=FILTER(<>0)) "Cust. Ledger Entry"."Entry No." WHERE (Customer No.=FIELD(Account No.),
                                                                                                       Open=CONST(Yes),
                                                                                                       Positive=CONST(Yes))
                                                                                                       ELSE IF (Account Type=CONST(Customer),
                                                                                                                Debit Amount=FILTER(<>0)) "Cust. Ledger Entry"."Entry No." WHERE (Customer No.=FIELD(Account No.),
                                                                                                                                                                                  Open=CONST(Yes),
                                                                                                                                                                                  Positive=CONST(No))
                                                                                                                                                                                  ELSE IF (Account Type=CONST(Supplier),
                                                                                                                                                                                           Debit Amount=FILTER(<>0)) "Vendor Ledger Entry"."Entry No." WHERE (Vendor No.=FIELD(Account No.),
                                                                                                                                                                                                                                                              Open=CONST(Yes),
                                                                                                                                                                                                                                                              Positive=CONST(No))
                                                                                                                                                                                                                                                              ELSE IF (Account Type=CONST(Supplier),
                                                                                                                                                                                                                                                                       Credit Amount=FILTER(<>0)) "Vendor Ledger Entry"."Entry No." WHERE (Vendor No.=FIELD(Account No.),
                                                                                                                                                                                                                                                                                                                                           Open=CONST(Yes),
                                                                                                                                                                                                                                                                                                                                           Positive=CONST(Yes))
                                                                                                                                                                                                                                                                                                                                           ELSE IF (Account Type=CONST(Staff),
                                                                                                                                                                                                                                                                                                                                                    Credit Amount=FILTER(<>0)) "Cust. Ledger Entry"."Entry No." WHERE (Customer No.=FIELD(Account No.),
                                                                                                                                                                                                                                                                                                                                                                                                                       Positive=CONST(Yes),
                                                                                                                                                                                                                                                                                                                                                                                                                       Open=CONST(Yes))
                                                                                                                                                                                                                                                                                                                                                                                                                       ELSE IF (Account Type=CONST(Staff),
                                                                                                                                                                                                                                                                                                                                                                                                                                Debit Amount=FILTER(<>0)) "Cust. Ledger Entry"."Entry No." WHERE (Customer No.=FIELD(Account No.),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Positive=CONST(No),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Open=CONST(Yes));

                trigger OnValidate()
                begin
                    CASE "Account Type" OF
                         "Account Type"::Customer,"Account Type"::Staff: IF CustLedgEntry.GET("Apply Entry") THEN BEGIN
                                                                           "Applies-to Doc. Type" := CustLedgEntry."Document Type";
                                                                           "Applies-to Doc. No." := CustLedgEntry."Document No.";
                                                                          END ELSE BEGIN
                                                                           "Applies-to Doc. Type" := 0;
                                                                           "Applies-to Doc. No." := '';
                                                                           END;


                         "Account Type"::Supplier,"Account Type"::LC: IF VendLedgEntry.GET("Apply Entry") THEN BEGIN
                                                                         "Applies-to Doc. Type" := VendLedgEntry."Document Type";
                                                                         "Applies-to Doc. No.":= VendLedgEntry."Document No.";
                                                                      END ELSE BEGIN
                                                                         "Applies-to Doc. Type" := 0;
                                                                         "Applies-to Doc. No.":= '';
                                                                      END;

                    END;
                end; */
        }
        field(92; "Approved Doc. No."; Code[20])
        {
        }
        field(93; "Cash Transaction"; Boolean)
        {
        }
        field(94; "Total Amount on Line"; Decimal)
        {
            /* CalcFormula = Sum("Payment/Receipt Bal. Line."."Amount (LCY)" WHERE ("No."=FIELD("No.")));
            FieldClass = FlowField; */
        }
        field(95; "Procurement No."; Code[20])
        {
        }
        field(96; "Total Amount"; Decimal)
        {
        }
        field(97; "Advance Payment Made"; Decimal)
        {
        }
        field(98; "Balance Payment"; Decimal)
        {
        }
        field(99; Reject; Boolean)
        {
        }
        field(50000; "Payment Successful"; Boolean)
        {
        }
        field(50001; "Payment Date"; DateTime)
        {
        }
        field(50002; "Device Id."; Text[30])
        {
            TableRelation = "POS Terminal"."Device No.";

            trigger OnValidate()
            begin
                IF POSTerminal.GET("Device Id.") THEN BEGIN
                    "Balance Account Type" := "Balance Account Type"::Bank;
                    "Balance Account No." := POSTerminal."Bank No.";
                    "Bal. Acc. Description" := POSTerminal."Bank Name";
                END ELSE BEGIN
                    "Balance Account No." := '';
                    "Bal. Acc. Description" := '';
                END;

                "Device Id." := LOWERCASE("Device Id.");
            end;
        }
    }

    keys
    {
        key(Key1; "Document Type", "Cash/Cheque", "No.")
        {
            Clustered = true;
        }
        key(Key2; "Document Type", "Cash/Cheque", "Global Dimension 1 Code")
        {
        }
        key(Key3; "Document Type", Posted)
        {
        }
        key(Key4; "Document Type", "Cash/Cheque", "Posting Date", Posted)
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key5; "Approved Doc. No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    begin
        //IF ("Multiple Balance Account") OR ("Multiple Account") THEN
        //BEGIN
        //ReqReptLine.SETRANGE(ReqReptLine.Type,"Document Type");
        //ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque","Cash/Cheque");
        //ReqReptLine.SETRANGE(ReqReptLine."No.","No.");
        //IF ReqReptLine.FIND('-') THEN
        //ReqReptLine.DELETEALL;
        //END;
        //ERROR('It is not Possible to delete');
    end;

    trigger OnInsert()
    begin
        GenSetup.GET;
        IF "No." = '' THEN BEGIN
            TestNoSeries;
            NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No. Series", "Posting Date", "No.", "No. Series");
        END;
        "Created By" := COPYSTR(USERID, 15);
        InitRecord;
    end;

    trigger OnModify()
    begin
        IF ("Multiple Balance Account") OR ("Multiple Account") THEN
            MESSAGE('Please remember to effect change on the lines!');
        "Modified By" := COPYSTR(USERID, 15);
    end;

    trigger OnRename()
    begin
        ERROR('It is not Possible to Rename');
    end;

    var
        "g/lacc": Record 15;
        custrec: Record 18;
        vendrec: Record 23;
        fixedrec: Record 5600;
        bankrec: Record 270;
        GenSetup: Record 98;
        UserMgt: Codeunit 5700;
        NoSeriesMgt: Codeunit 396;
        ReqReptLine: Record 50104;
        CurrExchRate: Record 330;
        Text002: Label 'Cannot be specified without  %1';
        currency: Record 4;
        LineNo: Integer;
        JobTask: Record 1001;
        date: Date;
        UserSetup: Record 91;
        UserSetup2: Record 91;
        approvalmessage: Codeunit 397;
        mailsent: Boolean;
        ToName: Text[80];
        CCName: Text[80];
        Subject: Text[50];
        Body: Text[100];
        attachement: Text[260];
        Opendialog: Boolean;
        text001: Label 'Document  ''%1''  requires your approval';
        Reportprint: Codeunit 228;
        CustLedgEntry: Record 21;
        VendLedgEntry: Record 25;
        text003: Label 'Document ''%1'' has been approved';
        text004: Label 'Document ''%1'' has been rejected';
        text005: Label 'Document ''%1'' is on hold';
        POSTerminal: Record 70020;
        GenJnlPost: Codeunit 231;
        GenJournalLinex: Record 81;
        text006: Label 'Dear ';
        Text007: Label 'Regards,';
        BodyTxt: Text;
        //BodyBlob: Record "99008535";
        BodyStream: OutStream;
        SenderInitial: Text;
        SenderEmail: Text[50];
        //TempEmailItem: Record "9500" temporary;
        Initials: Text[10];
        CRLF: Text[2];
        PaymentReceipt: Record 50103;


    procedure InitRecord()
    begin
        CASE "Document Type" OF
            "Document Type"::Receipt:
                BEGIN
                    IF "Cash/Cheque" = "Cash/Cheque"::Cash THEN BEGIN
                        GenSetup.TESTFIELD("Cash Receipt No.");
                        NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."Cash Receipt No.");
                    END
                    ELSE BEGIN
                        GenSetup.TESTFIELD("Cheque Receipt No.");
                        NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."Cheque Receipt No.");
                    END;
                END;
            "Document Type"::Requisition:
                BEGIN
                    IF "Cash/Cheque" = "Cash/Cheque"::Cash THEN BEGIN
                        GenSetup.TESTFIELD("Cash Requisition No.");
                        NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."Cash Requisition No.");
                    END
                    ELSE BEGIN
                        GenSetup.TESTFIELD("Cheque Requisition No.");
                        NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."Cheque Requisition No.");
                    END
                END;
            "Document Type"::Journal:
                BEGIN
                    GenSetup.TESTFIELD("Journal Voucher No.");
                    NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."Journal Voucher No.");
                END;
            "Document Type"::"e-Receipt":
                BEGIN
                    GenSetup.TESTFIELD(GenSetup."E-Receipt Voucher No.");
                    NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."E-Receipt Voucher No.");
                END;
            "Document Type"::"e-Pay":
                BEGIN
                    GenSetup.TESTFIELD(GenSetup."E-Payment Voucher No.");
                    NoSeriesMgt.SetDefaultSeries("No. Series", GenSetup."E-Payment Voucher No.");
                END;
        END;


        "Posting Date" := WORKDATE;
        "Document Date" := WORKDATE;
    end;


    procedure AssistEdit("OldP/R": Record 50103): Boolean
    begin
       /* WITH "OldP/R" DO BEGIN
            "OldP/R" := Rec;
            GenSetup.GET;
            CASE "Document Type" OF
                "Document Type"::Receipt:
                    BEGIN
                        IF Rec."Cash/Cheque" = "Cash/Cheque"::Cash THEN BEGIN
                            IF NoSeriesMgt.SelectSeries(GenSetup."Cash Receipt No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                                GenSetup.GET;
                                NoSeriesMgt.SetSeries("No.");
                                Rec := "OldP/R";
                                EXIT(TRUE);
                            END;
                        END
                        ELSE BEGIN
                            IF NoSeriesMgt.SelectSeries(GenSetup."Cheque Receipt No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                                GenSetup.GET;
                                NoSeriesMgt.SetSeries("No.");
                                Rec := "OldP/R";
                                EXIT(TRUE);
                            END;
                        END;
                    END;

                "Document Type"::Requisition:
                    BEGIN
                        IF "Cash/Cheque" = "Cash/Cheque"::Cash THEN BEGIN
                            IF NoSeriesMgt.SelectSeries(GenSetup."Cash Requisition No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                                GenSetup.GET;
                                NoSeriesMgt.SetSeries("No.");
                                Rec := "OldP/R";
                                EXIT(TRUE);
                            END;
                        END
                        ELSE BEGIN
                            IF NoSeriesMgt.SelectSeries(GenSetup."Cheque Requisition No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                                GenSetup.GET;
                                NoSeriesMgt.SetSeries("No.");
                                Rec := "OldP/R";
                                EXIT(TRUE);
                            END;
                        END;
                    END;
                "Document Type"::Journal:
                    BEGIN
                        IF NoSeriesMgt.SelectSeries(GenSetup."Journal Voucher No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                            GenSetup.GET;
                            NoSeriesMgt.SetSeries("No.");
                            Rec := "OldP/R";
                            EXIT(TRUE);
                        END;
                    END;
                "Document Type"::"e-Pay":
                    BEGIN
                        IF NoSeriesMgt.SelectSeries(GenSetup."E-Payment Voucher No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                            GenSetup.GET;
                            NoSeriesMgt.SetSeries("No.");
                            Rec := "OldP/R";
                            EXIT(TRUE);
                        END;
                    END;
                "Document Type"::"e-Receipt":
                    BEGIN
                        IF NoSeriesMgt.SelectSeries(GenSetup."E-Receipt Voucher No.", "OldP/R"."No. Series", "No. Series") THEN BEGIN
                            GenSetup.GET;
                            NoSeriesMgt.SetSeries("No.");
                            Rec := "OldP/R";
                            EXIT(TRUE);
                        END;
                    END
            END;
        END; */
    end;


    procedure TestNoSeries()
    begin
        CASE "Document Type" OF
            "Document Type"::Receipt:
                BEGIN
                    IF "Cash/Cheque" = "Cash/Cheque"::Cash THEN
                        GenSetup.TESTFIELD("Cash Receipt No.")
                    ELSE
                        GenSetup.TESTFIELD("Cheque Receipt No.");
                END;
            "Document Type"::Requisition:
                BEGIN
                    IF "Cash/Cheque" = "Cash/Cheque"::Cash THEN
                        GenSetup.TESTFIELD("Cash Requisition No.")
                    ELSE
                        GenSetup.TESTFIELD("Cheque Requisition No.");
                END;
            "Document Type"::Journal:
                GenSetup.TESTFIELD(GenSetup."Journal Voucher No.");

            "Document Type"::"e-Pay":
                GenSetup.TESTFIELD(GenSetup."E-Payment Voucher No.");

            "Document Type"::"e-Receipt":
                GenSetup.TESTFIELD(GenSetup."E-Receipt Voucher No.");

        END;
    end;

    local procedure GetNoSeriesCode(): Code[10]
    begin
        CASE "Document Type" OF
            "Document Type"::Receipt:
                BEGIN
                    IF Rec."Cash/Cheque" = "Cash/Cheque"::Cash THEN
                        EXIT(GenSetup."Cash Receipt No.")
                    ELSE
                        EXIT(GenSetup."Cheque Receipt No.");
                END;
            "Document Type"::Requisition:
                BEGIN
                    IF "Cash/Cheque" = "Cash/Cheque"::Cash THEN
                        EXIT(GenSetup."Cash Requisition No.")
                    ELSE
                        EXIT(GenSetup."Cheque Requisition No.");
                END;
            "Document Type"::Journal:
                EXIT(GenSetup."Journal Voucher No.");
            "Document Type"::"e-Pay":
                EXIT(GenSetup."E-Payment Voucher No.");
            "Document Type"::"e-Receipt":
                EXIT(GenSetup."E-Receipt Voucher No.");

        END;
    end;


    procedure Postgl(reqrec: Record 50103; PreviewMode: Boolean)
    var
        GlJour: Record 81;
        "GlJou 2": Record 81;
        GLENTRY: Record 17;
        GenJnlLine: Record 81;
        GenJournalLine: Record 81;
    begin

      /*  IF "Created By" = COPYSTR(USERID, 15) THEN
            ERROR('You cannot post!');
        GlJour.LOCKTABLE;
        DelResidualJnl(reqrec."Document Type", reqrec."Cash/Cheque");
        ValidateMultipleAcc(reqrec);

        //suspended temporarily for Abanum, Dada.
        GlJour.INIT;
        CASE reqrec."Document Type" OF
            reqrec."Document Type"::Receipt:
                GlJour."Journal Template Name" := 'CASHRCPT';
            reqrec."Document Type"::Requisition:
                GlJour."Journal Template Name" := 'Payments';
            2, 3, 4:
                GlJour."Journal Template Name" := 'General';
        END;

        IF reqrec."Cash/Cheque" = reqrec."Cash/Cheque"::Cash THEN
            GlJour."Journal Batch Name" := 'Cash'
        ELSE
            GlJour."Journal Batch Name" := 'Cheque';
        IF reqrec."Document Type" > 1 THEN
            GlJour."Journal Batch Name" := 'Voucher';

        //added by santus - begin
        //check and delete existing entries on the journal line
        GenJnlLine.SETRANGE("Journal Template Name", GlJour."Journal Template Name");
        GenJnlLine.SETRANGE("Journal Batch Name", GlJour."Journal Batch Name");
        IF GenJnlLine.FINDSET THEN
            GenJnlLine.DELETEALL;
        //added by santus - end

        GlJour."Line No." := 10000;
        CASE reqrec."Account Type" OF
            1, 5:
                GlJour."Account Type" := GlJour."Account Type"::Customer;
            2, 6:
                GlJour."Account Type" := GlJour."Account Type"::Vendor;
            ELSE
                GlJour."Account Type" := reqrec."Account Type";
        END;
        GlJour.VALIDATE(GlJour."Posting Date", reqrec."Posting Date");
        GlJour.VALIDATE(GlJour."Account No.", reqrec."Account No.");
        IF reqrec."Document Type" = reqrec."Document Type"::Requisition THEN
            GlJour."Document Type" := GlJour."Document Type"::" ";
        GlJour.VALIDATE(GlJour."Document No.", reqrec."No.");
        GlJour.Description := COPYSTR(reqrec."Transaction Description", 1, 50);
        GlJour.VALIDATE(GlJour."Shortcut Dimension 1 Code", reqrec."Global Dimension 1 Code");
        GlJour.VALIDATE(GlJour."Shortcut Dimension 2 Code", reqrec."Global Dimension 2 Code");
        GlJour.VALIDATE(GlJour."Currency Code", reqrec."Currency Code");
        GlJour.VALIDATE(GlJour."Currency Factor", reqrec."Currency Factor");
        GlJour."Procurement No." := "Procurement No."; //codeware
        GlJour."Job No." := reqrec."Job Code";
        GlJour."Job Task No." := reqrec."Job Task code";
        GlJour."Job Line Type" := reqrec."Job Line Type";
        GlJour."Loan ID" := reqrec."Loan ID";
        GlJour."Loan Type" := reqrec."Loan Type";
        GlJour."Applies-to Doc. Type" := reqrec."Applies-to Doc. Type";
        GlJour.VALIDATE(GlJour."Applies-to Doc. No.", reqrec."Applies-to Doc. No.");
        //GlJour."Form M No.":= reqrec."Form M No.";
        IF GlJour."Account Type" <> GlJour."Account Type"::"Fixed Asset" THEN BEGIN
            GlJour."Depreciation Book Code" := '';
            GlJour."Maintenance Code" := '';
            GlJour."FA Posting Type" := 0;
        END
        ELSE BEGIN
            GlJour.VALIDATE(GlJour."FA Posting Type", reqrec."FA Posting Type");
            GlJour.VALIDATE(GlJour."Maintenance Code", reqrec."Maintenance Code");
        END;
        //TO GENERATE POSTING FIRST LEG LINE FOR MULTIPLE BALANCE LINES
        IF reqrec."Multiple Balance Account" = TRUE THEN BEGIN
            GlJour."Bal. Account Type" := 0;
            GlJour.VALIDATE(GlJour."Bal. Account No.", '');
        END;
        IF "Multiple Account" = TRUE THEN BEGIN
            GlJour."Account Type" := reqrec."Balance Account Type";
            GlJour.VALIDATE(GlJour."Account No.", reqrec."Balance Account No.");
            GlJour.VALIDATE(GlJour."Currency Code", reqrec."Currency Code");
            GlJour.VALIDATE(GlJour."Currency Factor", reqrec."Currency Factor");
            GlJour.Description := COPYSTR(reqrec."Transaction Description", 1, 50);
            GlJour.VALIDATE(GlJour."Shortcut Dimension 1 Code", reqrec."Balance Department Code");
            GlJour.VALIDATE(GlJour."Shortcut Dimension 2 Code", reqrec."Balance Branch Code");
            IF GlJour."Account Type" <> GlJour."Account Type"::"Fixed Asset" THEN BEGIN
                GlJour."Depreciation Book Code" := '';
                GlJour."Maintenance Code" := '';
                GlJour."FA Posting Type" := 0;
            END
            ELSE BEGIN
                GlJour.VALIDATE(GlJour."FA Posting Type", reqrec."FA Posting Type");
                GlJour.VALIDATE(GlJour."Maintenance Code", reqrec."Maintenance Code");
            END;
            GlJour."Bal. Account Type" := 0;
            GlJour.VALIDATE(GlJour."Bal. Account No.", '');
        END;
        GlJour.VALIDATE(GlJour.Amount, reqrec.Amount);
        GlJour.VALIDATE(GlJour."Job Quantity", reqrec."Job Quantity");
        IF GlJour."Account Type" = 0 THEN BEGIN
            GlJour."Gen. Prod. Posting Group" := '';
            GlJour."Gen. Bus. Posting Group" := '';
            GlJour."VAT Bus. Posting Group" := '';
            GlJour."VAT Prod. Posting Group" := '';
            GlJour."Gen. Posting Type" := 0;
        END;
        GlJour."External Document No." := reqrec."External Document No.";
        GlJour."Document Date" := reqrec."Document Date";
        IF GlJour."Account Type" = 0 THEN BEGIN
            GlJour."Gen. Prod. Posting Group" := '';
            GlJour."Gen. Bus. Posting Group" := '';
            GlJour."VAT Bus. Posting Group" := '';
            GlJour."VAT Prod. Posting Group" := '';
        END;
        IF GlJour.Amount <> 0 THEN BEGIN
            IF NOT GlJour.INSERT THEN GlJour.MODIFY;
            GlJour.VALIDATE(GlJour."Shortcut Dimension 1 Code", reqrec."Global Dimension 1 Code");
            GlJour.VALIDATE(GlJour."Shortcut Dimension 2 Code", reqrec."Global Dimension 2 Code");
            GlJour.MODIFY(TRUE);
        END;
        // Generate the Second Leg for straight Transaction
        IF (reqrec."Multiple Balance Account" = FALSE) AND (reqrec."Multiple Account" = FALSE) THEN BEGIN
            "GlJou 2" := GlJour;
            "GlJou 2"."Line No." := GlJour."Line No." + 10000;
            "GlJou 2"."Account Type" := reqrec."Balance Account Type";
            "GlJou 2".VALIDATE("GlJou 2"."Account No.", reqrec."Balance Account No.");
            "GlJou 2".Description := COPYSTR(reqrec."Transaction Description", 1, 50);
            IF "GlJou 2"."Account Type" = 0 THEN BEGIN
                "GlJou 2"."Gen. Prod. Posting Group" := '';
                "GlJou 2"."Gen. Bus. Posting Group" := '';
                "GlJou 2"."VAT Bus. Posting Group" := '';
                "GlJou 2"."VAT Prod. Posting Group" := '';
                "GlJou 2"."Gen. Posting Type" := 0;
            END;
            "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", reqrec."Balance Department Code");
            "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", reqrec."Balance Branch Code");
            "GlJou 2"."Bal. Account Type" := 0;
            "GlJou 2".VALIDATE("GlJou 2".Amount, -reqrec."Amount (LCY)");

            IF "GlJou 2"."Account Type" = 0 THEN BEGIN
                "GlJou 2"."Gen. Prod. Posting Group" := '';
                "GlJou 2"."Gen. Bus. Posting Group" := '';
                "GlJou 2"."VAT Bus. Posting Group" := '';
                "GlJou 2"."VAT Prod. Posting Group" := '';
            END;
            IF "GlJou 2"."Account Type" <> "GlJou 2"."Account Type"::"Fixed Asset" THEN BEGIN
                "GlJou 2"."Depreciation Book Code" := '';
                "GlJou 2"."Maintenance Code" := '';
                "GlJou 2"."FA Posting Type" := 0;
            END
            ELSE BEGIN
                "GlJou 2".VALIDATE("GlJou 2"."FA Posting Type", reqrec."FA Posting Type");
                "GlJou 2".VALIDATE("GlJou 2"."Maintenance Code", reqrec."Maintenance Code");
            END;
            IF "GlJou 2".Amount <> 0 THEN BEGIN
                IF NOT "GlJou 2".INSERT THEN "GlJou 2".MODIFY;
                "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", reqrec."Balance Department Code");
                "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", reqrec."Balance Branch Code");
                "GlJou 2".MODIFY(TRUE);
            END;
        END
        ELSE
        //TO GENERATE POSTING LINES FOR MULTIPLE SECOND LEGS
        BEGIN
            "GlJou 2" := GlJour;
            LineNo := "GlJou 2"."Line No.";
            ReqReptLine.SETRANGE(ReqReptLine.Type, reqrec."Document Type");
            ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", reqrec."Cash/Cheque");
            ReqReptLine.SETRANGE(ReqReptLine."No.", reqrec."No.");
            IF ReqReptLine.FIND('-') THEN
                REPEAT
                    LineNo := LineNo + 10000;
                    ReqReptLine.TESTFIELD(ReqReptLine.Amount);
                    ReqReptLine.TESTFIELD(ReqReptLine."Account No.");
                    "GlJou 2"."Line No." := LineNo;
                    CASE ReqReptLine."Account Type" OF
                        1, 5:
                            "GlJou 2"."Account Type" := ReqReptLine."Account Type"::Customer;
                        2, 6:
                            "GlJou 2"."Account Type" := ReqReptLine."Account Type"::Supplier;
                        ELSE
                            "GlJou 2"."Account Type" := ReqReptLine."Account Type";
                    END;
                    "GlJou 2".VALIDATE("GlJou 2"."Account No.", ReqReptLine."Account No.");
                    "GlJou 2".VALIDATE("GlJou 2"."Currency Code", ReqReptLine."Currency Code");
                    "GlJou 2".VALIDATE("GlJou 2"."Currency Factor", ReqReptLine."Currency Factor");
                    "GlJou 2".Description := COPYSTR(ReqReptLine."Transaction Description", 1, 50);
                    "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", ReqReptLine."Department Code");
                    "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", ReqReptLine."Branch Code");
                    "GlJou 2".VALIDATE("GlJou 2".Amount, ReqReptLine.Amount);
                    "GlJou 2"."Loan ID" := ReqReptLine."Loan ID";
                    "GlJou 2"."Loan Type" := ReqReptLine."Loan Type";
                    "GlJou 2"."Applies-to Doc. Type" := ReqReptLine."Applies-to Doc. Type";
                    "GlJou 2".VALIDATE("GlJou 2"."Applies-to Doc. No.", ReqReptLine."Applies-to Doc. No.");
                    //"GlJou 2"."Form M No."   := ReqReptLine."Form M No.";
                    "GlJou 2".VALIDATE("GlJou 2"."Job No.", ReqReptLine."Job Code");
                    "GlJou 2".VALIDATE("GlJou 2"."Job Task No.", ReqReptLine."Job Task code");
                    "GlJou 2"."Job Line Type" := ReqReptLine."Job Line Type"::Contract;
                    IF ReqReptLine."Job Code" <> '' THEN BEGIN
                        //"GlJou 2".VALIDATE("GlJou 2"."Job Unit Cost",ReqReptLine."Amount (LCY)");
                        "GlJou 2".VALIDATE("GlJou 2"."Job Quantity", 1);
                    END;
                    "GlJou 2"."Bal. Account Type" := 0;
                    IF "GlJou 2"."Account Type" = 0 THEN BEGIN
                        "GlJou 2"."Gen. Prod. Posting Group" := '';
                        "GlJou 2"."Gen. Bus. Posting Group" := '';
                        "GlJou 2"."VAT Bus. Posting Group" := '';
                        "GlJou 2"."VAT Prod. Posting Group" := '';
                        "GlJou 2"."Gen. Posting Type" := 0;
                    END;
                    IF "GlJou 2"."Account Type" <> "GlJou 2"."Account Type"::"Fixed Asset" THEN BEGIN
                        "GlJou 2"."Depreciation Book Code" := '';
                        "GlJou 2"."Maintenance Code" := '';
                        "GlJou 2"."FA Posting Type" := 0;
                    END
                    ELSE BEGIN
                        "GlJou 2".VALIDATE("GlJou 2"."FA Posting Type", ReqReptLine."FA Posting Type");
                        "GlJou 2".VALIDATE("GlJou 2"."Maintenance Code", ReqReptLine."Maintenance Code");
                    END;
                    IF "GlJou 2".Amount <> 0 THEN BEGIN
                        IF NOT "GlJou 2".INSERT THEN "GlJou 2".MODIFY;
                        "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", ReqReptLine."Department Code");
                        "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", ReqReptLine."Branch Code");
                        "GlJou 2".MODIFY(TRUE);
                    END;
                UNTIL ReqReptLine.NEXT = 0;
        END;
        COMMIT;

        IF NOT PreviewMode THEN BEGIN
            GenJournalLinex.RESET;
            GenJournalLinex.SETFILTER("Journal Template Name", GlJour."Journal Template Name");
            GenJournalLinex.SETFILTER("Journal Batch Name", GlJour."Journal Batch Name");
            IF GenJournalLinex.FINDSET THEN
                GenJnlPost.RUN(GenJournalLinex)
        END ELSE BEGIN
            GenJournalLinex.RESET;
            GenJournalLinex.SETFILTER("Journal Template Name", GlJour."Journal Template Name");
            GenJournalLinex.SETFILTER("Journal Batch Name", GlJour."Journal Batch Name");
            IF GenJournalLinex.FINDSET THEN BEGIN
                COMMIT;
                GenJnlPost.Preview(GenJournalLinex);
            END;
        END;


        //Update as posted
        GLENTRY.SETCURRENTKEY("Document No.", "Posting Date");
        GLENTRY.SETRANGE("Document No.", "No.");
        GLENTRY.SETRANGE("Posting Date", "Posting Date");
        IF GLENTRY.FINDFIRST THEN BEGIN
            Posted := TRUE;
            MODIFY;
        END
        */
    end;


    procedure ValidateMultipleAcc(recpReq: Record 50103)
    begin
        
       /* IF (recpReq."Multiple Balance Account") OR (recpReq."Multiple Account") THEN BEGIN
            //recpReq.TESTFIELD(recpReq."Balance Account No.",'');
            recpReq.CALCFIELDS(recpReq."Balance Amount");
            IF ABS(recpReq."Amount (LCY)") <> ABS(recpReq."Balance Amount") THEN
                ERROR('Transaction Not Balanced check Your values');
        END;
        //recpReq.TESTFIELD(recpReq."Transaction Description");
        recpReq.TESTFIELD(recpReq."Account No.");
        IF recpReq."Document Type" <> recpReq."Document Type"::Journal THEN
            recpReq.TESTFIELD(recpReq.Amount);
            */
    end;


    /* procedure Navigate()
    var
        NavigateForm: Page "344";
    begin
        NavigateForm.SetDoc("Posting Date", "No.");
        NavigateForm.RUN;
    end; */


    procedure DelResidualJnl(DocType: Option Receipt,Requisition,Journal,"e-Pay","e-Receipt"; ReqType: Option Cash,Cheque)
    var
        deljnl: Record 81;
    begin
        CASE DocType OF
            DocType::Receipt:
                deljnl.SETRANGE(deljnl."Journal Template Name", 'CASHRCPT');
            DocType::Requisition:
                deljnl.SETRANGE(deljnl."Journal Template Name", 'Payments');
            2, 3, 4:
                deljnl.SETRANGE(deljnl."Journal Template Name", 'General');
        END;
        CASE ReqType OF
            ReqType::Cash:
                deljnl.SETRANGE(deljnl."Journal Batch Name", 'cash');
            ReqType::Cheque:
                deljnl.SETRANGE(deljnl."Journal Batch Name", 'cheque');
        END;
        IF DocType > 1 THEN
            deljnl.SETRANGE(deljnl."Journal Batch Name", 'voucher');

      /*   IF deljnl.FINDSET(TRUE, FALSE) THEN
            deljnl.DELETEALL(TRUE); */
    end;


    procedure Testgl(reqrec: Record 50103)
    var
        GlJour: Record 81;
        "GlJou 2": Record 81;
        GLENTRY: Record 17;
        GenJnlLine: Record 81;
        GenJournalLine: Record 81;
    begin
        
        /* IF "Created By" = COPYSTR(USERID, 15) THEN
            ERROR('You cannot post!');

        GlJour.LOCKTABLE;

        DelResidualJnl(reqrec."Document Type", reqrec."Cash/Cheque");
        ValidateMultipleAcc(reqrec);

        //suspended temporarily for Abanum, Dada.
        GlJour.INIT;
        CASE reqrec."Document Type" OF
            reqrec."Document Type"::Receipt:
                GlJour."Journal Template Name" := 'CASHRCPT';
            reqrec."Document Type"::Requisition:
                GlJour."Journal Template Name" := 'Payments';
            2, 3, 4:
                GlJour."Journal Template Name" := 'General';
        END;

        IF reqrec."Cash/Cheque" = reqrec."Cash/Cheque"::Cash THEN
            GlJour."Journal Batch Name" := 'Cash'
        ELSE
            GlJour."Journal Batch Name" := 'Cheque';

        IF reqrec."Document Type" > 1 THEN
            GlJour."Journal Batch Name" := 'Voucher';

        //added by santus - begin
        //check and delete existing entries on the journal line
        GenJnlLine.SETRANGE("Journal Template Name", GlJour."Journal Template Name");
        GenJnlLine.SETRANGE("Journal Batch Name", GlJour."Journal Batch Name");
        IF GenJnlLine.FINDSET THEN
            GenJnlLine.DELETEALL;
        //added by santus - end

        GlJour."Line No." := 10000;
        CASE reqrec."Account Type" OF
            1, 5:
                GlJour."Account Type" := GlJour."Account Type"::Customer;
            2, 6:
                GlJour."Account Type" := GlJour."Account Type"::Vendor;
            ELSE
                GlJour."Account Type" := reqrec."Account Type";
        END;
        GlJour.VALIDATE(GlJour."Posting Date", reqrec."Posting Date");
        GlJour.VALIDATE(GlJour."Account No.", reqrec."Account No.");
        IF reqrec."Document Type" = reqrec."Document Type"::Requisition THEN
            GlJour."Document Type" := GlJour."Document Type"::" ";
        GlJour.VALIDATE(GlJour."Document No.", reqrec."No.");
        GlJour.Description := COPYSTR(reqrec."Transaction Description", 1, 50);
        GlJour.VALIDATE(GlJour."Shortcut Dimension 1 Code", reqrec."Global Dimension 1 Code");
        GlJour.VALIDATE(GlJour."Shortcut Dimension 2 Code", reqrec."Global Dimension 2 Code");
        GlJour.VALIDATE(GlJour."Currency Code", reqrec."Currency Code");
        GlJour.VALIDATE(GlJour."Currency Factor", reqrec."Currency Factor");
        GlJour."Procurement No." := "Procurement No."; //codeware
        GlJour."Job No." := reqrec."Job Code";
        GlJour."Job Task No." := reqrec."Job Task code";
        GlJour."Job Line Type" := reqrec."Job Line Type";
        GlJour."Loan ID" := reqrec."Loan ID";
        GlJour."Loan Type" := reqrec."Loan Type";
        GlJour."Applies-to Doc. Type" := reqrec."Applies-to Doc. Type";
        GlJour.VALIDATE(GlJour."Applies-to Doc. No.", reqrec."Applies-to Doc. No.");
        //GlJour."Form M No.":= reqrec."Form M No.";
        IF GlJour."Account Type" <> GlJour."Account Type"::"Fixed Asset" THEN BEGIN
            GlJour."Depreciation Book Code" := '';
            GlJour."Maintenance Code" := '';
            GlJour."FA Posting Type" := 0;
        END
        ELSE BEGIN
            GlJour.VALIDATE(GlJour."FA Posting Type", reqrec."FA Posting Type");
            GlJour.VALIDATE(GlJour."Maintenance Code", reqrec."Maintenance Code");
        END;
        //TO GENERATE POSTING FIRST LEG LINE FOR MULTIPLE BALANCE LINES
        IF reqrec."Multiple Balance Account" = TRUE THEN BEGIN
            GlJour."Bal. Account Type" := 0;
            GlJour.VALIDATE(GlJour."Bal. Account No.", '');
        END;
        IF "Multiple Account" = TRUE THEN BEGIN
            GlJour."Account Type" := reqrec."Balance Account Type";
            GlJour.VALIDATE(GlJour."Account No.", reqrec."Balance Account No.");
            GlJour.VALIDATE(GlJour."Currency Code", reqrec."Currency Code");
            GlJour.VALIDATE(GlJour."Currency Factor", reqrec."Currency Factor");
            GlJour.Description := COPYSTR(reqrec."Transaction Description", 1, 50);
            GlJour.VALIDATE(GlJour."Shortcut Dimension 1 Code", reqrec."Balance Department Code");
            GlJour.VALIDATE(GlJour."Shortcut Dimension 2 Code", reqrec."Balance Branch Code");
            IF GlJour."Account Type" <> GlJour."Account Type"::"Fixed Asset" THEN BEGIN
                GlJour."Depreciation Book Code" := '';
                GlJour."Maintenance Code" := '';
                GlJour."FA Posting Type" := 0;
            END
            ELSE BEGIN
                GlJour.VALIDATE(GlJour."FA Posting Type", reqrec."FA Posting Type");
                GlJour.VALIDATE(GlJour."Maintenance Code", reqrec."Maintenance Code");
            END;
            GlJour."Bal. Account Type" := 0;
            GlJour.VALIDATE(GlJour."Bal. Account No.", '');
        END;
        GlJour.VALIDATE(GlJour.Amount, reqrec.Amount);
        GlJour.VALIDATE(GlJour."Job Quantity", reqrec."Job Quantity");
        IF GlJour."Account Type" = 0 THEN BEGIN
            GlJour."Gen. Prod. Posting Group" := '';
            GlJour."Gen. Bus. Posting Group" := '';
            GlJour."VAT Bus. Posting Group" := '';
            GlJour."VAT Prod. Posting Group" := '';
            GlJour."Gen. Posting Type" := 0;
        END;
        GlJour."External Document No." := reqrec."External Document No.";
        GlJour."Document Date" := reqrec."Document Date";
        IF GlJour."Account Type" = 0 THEN BEGIN
            GlJour."Gen. Prod. Posting Group" := '';
            GlJour."Gen. Bus. Posting Group" := '';
            GlJour."VAT Bus. Posting Group" := '';
            GlJour."VAT Prod. Posting Group" := '';
        END;
        IF GlJour.Amount <> 0 THEN BEGIN
            IF NOT GlJour.INSERT THEN GlJour.MODIFY;
            GlJour.VALIDATE(GlJour."Shortcut Dimension 1 Code", reqrec."Global Dimension 1 Code");
            GlJour.VALIDATE(GlJour."Shortcut Dimension 2 Code", reqrec."Global Dimension 2 Code");
            GlJour.MODIFY(TRUE);
        END;
        // Generate the Second Leg for straight Transaction
        IF (reqrec."Multiple Balance Account" = FALSE) AND (reqrec."Multiple Account" = FALSE) THEN BEGIN
            "GlJou 2" := GlJour;
            "GlJou 2"."Line No." := GlJour."Line No." + 10000;
            "GlJou 2"."Account Type" := reqrec."Balance Account Type";
            "GlJou 2".VALIDATE("GlJou 2"."Account No.", reqrec."Balance Account No.");
            "GlJou 2".Description := COPYSTR(reqrec."Transaction Description", 1, 50);
            IF "GlJou 2"."Account Type" = 0 THEN BEGIN
                "GlJou 2"."Gen. Prod. Posting Group" := '';
                "GlJou 2"."Gen. Bus. Posting Group" := '';
                "GlJou 2"."VAT Bus. Posting Group" := '';
                "GlJou 2"."VAT Prod. Posting Group" := '';
                "GlJou 2"."Gen. Posting Type" := 0;
            END;
            "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", reqrec."Balance Department Code");
            "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", reqrec."Balance Branch Code");
            "GlJou 2"."Bal. Account Type" := 0;
            "GlJou 2".VALIDATE("GlJou 2".Amount, -reqrec."Amount (LCY)");

            IF "GlJou 2"."Account Type" = 0 THEN BEGIN
                "GlJou 2"."Gen. Prod. Posting Group" := '';
                "GlJou 2"."Gen. Bus. Posting Group" := '';
                "GlJou 2"."VAT Bus. Posting Group" := '';
                "GlJou 2"."VAT Prod. Posting Group" := '';
            END;
            IF "GlJou 2"."Account Type" <> "GlJou 2"."Account Type"::"Fixed Asset" THEN BEGIN
                "GlJou 2"."Depreciation Book Code" := '';
                "GlJou 2"."Maintenance Code" := '';
                "GlJou 2"."FA Posting Type" := 0;
            END
            ELSE BEGIN
                "GlJou 2".VALIDATE("GlJou 2"."FA Posting Type", reqrec."FA Posting Type");
                "GlJou 2".VALIDATE("GlJou 2"."Maintenance Code", reqrec."Maintenance Code");
            END;
            IF "GlJou 2".Amount <> 0 THEN BEGIN
                IF NOT "GlJou 2".INSERT THEN "GlJou 2".MODIFY;
                "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", reqrec."Balance Department Code");
                "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", reqrec."Balance Branch Code");
                "GlJou 2".MODIFY(TRUE);
            END;
        END
        ELSE
        //TO GENERATE POSTING LINES FOR MULTIPLE SECOND LEGS
        BEGIN
            "GlJou 2" := GlJour;
            LineNo := "GlJou 2"."Line No.";
            ReqReptLine.SETRANGE(ReqReptLine.Type, reqrec."Document Type");
            ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", reqrec."Cash/Cheque");
            ReqReptLine.SETRANGE(ReqReptLine."No.", reqrec."No.");
            IF ReqReptLine.FIND('-') THEN
                REPEAT
                    LineNo := LineNo + 10000;
                    ReqReptLine.TESTFIELD(ReqReptLine.Amount);
                    ReqReptLine.TESTFIELD(ReqReptLine."Account No.");
                    "GlJou 2"."Line No." := LineNo;
                    CASE ReqReptLine."Account Type" OF
                        1, 5:
                            "GlJou 2"."Account Type" := ReqReptLine."Account Type"::Customer;
                        2, 6:
                            "GlJou 2"."Account Type" := ReqReptLine."Account Type"::Supplier;
                        ELSE
                            "GlJou 2"."Account Type" := ReqReptLine."Account Type";
                    END;
                    "GlJou 2".VALIDATE("GlJou 2"."Account No.", ReqReptLine."Account No.");
                    "GlJou 2".VALIDATE("GlJou 2"."Currency Code", ReqReptLine."Currency Code");
                    "GlJou 2".VALIDATE("GlJou 2"."Currency Factor", ReqReptLine."Currency Factor");
                    "GlJou 2".Description := COPYSTR(ReqReptLine."Transaction Description", 1, 50);
                    "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", ReqReptLine."Department Code");
                    "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", ReqReptLine."Branch Code");
                    "GlJou 2".VALIDATE("GlJou 2".Amount, ReqReptLine.Amount);
                    "GlJou 2"."Loan ID" := ReqReptLine."Loan ID";
                    "GlJou 2"."Loan Type" := ReqReptLine."Loan Type";
                    "GlJou 2"."Applies-to Doc. Type" := ReqReptLine."Applies-to Doc. Type";
                    "GlJou 2".VALIDATE("GlJou 2"."Applies-to Doc. No.", ReqReptLine."Applies-to Doc. No.");
                    //"GlJou 2"."Form M No."   := ReqReptLine."Form M No.";
                    "GlJou 2".VALIDATE("GlJou 2"."Job No.", ReqReptLine."Job Code");
                    "GlJou 2".VALIDATE("GlJou 2"."Job Task No.", ReqReptLine."Job Task code");
                    "GlJou 2"."Job Line Type" := ReqReptLine."Job Line Type"::Contract;
                    IF ReqReptLine."Job Code" <> '' THEN BEGIN
                        //"GlJou 2".VALIDATE("GlJou 2"."Job Unit Cost",ReqReptLine."Amount (LCY)");
                        "GlJou 2".VALIDATE("GlJou 2"."Job Quantity", 1);
                    END;
                    "GlJou 2"."Bal. Account Type" := 0;
                    IF "GlJou 2"."Account Type" = 0 THEN BEGIN
                        "GlJou 2"."Gen. Prod. Posting Group" := '';
                        "GlJou 2"."Gen. Bus. Posting Group" := '';
                        "GlJou 2"."VAT Bus. Posting Group" := '';
                        "GlJou 2"."VAT Prod. Posting Group" := '';
                        "GlJou 2"."Gen. Posting Type" := 0;
                    END;
                    IF "GlJou 2"."Account Type" <> "GlJou 2"."Account Type"::"Fixed Asset" THEN BEGIN
                        "GlJou 2"."Depreciation Book Code" := '';
                        "GlJou 2"."Maintenance Code" := '';
                        "GlJou 2"."FA Posting Type" := 0;
                    END
                    ELSE BEGIN
                        "GlJou 2".VALIDATE("GlJou 2"."FA Posting Type", ReqReptLine."FA Posting Type");
                        "GlJou 2".VALIDATE("GlJou 2"."Maintenance Code", ReqReptLine."Maintenance Code");
                    END;
                    IF "GlJou 2".Amount <> 0 THEN BEGIN
                        IF NOT "GlJou 2".INSERT THEN "GlJou 2".MODIFY;
                        "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 1 Code", ReqReptLine."Department Code");
                        "GlJou 2".VALIDATE("GlJou 2"."Shortcut Dimension 2 Code", ReqReptLine."Branch Code");
                        "GlJou 2".MODIFY(TRUE);
                    END;
                UNTIL ReqReptLine.NEXT = 0;
        END;
        COMMIT;

        IF "Test Report" THEN
            Reportprint.PrintGenJnlLine(GlJour);

        GenJournalLine.LOCKTABLE;
        GenJournalLine.SETRANGE("Journal Template Name", GlJour."Journal Template Name");
        GenJournalLine.SETRANGE("Journal Batch Name", GlJour."Journal Batch Name");
        IF GenJournalLine.FINDFIRST THEN
            GenJournalLine.DELETEALL;
            */
    end;
}

