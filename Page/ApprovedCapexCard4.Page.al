page 70152 "Approved Capex Card4"
{
    PageType = Card;
    SourceTable = Table70008;

    layout
    {
        area(content)
        {
            group("Capex Details")
            {
                Editable = EditSend;
                field("No."; "No.")
                {
                    Caption = 'Capex No.';
                }
                field(Date; Date)
                {
                    Editable = false;
                }
                field("Requester Name"; "Requester Name")
                {
                    Editable = false;
                }
                field("Requester Department"; "Requester Department")
                {
                    Editable = false;
                }
                field("Capex Type"; "Capex Type")
                {
                }
                field("Budget Amount"; "Budget Amount")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {

                    trigger OnValidate()
                    begin
                        IF "Proposed Purchase Amount" >= 100000 THEN
                            "Capex Type" := "Capex Type"::"Fixed Asset";

                        IF "Proposed Purchase Amount" < 100000 THEN
                            "Capex Type" := "Capex Type"::"Sundry Asset";

                        IF "Proposed Purchase Amount" >= 100000 THEN
                            MESSAGE(Text002);
                    end;
                }
                field("Purchase Justification"; "Purchase Justification")
                {
                    Caption = 'Justification';
                }
                field("Asset Description"; "Asset Description")
                {
                }
                field("Asset User Code"; "Asset User Code")
                {
                }
                field("Asset User Name"; "Asset User Name")
                {
                }
                field("User Department Code"; "User Department Code")
                {
                    Editable = false;
                }
                field("Payment No."; "Payment No.")
                {
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
            part("Vendor Details"; 70117)
            {
                Caption = 'Vendor Details';
                Editable = EditVendorDetails;
                SubPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(No.);
            }
            group("Procurement Approval")
            {
                Visible = CapexAppr;
                grid()
                {
                    group()
                    {
                        field("Head of Department";"Head of Department")
                        {
                            Caption = 'Head of Department';
                            Editable = EditHOD2;
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
                            Editable = EditHOA2;
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name Head of Audit";"Name Head of Audit")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate2;TimeDate2)
                        {
                            Editable = false;
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("General Manager";"General Manager")
                        {
                            Caption = 'General Manager';
                            Editable = EditGM2;
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                            Visible = GMAppr;
                        }
                        field("Name GM";"Name GM")
                        {
                            ShowCaption = false;
                            Visible = NameGM;
                        }
                        field(TimeDate3;TimeDate3)
                        {
                            ShowCaption = false;
                            Visible = Date3;
                        }
                    }
                    group()
                    {
                        field("Managing Director";"Managing Director")
                        {
                            Caption = 'Managing Director';
                            Editable = EditMD2;
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                            Visible = MDAppr;
                        }
                        field("Name MD";"Name MD")
                        {
                            Editable = false;
                            ShowCaption = false;
                            Visible = NameMD;
                        }
                        field(TimeDate4;TimeDate4)
                        {
                            ShowCaption = false;
                            Visible = Date4;
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
                            Editable = EditAdvanceHOD;
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
                            Editable = EditAdvanceHOA;
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
                            Editable = EditServiceCheckRequester;
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Confirmed By1";"Confirmed By1")
                        {
                            Caption = 'Checked by Requester';
                            Editable = false;
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
                            Editable = EditServiceCheckAudit;
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
                Visible = CHECK;
                grid()
                {
                    group()
                    {
                        field("Bal. Paymt. HOD";"Bal. Paymt. HOD")
                        {
                            Caption = 'Head of Department';
                            Editable = EditBalanceHOD;
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
                            Editable = EditBalanceHOA;
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
                            Editable = EditBalanceGM;
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
                            Editable = EditBalanceMD;
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by MD";"Bal. Paymt. by MD")
                        {
                            Caption = 'Payment Approved by';
                            Editable = false;
                            ShowCaption = false;
                        }
                        field(TimeDate12;TimeDate12)
                        {
                            Editable = false;
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
                    IF "Document Type" ="Document Type" :: Opex THEN BEGIN
                        TESTFIELD("Bal. Paymt. HOD",1);
                    TESTFIELD("Bal. Paymt. Audit",1);
                    IF "Proposed Purchase Amount" > 350000 THEN
                        TESTFIELD("Bal. Paymt. MD", 1);
                    IF "Proposed Purchase Amount" <= 350000 THEN
                        TESTFIELD("Bal. Paymt. GM",1);
                    END;

                    //IF "Document Type" ="Document Type"::Capex THEN BEGIN
                    //    TESTFIELD("Bal. Paymt. HOD",1);
                    //    TESTFIELD("Bal. Paymt. Audit",1);

                    //IF ("Capex Type" = "Capex Type"::"Fixed Asset") OR ("Proposed Purchase Amount" > 100000) THEN
                    //   TESTFIELD("Bal. Paymt. MD", 1);
                    //IF ("Capex Type" = "Capex Type"::"Sundry Asset") OR ("Proposed Purchase Amount" < 100000) THEN
                        //TESTFIELD("Bal. Paymt. GM",1);
                    //END;

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
                    "Advance Voucher" := TRUE ;
                        MODIFY;

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
                    //IF "Proposed Purchase Amount" > 350000 THEN
                    //TESTFIELD("Bal. Paymt. MD", 1);
                    //IF "Proposed Purchase Amount" <= 350000 THEN
                    //TESTFIELD("Bal. Paymt. GM",1);

                    IF NOT CONFIRM(Text016,FALSE) THEN BEGIN
                      PaymentRec2.SETRANGE("Procurement No.","No.");
                      IF PaymentRec2.FINDFIRST THEN
                        PAGE.RUNMODAL(70097,PaymentRec2)
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
                        "Advance Voucher" := TRUE;
                        MODIFY;
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Send THEN BEGIN
          CapexAppr := TRUE END
        ELSE CapexAppr := FALSE;

        IF ("Capex Type" = "Capex Type"::"Fixed Asset")// OR ("Proposed Purchase Amount" > 100000)
         THEN BEGIN
          GMAppr := FALSE;
          NameGM := FALSE;
          Date3  := FALSE;
          MDAppr := TRUE;
          NameMD := TRUE;
          Date4  := TRUE;
        END ELSE BEGIN
          GMAppr := TRUE;
          NameGM := TRUE;
          Date3  := TRUE;
          MDAppr := FALSE;
          NameMD := FALSE;
          Date4  := FALSE
        END;

        IF Compliance = TRUE THEN
          Check := TRUE;
    end;

    trigger OnOpenPage()
    begin
        IF Send THEN BEGIN
          CapexAppr := TRUE END
        ELSE CapexAppr := FALSE;

        IF ("Capex Type" = "Capex Type"::"Fixed Asset")// OR ("Proposed Purchase Amount" > 100000)
        THEN BEGIN
          GMAppr := FALSE;
          NameGM := FALSE;
          Date3  := FALSE;
          MDAppr := TRUE;
          NameMD := TRUE;
          Date4  := TRUE;
        END ELSE BEGIN
          GMAppr := TRUE;
          NameGM := TRUE;
          Date3  := TRUE;
          MDAppr := FALSE;
          NameMD := FALSE;
          Date4  := FALSE
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
        //  IF "Proposed Purchase Amount" <= 350000 THEN
        //    BalGM := TRUE
        //  ELSE
        //    BalMD := TRUE;
        //    BalPay := TRUE;
        //END;
        IF "Service Delivery2" = "Service Delivery2"::Satisfactory THEN  BEGIN
        IF ("Capex Type" = "Capex Type"::"Fixed Asset")// OR ("Proposed Purchase Amount" > 100000)
         THEN BEGIN
            BalMD := TRUE;
            BalPay := TRUE;
        END ELSE BEGIN
             BalGM := TRUE
        END;
        END;
         EditApproval;
    end;

    var
        OpexLine: Record "70001";
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
        GMAppr: Boolean;
        NameGM: Boolean;
        MDAppr: Boolean;
        NameMD: Boolean;
        AdvPay: Boolean;
        Check: Boolean;
        BalPay: Boolean;
        CapexAppr: Boolean;
        Date3: Boolean;
        Date4: Boolean;
        BalMD: Boolean;
        BalGM: Boolean;
        Text001: Label 'An invoice from a vendor is required for this transaction!';
        Text002: Label '3 quotes from 3 vendors will be required for this transaction!';
        Text003: Label 'Are you sure you want to create an e-payment voucher?';
        Text011: Label 'A request for payment has been made. Kindly approve!';
        Text012: Label 'This document requires a compliance check and approval for payment!';
        Text015: Label 'A payment voucher has been raised!';
        Text016: Label 'Are you sure you want to create an cheque requisition?';
        Text017: Label 'A cheque requisition  has been raised!';
        EditSend: Boolean;
        EditHOD2: Boolean;
        EditHOA2: Boolean;
        EditGM2: Boolean;
        EditMD2: Boolean;
        EditAdvanceHOD: Boolean;
        EditAdvanceHOA: Boolean;
        EditServiceCheckRequester: Boolean;
        EditServiceCheckAudit: Boolean;
        EditBalanceHOD: Boolean;
        EditBalanceHOA: Boolean;
        EditBalanceGM: Boolean;
        EditBalanceMD: Boolean;
        EditVendorDetails: Boolean;

    local procedure EditApproval()
    begin
        IF (Send = TRUE) THEN
            EditSend := FALSE ELSE
            EditSend := TRUE;

        IF ("Head of Department"="Head of Department":: Approved) OR
           ("Bal. Paymt. HOD"="Bal. Paymt. HOD"::Approved) THEN
           EditVendorDetails:= FALSE ELSE
           EditVendorDetails:= TRUE;


        IF "Head of Department" ="Head of Department":: Approved THEN
             EditHOD2 := FALSE ELSE
             EditHOD2 := TRUE;

        IF "Head of Audit" ="Head of Audit":: Approved THEN
             EditHOA2 := FALSE ELSE
             EditHOA2 := TRUE;

        IF "General Manager" ="General Manager":: Approved THEN
             EditGM2 := FALSE ELSE
             EditGM2 := TRUE;


         IF "Managing Director" ="Managing Director":: Approved THEN
             EditMD2 := FALSE ELSE
             EditMD2 := TRUE;

        IF "Adv. Paymt. HOD"="Adv. Paymt. HOD"::Approved THEN
            EditAdvanceHOD:= FALSE ELSE
            EditAdvanceHOD:= TRUE;

        IF "Adv. Paymt. Audit"="Adv. Paymt. Audit"::Approved THEN
            EditAdvanceHOA:= FALSE ELSE
            EditAdvanceHOA:= TRUE;
        IF "Service Delivery1"="Service Delivery1"::Satisfactory THEN
            EditServiceCheckRequester:= FALSE ELSE
            EditServiceCheckRequester:= TRUE;

        IF "Service Delivery2"="Service Delivery2"::Satisfactory THEN
            EditServiceCheckAudit:= FALSE ELSE
            EditServiceCheckAudit:= TRUE;

        IF "Bal. Paymt. HOD"="Bal. Paymt. HOD"::Approved THEN
            EditBalanceHOD:= FALSE ELSE
            EditBalanceHOD:= TRUE;

        IF "Bal. Paymt. Audit"="Bal. Paymt. Audit"::Approved THEN
            EditBalanceHOA:= FALSE ELSE
            EditBalanceHOA:= TRUE;

        IF "Bal. Paymt. GM"="Bal. Paymt. GM"::Approved THEN
            EditBalanceGM:= FALSE ELSE
            EditBalanceGM:= TRUE;

        IF "Bal. Paymt. MD"="Bal. Paymt. MD"::Approved THEN
            EditBalanceMD:= FALSE ELSE
            EditBalanceMD:= TRUE;
    end;
}

