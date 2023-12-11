table 50103 "Payment/Receipt."
{
    DataCaptionFields = "Document Type", "No.";

    fields
    {
        field(1; "No."; Code[20])
        {

            trigger OnValidate()
            begin
                IF "No." <> xRec."No." THEN BEGIN
                    GenSetup.GET;
                    //NoSeriesMgt.TestManual(GetNoSeriesCode);
                    "No. Series" := '';
                END;


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
        field(4; "Account Type"; Enum "Gen. Journal Account Type")
        {


            trigger OnValidate()
            begin
                IF xRec."Account Type" <> "Account Type" THEN BEGIN
                    "Account No." := '';
                    "Account Description" := '';
                END;
            end;
        }
        field(5; "Account No."; Code[20])
        {
            TableRelation = IF ("Account Type" = const("G/L Account")) "G/L Account"."No." WHERE(Blocked = FILTER(false), "Account Type" = filter(Posting))
            ELSE
            IF ("Account Type" = const(Customer)) Customer."No." WHERE(Blocked = FILTER(<> 'All'), "Customer Posting Group" = FILTER(<> 'STAFF'))
            ELSE
            IF ("Cash/Cheque" = const(Cheque), "Account Type" = filter("Bank Account")) "Bank Account"."No." WHERE(Blocked = filter(false))
            ELSE
            IF ("Account Type" = const(Vendor)) Vendor."No." WHERE(Blocked = FILTER(<> 'All'))
            ELSE
            IF ("Account Type" = const("Fixed Asset")) "Fixed Asset"."No." WHERE(Blocked = filter(false))
            ELSE
            IF ("Account Type" = const("Staff Loan")) Customer."No." WHERE(Blocked = FILTER(<> 'All'))
            ELSE
            IF ("Account Type" = const(LC)) Vendor."No." WHERE(Blocked = filter(<> All), "Vendor Posting Group" = FILTER('LC*'));

            trigger OnValidate()
            begin
                IF "Account No." <> '' THEN BEGIN
                    CASE "Account Type" OF

                        "Account Type"::"G/L Account":
                            BEGIN
                                "g/lacc".GET("Account No.");
                                "Account Description" := "g/lacc".Name;
                                "Global Dimension 1 Code" := "g/lacc"."Global Dimension 1 Code";
                                "Global Dimension 2 Code" := "g/lacc"."Global Dimension 2 Code";
                            END;
                        "Account Type"::Customer, "Account Type"::"Staff Loan":
                            BEGIN
                                custrec.GET("Account No.");
                                "Account Description" := custrec.Name;
                                "Global Dimension 1 Code" := custrec."Global Dimension 1 Code";
                                "Global Dimension 2 Code" := custrec."Global Dimension 2 Code";
                            END;
                        "Account Type"::Vendor, "Account Type"::LC:
                            BEGIN
                                vendrec.GET("Account No.");
                                "Account Description" := vendrec.Name;
                                "Global Dimension 1 Code" := vendrec."Global Dimension 1 Code";
                                "Global Dimension 2 Code" := vendrec."Global Dimension 2 Code";
                            END;
                        "Account Type"::"Bank Account":
                            BEGIN
                                bankrec.GET("Account No.");
                                "Account Description" := bankrec.Name;
                                "Global Dimension 1 Code" := bankrec."Global Dimension 1 Code";
                                "Global Dimension 2 Code" := bankrec."Global Dimension 2 Code";
                            END;
                        "Account Type"::"Fixed Asset":
                            BEGIN
                                fixedrec.GET("Account No.");
                                "Account Description" := fixedrec.Description;
                                "Global Dimension 1 Code" := fixedrec."Global Dimension 1 Code";
                                "Global Dimension 2 Code" := fixedrec."Global Dimension 2 Code";
                            END;
                    END;
                END;
            end;
        }
        field(6; "Account Description"; Text[50])
        {
        }
        field(7; "Transaction Description"; Text[250])
        {
        }
        field(8; "Balance Account Type"; Enum "Gen. Journal Account Type")
        {

            trigger OnValidate()
            begin
                IF xRec."Balance Account Type" <> "Balance Account Type" THEN BEGIN
                    "Bal. Acc. Description" := '';
                    "Balance Account No." := '';
                END;
            end;
        }
        field(9; "Balance Account No."; Code[20])
        {
            TableRelation = IF ("Balance Account Type" = const("G/L Account")) "G/L Account"."No." WHERE(Blocked = filter(false), "Account Type" = const(Posting))
            ELSE
            IF ("Cash/Cheque" = const(Cheque), "Balance Account Type" = const("Bank Account")) "Bank Account"."No." WHERE(Blocked = filter(false))
            ELSE
            IF ("Balance Account Type" = const(Customer)) Customer."No." WHERE(Blocked = FILTER(<> All))
            ELSE
            IF ("Balance Account Type" = const(vendor)) Vendor."No." WHERE(Blocked = FILTER(<> All))
            ELSE
            IF ("Balance Account Type" = const("Fixed Asset")) "Fixed Asset"."No." WHERE(Blocked = filter(false))
            ELSE
            IF ("Cash/Cheque" = const(Cash), "Balance Account Type" = const("Bank Account")) "Bank Account"."No." WHERE(Blocked = filter(false), Cashier = filter(true));

            trigger OnValidate()
            begin
                IF "Balance Account No." <> '' THEN BEGIN
                    CASE "Balance Account Type" OF
                        "Account Type"::"G/L Account":
                            BEGIN
                                "g/lacc".GET("Balance Account No.");
                                "Bal. Acc. Description" := "g/lacc".Name;
                                "Balance Department Code" := "g/lacc"."Global Dimension 1 Code";
                                "Balance Branch Code" := "g/lacc"."Global Dimension 2 Code";
                            END;
                        "Account Type"::Customer:
                            BEGIN
                                custrec.GET("Balance Account No.");
                                "Bal. Acc. Description" := custrec.Name;
                                "Balance Department Code" := custrec."Global Dimension 1 Code";
                                "Balance Branch Code" := custrec."Global Dimension 2 Code";
                            END;
                        "Account Type"::Vendor:
                            BEGIN
                                vendrec.GET("Balance Account No.");
                                "Bal. Acc. Description" := vendrec.Name;
                                "Balance Department Code" := vendrec."Global Dimension 1 Code";
                                "Balance Branch Code" := vendrec."Global Dimension 2 Code";
                            END;
                        "Account Type"::"Bank Account":
                            BEGIN
                                bankrec.GET("Balance Account No.");
                                "Bal. Acc. Description" := bankrec.Name;
                                "Balance Department Code" := bankrec."Global Dimension 1 Code";
                                "Balance Branch Code" := bankrec."Global Dimension 2 Code";
                            END;
                        "Account Type"::"Fixed Asset":
                            BEGIN
                                fixedrec.GET("Balance Account No.");
                                "Bal. Acc. Description" := fixedrec.Description;
                                "Balance Department Code" := fixedrec."Global Dimension 1 Code";
                                "Balance Branch Code" := fixedrec."Global Dimension 2 Code";
                            END;
                    END;
                END;
            end;
        }
        field(10; "Global Dimension 1 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = filter(1));
        }
        field(11; "Global Dimension 2 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = filter(2));
        }
        field(12; Amount; Decimal)
        {

            trigger OnValidate()
            begin

                /*   //GetCurrency;
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
                  UpdateLineBalance;  */


            end;
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

            trigger OnValidate()
            begin
                IF "Multiple Balance Account" = TRUE THEN BEGIN
                    IF "Multiple Account" = TRUE THEN BEGIN
                        ReqReptLine.SETRANGE(ReqReptLine.Type, "Document Type");
                        ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", "Cash/Cheque");
                        ReqReptLine.SETRANGE(ReqReptLine."No.", "No.");
                        IF ReqReptLine.FIND('-') THEN
                            ReqReptLine.DELETEALL;
                        "Multiple Account" := FALSE;
                    END;
                END
                ELSE BEGIN
                    ReqReptLine.SETRANGE(ReqReptLine.Type, "Document Type");
                    ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", "Cash/Cheque");
                    ReqReptLine.SETRANGE(ReqReptLine."No.", "No.");
                    IF ReqReptLine.FIND('-') THEN
                        ReqReptLine.DELETEALL;
                END;
            end;
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
            CalcFormula = Sum("Payment/Receipt Bal. Line."."Amount (LCY)" WHERE("No." = FIELD("No."), Type = FIELD("Document Type"), "Cash/Cheque" = FIELD("Cash/Cheque")));
            FieldClass = FlowField;
        }
        field(27; Cashier; Code[20])
        {
        }
        field(28; "Credit Amount"; Decimal)
        {

            trigger OnValidate()
            begin
                IF "Credit Amount" <> 0 THEN
                    "Debit Amount" := 0;
                Amount := -"Credit Amount";
                IF "Currency Code" = '' THEN
                    "Amount (LCY)" := Amount
                ELSE
                    "Amount (LCY)" := ROUND(
                      CurrExchRate.ExchangeAmtFCYToLCY(
                        "Posting Date", "Currency Code",
                        Amount, "Currency Factor"));

                Amount := ROUND(Amount, currency."Amount Rounding Precision");
            end;
        }
        field(29; "Debit Amount"; Decimal)
        {

            trigger OnValidate()
            begin
                IF "Debit Amount" <> 0 THEN
                    "Credit Amount" := 0;
                Amount := "Debit Amount";
                IF "Currency Code" = '' THEN
                    "Amount (LCY)" := Amount
                ELSE
                    "Amount (LCY)" := ROUND(
                      CurrExchRate.ExchangeAmtFCYToLCY(
                        "Posting Date", "Currency Code",
                        Amount, "Currency Factor"));

                Amount := ROUND(Amount, currency."Amount Rounding Precision");
            end;
        }
        field(30; "Bal. Acc. Description"; Text[50])
        {
        }
        field(31; "Multiple Account"; Boolean)
        {

            trigger OnValidate()
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
                        VALIDATE("Credit Amount", "Debit Amount")
                    else
                        VALIDATE("Debit Amount", "Credit Amount");
                END
                ELSE BEGIN
                    ReqReptLine.SETRANGE(ReqReptLine.Type, "Document Type");
                    ReqReptLine.SETRANGE(ReqReptLine."Cash/Cheque", "Cash/Cheque");
                    ReqReptLine.SETRANGE(ReqReptLine."No.", "No.");
                    IF ReqReptLine.FIND('-') THEN
                        ReqReptLine.DELETEALL;
                END;

            end;
        }
        field(32; "Balance Department Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = filter(1));
        }
        field(33; "Balance Branch Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = filter(2));
        }
        field(34; "Bank Name"; Text[50])
        {
        }
        field(35; "Balance Total"; Decimal)
        {
            CalcFormula = Sum("Payment/Receipt Bal. Line.".Amount WHERE("No." = FIELD("No."), Type = FIELD("Document Type"), "Cash/Cheque" = FIELD("Cash/Cheque")));
            FieldClass = FlowField;
        }
        field(36; Finished; Boolean)
        {
        }
        field(37; "Currency Code"; Code[20])
        {
            TableRelation = Currency.Code;

            trigger OnValidate()
            begin
                IF "Currency Code" <> '' THEN BEGIN
                    //GetCurrency;
                    IF ("Currency Code" <> xRec."Currency Code") OR
                       ("Posting Date" <> xRec."Posting Date") OR
                       (CurrFieldNo = FIELDNO("Currency Code")) OR
                       ("Currency Factor" = 0)
                    THEN BEGIN
                        "Currency Factor" :=
                          CurrExchRate.ExchangeRate("Posting Date", "Currency Code");
                        IF ("Exchange rate" <> 0) THEN
                            "Currency Factor" := 100 / "Exchange rate";
                        IF Amount <> 0 THEN
                            "Amount (LCY)" := ROUND(
                             CurrExchRate.ExchangeAmtFCYToLCY(
                              "Posting Date", "Currency Code",
                                Amount, "Currency Factor"));
                    END;

                END ELSE
                    "Currency Factor" := 0;
            end;
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

            trigger OnValidate()
            begin
                IF ("Currency Code" = '') AND ("Currency Factor" <> 0) THEN
                    FIELDERROR("Currency Factor", STRSUBSTNO(Text002, FIELDCAPTION("Currency Code")));
            end;
        }
        field(41; "Exchange rate"; Decimal)
        {
            DecimalPlaces = 2 : 9;

            trigger OnValidate()
            begin
                IF "Currency Code" = '' THEN
                    "Amount (LCY)" := Amount
                ELSE BEGIN
                    IF "Exchange rate" <> 0 THEN
                        "Currency Factor" := 100 / "Exchange rate";
                    "Amount (LCY)" := ROUND(
                      CurrExchRate.ExchangeAmtFCYToLCY(
                        "Posting Date", "Currency Code",
                        Amount, "Currency Factor"));
                END;
            end;
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
            TableRelation = User;
        }
        field(77; "Current pending Person"; Code[20])
        {
            TableRelation = user;
        }
        field(78; Attachment; Text[250])
        {
        }
        field(79; "Send for 2nd Apprv."; Boolean)
        {


        }
        field(80; "Send for 3rd Apprv."; Boolean)
        {


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
            CalcFormula = Sum("Payment/Receipt Bal. Line."."Amount (LCY)" WHERE("No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
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

            trigger OnLookup()
            var
                GenJnlPostLine: Codeunit 12;
                PaymentToleranceMgt: Codeunit 426;
            begin
            end;

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

        }
        field(92; "Approved Doc. No."; Code[20])
        {
        }
        field(93; "Cash Transaction"; Boolean)
        {
        }
        field(94; "Total Amount on Line"; Decimal)
        {
            CalcFormula = Sum("Payment/Receipt Bal. Line."."Amount (LCY)" WHERE("No." = FIELD("No.")));
            FieldClass = FlowField;
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
                    "Balance Account Type" := "Balance Account Type"::"Bank Account";
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

    end;

    trigger OnInsert()
    begin


    end;

    trigger OnModify()
    begin

    end;

    trigger OnRename()
    begin


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
        BodyStream: OutStream;
        SenderInitial: Text;
        SenderEmail: Text[50];
        Initials: Text[10];
        CRLF: Text[2];
        PaymentReceipt: Record 50103;











}

