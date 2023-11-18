page 70064 "Approved RFQ COF"
{
    DeleteAllowed = false;
    Editable = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table70008;

    layout
    {
        area(content)
        {
            group("Opex Details")
            {
                field("No."; "No.")
                {
                    Caption = 'Opex No.';
                }
                field("Opex Type"; "Opex Type")
                {
                }
                field(Date; Date)
                {
                    Editable = false;
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                    Editable = false;
                }
                field("Budget Amount"; "Budget Amount")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {
                    Caption = 'Proposed Expense Amount';

                    trigger OnValidate()
                    begin
                        IF "Opex Type" IN ["Opex Type"::SLA, "Opex Type"::SE, "Opex Type"::"Recurrent Service"] THEN
                            MESSAGE(Text001);

                        IF "Opex Type" IN ["Opex Type"::"New Service", "Opex Type"::Consumable] THEN
                            IF "Proposed Purchase Amount" >= 50000 THEN
                                MESSAGE(Text002);
                    end;
                }
                field("Purchase Justification"; "Purchase Justification")
                {
                    Caption = 'Justification';
                }
                field("Purchase Type"; "Purchase Type")
                {
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Mode of Payment"; "Mode of Payment")
                {
                }
                field("Send To"; "Send To")
                {
                }
                field(Send; Send)
                {
                    Editable = EditSend;
                }
            }
            part("Vendor Details"; 70127)
            {
                Caption = 'Vendor Details';
                SubPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(No.);
            }
            group("Procurement Approval")
            {
                Visible = OpexAppr;
                grid()
                {
                    group()
                    {
                        field("Head of Department";"Head of Department")
                        {
                            Caption = 'Head of Department';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name HOD";"Name HOD")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate1;TimeDate1)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Head of Audit";"Head of Audit")
                        {
                            Caption = 'Head of Audit';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name Head of Audit";"Name Head of Audit")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate2;TimeDate2)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        Visible = GMAppr;
                        field("General Manager";"General Manager")
                        {
                            Caption = 'General Manager';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name GM";"Name GM")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate3;TimeDate3)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        Visible = MDAppr;
                        field("Managing Director";"Managing Director")
                        {
                            Caption = 'Managing Director';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name MD";"Name MD")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate4;TimeDate4)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("Advance Payment Approval")
            {
                Visible = AdvPay;
                grid()
                {
                    group()
                    {
                        field("Adv. Paymt. HOD";"Adv. Paymt. HOD")
                        {
                            Caption = 'Head of Department';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Authorized by HOD";"Authorized by HOD")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate5;TimeDate5)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Adv. Paymt. Audit";"Adv. Paymt. Audit")
                        {
                            Caption = 'Head of Audit';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Authorized by Audit";"Authorized by Audit")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate6;TimeDate6)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("Service/Item Delivery Check")
            {
                Visible = Check;
                grid()
                {
                    group()
                    {
                        field("Service Delivery1";"Service Delivery1")
                        {
                            Caption = 'Requester';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Confirmed By1";"Confirmed By1")
                        {
                            Caption = 'Checked by Requester';
                            ShowCaption = false;
                        }
                        field(TimeDate7;TimeDate7)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Service Delivery2";"Service Delivery2")
                        {
                            Caption = 'Auditor';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Confirmed By2";"Confirmed By2")
                        {
                            Caption = 'Checked by Audit';
                            ShowCaption = false;
                        }
                        field(TimeDate9;TimeDate9)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("Balance Payment  Approval")
            {
                Visible = BalPay;
                grid()
                {
                    group()
                    {
                        field("Bal. Paymt. HOD";"Bal. Paymt. HOD")
                        {
                            Caption = 'Head of Department';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by HOD";"Bal. Paymt. by HOD")
                        {
                            Caption = 'Payment Approved by';
                            ShowCaption = false;
                        }
                        field(TimeDate8;TimeDate8)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Bal. Paymt. Audit";"Bal. Paymt. Audit")
                        {
                            Caption = 'Head of Audit';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by Audit";"Bal. Paymt. by Audit")
                        {
                            Caption = 'Payment Approved by';
                            ShowCaption = false;
                        }
                        field(TimeDate10;TimeDate10)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        Visible = BalGM;
                        field("Bal. Paymt. GM";"Bal. Paymt. GM")
                        {
                            Caption = 'General Manager';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by GM";"Bal. Paymt. by GM")
                        {
                            Caption = 'Payment Approved by';
                            ShowCaption = false;
                        }
                        field(TimeDate11;TimeDate11)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        Visible = BalMD;
                        field("Bal. Paymt. MD";"Bal. Paymt. MD")
                        {
                            Caption = 'Managing Director';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by MD";"Bal. Paymt. by MD")
                        {
                            Caption = 'Payment Approved by';
                            ShowCaption = false;
                        }
                        field(TimeDate12;TimeDate12)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
        }
        area(factboxes)
        {
            part(;70130)
            {
                SubPageLink = Document Type=FIELD(Document Type),
                              No.=FIELD(No.);
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Payment Voucher")
            {
                Caption = 'Payment Voucher';
                Image = CreateFinanceChargememo;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    TESTFIELD("Bal. Paymt. HOD",1);
                    TESTFIELD("Bal. Paymt. Audit",1);
                    IF NOT ("Opex Type" = "Opex Type"::Entertainment) THEN BEGIN
                      IF ("Proposed Purchase Amount" <= 500000) THEN BEGIN
                         TESTFIELD("Bal. Paymt. GM",1);
                         END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);
                      IF ("Proposed Purchase Amount" <= 50000) THEN BEGIN
                          TESTFIELD("Bal. Paymt. GM",1);
                          END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);

                      END ;
                    END;
                    END;



                    //IF "Proposed Purchase Amount" > 500000 THEN
                    //TESTFIELD("Bal. Paymt. MD", 1);
                    //IF "Proposed Purchase Amount" <= 500000 THEN
                    //TESTFIELD("Bal. Paymt. GM",1);

                    IF NOT CONFIRM(Text003,FALSE) THEN BEGIN
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70097,PaymentRec2)
                    END ELSE BEGIN
                      PaymentRec.INIT;
                      PaymentRec."Document Type" := PaymentRec."Document Type"::"e-Pay";
                      PaymentRec."Cash/Cheque" := PaymentRec."Cash/Cheque"::Cheque;
                      PaymentRec."Account Type" := PaymentRec."Account Type"::Supplier;
                      PaymentRec."Procurement No." := "No.";
                      PaymentRec.INSERT(TRUE);
                      COMMIT;
                      MESSAGE(Text015);
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70097,PaymentRec2);
                       "Voucher Raised" := TRUE;
                        MODIFY;
                    END;
                end;
            }
            action("Create IOU")
            {
                Caption = 'Create IOU';
                Image = CreateForm;
                Promoted = true;

                trigger OnAction()
                begin
                    //TESTFIELD("Bal. Paymt. HOD",1);
                    //TESTFIELD("Bal. Paymt. Audit",1);
                    //  IF "Proposed Purchase Amount" > 500000 THEN
                    //     TESTFIELD("Bal. Paymt. MD", 1);
                    //   IF "Proposed Purchase Amount" <= 500000 THEN
                    //      TESTFIELD("Bal. Paymt. GM",1);

                    TESTFIELD("Bal. Paymt. HOD",1);
                    TESTFIELD("Bal. Paymt. Audit",1);
                    IF NOT ("Opex Type" = "Opex Type"::Entertainment) THEN BEGIN
                      IF ("Proposed Purchase Amount" <= 500000) THEN BEGIN
                         TESTFIELD("Bal. Paymt. GM",1);
                         END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);
                      IF ("Proposed Purchase Amount" <= 50000) THEN BEGIN
                          TESTFIELD("Bal. Paymt. GM",1);
                          END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);

                      END ;
                    END;
                    END;

                    IOUReg.SETRANGE("Procurement No.","No.");
                    IF IOUReg.FINDFIRST THEN
                      PAGE.RUNMODAL(70031,IOUReg);

                    IOUReg.SETRANGE("Procurement No.","No.");
                    IF NOT IOUReg.FINDFIRST THEN
                      BEGIN
                        IOUReg.INIT;
                        IOUReg."Entry Date" := Date;
                        IOUReg."Procurement No." := "No.";
                        IOUReg."Procurement Type" := "Document Type";
                        IOUReg.INSERT(TRUE);
                        COMMIT;
                        IOUReg.SETRANGE("Procurement No.","No.");
                        PAGE.RUNMODAL(70031,IOUReg);
                      END;
                end;
            }
            action("Cheque Requisition")
            {
                Caption = 'Cheque Requisition';
                Image = CreateFinanceChargememo;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    //TESTFIELD("Bal. Paymt. HOD",1);
                    //TESTFIELD("Bal. Paymt. Audit",1);
                    //IF "Proposed Purchase Amount" > 500000 THEN
                    //TESTFIELD("Bal. Paymt. MD", 1);
                    //IF "Proposed Purchase Amount" <= 500000 THEN
                    //TESTFIELD("Bal. Paymt. GM",1);


                    TESTFIELD("Bal. Paymt. HOD",1);
                    TESTFIELD("Bal. Paymt. Audit",1);
                    IF NOT ("Opex Type" = "Opex Type"::Entertainment) THEN BEGIN
                      IF ("Proposed Purchase Amount" <= 500000) THEN BEGIN
                         TESTFIELD("Bal. Paymt. GM",1);
                         END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);
                      IF ("Proposed Purchase Amount" <= 50000) THEN BEGIN
                          TESTFIELD("Bal. Paymt. GM",1);
                          END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);

                      END ;
                    END;
                    END;


                    IF NOT CONFIRM(Text016,FALSE) THEN BEGIN
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70010,PaymentRec2)
                    END ELSE BEGIN
                      PaymentRec.INIT;
                      PaymentRec."Document Type" := PaymentRec."Document Type"::Requisition;
                      PaymentRec."Cash/Cheque" := PaymentRec."Cash/Cheque"::Cheque;
                      PaymentRec."Account Type" := PaymentRec."Account Type"::Supplier;
                      PaymentRec."Procurement No." := "No.";
                      PaymentRec.INSERT(TRUE);
                      COMMIT;
                      MESSAGE(Text017);
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70010,PaymentRec2);
                       "Voucher Raised" := TRUE;
                        MODIFY;
                    END;
                end;
            }
            action("Journal Voucher")
            {
                Caption = 'Journal Voucher';
                Image = CreateFinanceChargememo;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    //TESTFIELD("Bal. Paymt. HOD",1);
                    //TESTFIELD("Bal. Paymt. Audit",1);
                    //IF "Proposed Purchase Amount" > 500000 THEN
                    //TESTFIELD("Bal. Paymt. MD", 1);
                    //IF "Proposed Purchase Amount" <= 500000 THEN
                    //TESTFIELD("Bal. Paymt. GM",1);


                    TESTFIELD("Bal. Paymt. HOD",1);
                    TESTFIELD("Bal. Paymt. Audit",1);
                    IF NOT ("Opex Type" = "Opex Type"::Entertainment) THEN BEGIN
                      IF ("Proposed Purchase Amount" <= 500000) THEN BEGIN
                         TESTFIELD("Bal. Paymt. GM",1);
                         END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);
                      IF ("Proposed Purchase Amount" <= 50000) THEN BEGIN
                          TESTFIELD("Bal. Paymt. GM",1);
                          END ELSE BEGIN
                         TESTFIELD("Bal. Paymt. MD", 1);

                      END ;
                    END;
                    END;

                    IF NOT CONFIRM(Text017,FALSE) THEN BEGIN
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70097,PaymentRec2)
                    END ELSE BEGIN
                      PaymentRec.INIT;
                      PaymentRec."Document Type" := PaymentRec."Document Type"::Journal;
                      PaymentRec."Cash/Cheque" := PaymentRec."Cash/Cheque"::Cheque;
                      PaymentRec."Account Type" := PaymentRec."Account Type"::Supplier;
                      PaymentRec."Procurement No." := "No.";
                      PaymentRec.INSERT(TRUE);
                      COMMIT;
                      MESSAGE(Text018);
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70011,PaymentRec2);
                       "Voucher Raised" := TRUE;
                        MODIFY;
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Send THEN BEGIN
          OpexAppr := TRUE END
        ELSE OpexAppr := FALSE;

        IF "Proposed Purchase Amount" <= 500000 THEN BEGIN
          GMAppr := TRUE;
          MDAppr := FALSE;
        END ELSE BEGIN
          GMAppr := FALSE;
          MDAppr := TRUE;
        END;

        IF Compliance = TRUE THEN
          Check := TRUE;

        IF "Service Delivery2" = "Service Delivery2"::Satisfactory THEN
          BalPay := TRUE;
    end;

    trigger OnOpenPage()
    begin
        IF "No." <> '' THEN BEGIN
        IF Send THEN BEGIN
          OpexAppr := TRUE END
        ELSE OpexAppr := FALSE;

        //IF "Proposed Purchase Amount" <= 500000 THEN BEGIN
        //  GMAppr := TRUE;
        //  MDAppr := FALSE;
        //END ELSE BEGIN
        //  GMAppr := FALSE;
        //  MDAppr := TRUE;
        //END;

        IF NOT ("Opex Type" = "Opex Type"::Entertainment) THEN BEGIN
          IF ("Proposed Purchase Amount" <= 500000) THEN BEGIN
            GMAppr := TRUE;
            NameGM := TRUE;
            Date3  := TRUE;
            MDAppr := FALSE;
            NameMD := FALSE;
            Date4  := FALSE;
            ListGM := TRUE;
            ListMD := FALSE;
            MODIFY

          END ELSE BEGIN
            GMAppr := FALSE;
            NameGM := FALSE;
            Date3  := FALSE;
            MDAppr := TRUE;
            NameMD := TRUE;
            Date4  := TRUE;
            ListGM := FALSE;
            ListMD := TRUE;
            MODIFY

          END
        END ELSE BEGIN
          IF ("Proposed Purchase Amount" <= 50000) THEN BEGIN
            GMAppr := TRUE;
            NameGM := TRUE;
            Date3  := TRUE;
            MDAppr := FALSE;
            NameMD := FALSE;
            Date4  := FALSE;
            ListGM := TRUE;
            ListMD := FALSE;
            MODIFY

          END ELSE BEGIN
            GMAppr := FALSE;
            NameGM := FALSE;
            Date3  := FALSE;
            MDAppr := TRUE;
            NameMD := TRUE;
            Date4  := TRUE;
            ListGM := FALSE;
            ListMD := TRUE;
            MODIFY

          END
        END;

        ProcurementLine.SETRANGE("Document No.","No.");
        ProcurementLine.SETRANGE(Preferred,TRUE);
        IF ProcurementLine.FINDFIRST THEN
          IF (ProcurementLine."Payment Terms" <> ProcurementLine."Payment Terms":: "100% after delivery") AND
             (ProcurementLine."Payment Terms" <> ProcurementLine."Payment Terms":: "100% before delivery")THEN
           IF ("General Manager" = "General Manager"::Approved) OR ("Managing Director" = "Managing Director"::Approved) THEN

            AdvPay := TRUE;

        IF Compliance = TRUE THEN
          Check := TRUE;

        //IF "Service Delivery2" = "Service Delivery2"::Satisfactory THEN  BEGIN
        //  IF "Proposed Purchase Amount" <= 500000 THEN
        //    BalGM := TRUE
        //  ELSE
        //    BalMD := TRUE;
        //    BalPay := TRUE;
        //END;

        IF NOT ("Opex Type" = "Opex Type"::Entertainment) THEN BEGIN
          IF ("Proposed Purchase Amount" <= 500000) THEN BEGIN
              BalGM := TRUE;
              BalMD := FALSE;
              BalPay := TRUE;
              MODIFY
          END ELSE BEGIN
              BalGM := FALSE;
              BalMD := TRUE;
              BalPay := TRUE;
              MODIFY

          END
        END ELSE BEGIN
          IF ("Proposed Purchase Amount" <= 50000) THEN BEGIN
               BalGM := TRUE ;
               BalMD := FALSE;
               BalPay := TRUE;
               MODIFY
          END ELSE BEGIN
              BalGM := FALSE;
              BalMD := TRUE;
              BalPay := TRUE;
              MODIFY

          END ;
        END;
        END;

          IF (Send = TRUE)OR ("Payment Approval Only" = TRUE) THEN
            EditSend := FALSE ELSE
            EditSend := TRUE;
    end;

    var
        Text001: Label 'An invoice from a vendor is required for this transaction!';
        OpexLine: Record "70001";
        Text002: Label '3 quotes from 3 vendors will be required for this transaction!';
        Mail: Codeunit "397";
        ToAddresses: Text;
        CcAddresses: Text;
        BccAddresses: Text;
        Subject: Text;
        Body: Text;
        AttachFilename: Text;
        ShowNewMailDialogOnSend: Boolean;
        UserSetup: Record "91";
        UserSetup2: Record "91";
        IOUReg: Record "50105";
        OpexRec: Record "70008";
        OpexRec2: Record "70008";
        Url: Text[500];
        PaymentRec: Record "50103";
        PaymentRec2: Record "50103";
        EditHOD: Boolean;
        EditAudit: Boolean;
        EditGM: Boolean;
        EditMD: Boolean;
        VisibleGM: Boolean;
        VisibleMD: Boolean;
        ProcurementLine: Record "70001";
        ProcurementLine2: Record "70001";
        PurchSetup: Record "312";
        CRLF: Text[2];
        VendName: Text[70];
        VendAddr: Text[100];
        VendAmt: Decimal;
        UserSetup4: Record "91";
        SendersName: Text[50];
        Addressee: Text[50];
        Text003: Label 'Are you sure you want to create an e-payment voucher?';
        Text011: Label 'A request for payment has been made. Kindly approve!';
        Text012: Label 'This document requires a compliance check and approval for payment!';
        Text015: Label 'A payment voucher has been raised!';
        GMAppr: Boolean;
        NameGM: Boolean;
        MDAppr: Boolean;
        NameMD: Boolean;
        AdvPay: Boolean;
        Check: Boolean;
        BalPay: Boolean;
        OpexAppr: Boolean;
        Date3: Boolean;
        Date4: Boolean;
        BalMD: Boolean;
        BalGM: Boolean;
        Text016: Label 'Are you sure you want to create an cheque requisition?';
        Text017: Label 'A cheque requisition  has been raised!';
        Text018: Label 'Are you sure you want to generate a journal voucher?';
        Text019: Label 'A journal  voucher  has been raised!';
        EditSend: Boolean;
}

