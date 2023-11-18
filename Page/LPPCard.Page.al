page 70192 "LPP Card"
{
    PageType = Card;
    SourceTable = Table70018;

    layout
    {
        area(content)
        {
            group("SUPPLIER'S DETAIL")
            {
                Editable = SendEdit;
                field("Supplier's Name"; "Supplier's Name")
                {
                }
                field("Supplier's Address"; "Supplier's Address")
                {
                }
                field("Profoma Invoice No:"; "Profoma Invoice No:")
                {
                }
                field("Total Purchase Value"; "Total Purchase Value")
                {
                }
                field("Order Type"; "Order Type")
                {
                }
                field("TCOF No."; "TCOF No.")
                {
                    Editable = false;
                }
            }
            group(REQUESTER)
            {
                field("LPP No."; "LPP No.")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Justification for purchase"; "Justification for purchase")
                {
                    Editable = SendEdit;
                }
                field("Send To"; "Send To")
                {
                    Editable = SendEdit;
                }
                field(Send; Send)
                {
                    Editable = SendEdit;
                }
            }
            part("LPP Subform"; 70191)
            {
                Caption = 'LPP Subform';
                SubPageLink = Document No.=FIELD(LPP No.);
            }
            group(AUTHORIZATION)
            {
                grid()
                {
                    group()
                    {
                        Editable = HeadEdit;
                        field("Head of Department"; "Head of Department")
                        {
                        }
                        field("Name HOD"; "Name HOD")
                        {
                        }
                        field(TimeDate2; TimeDate2)
                        {
                        }
                    }
                    group()
                    {
                        Editable = CompliancEdit;
                        field("Compliance check"; "Compliance check")
                        {
                        }
                        field("Confirmed By"; "Confirmed By")
                        {
                        }
                        field(TimeDate3; TimeDate3)
                        {
                        }
                    }
                    group()
                    {
                        Editable = HODAuditEdit;
                        Visible = AuditVisible;
                        field("Head of Audit"; "Head of Audit")
                        {
                        }
                        field("Name Head of Audit"; "Name Head of Audit")
                        {
                        }
                        field(TimeDate4; TimeDate4)
                        {
                        }
                    }
                    group()
                    {
                    }
                }
            }
            group("Procurement  Approval HOD")
            {
                Visible = HeadApprovalVisible;
                group()
                {
                    Editable = HODEdit;
                    field("HOD's Part Procurement Appr."; "HOD's Part Procurement Appr.")
                    {
                    }
                    field("HOD's Part  Appr. Name"; "HOD's Part  Appr. Name")
                    {
                    }
                    field(TimeDate5; TimeDate5)
                    {
                    }
                }
            }
            group("Procurement Approval GM")
            {
                Visible = GMVisible;
                group()
                {
                    Editable = GMEdit;
                    field("General Manager"; "General Manager")
                    {
                    }
                    field("Name GM"; "Name GM")
                    {
                    }
                    field(TimeDate6; TimeDate6)
                    {
                    }
                }
            }
            group("Procurement Approval MD")
            {
                Visible = MDVisible;
                group()
                {
                    Editable = MDEdit;
                    field("Managing Director"; "Managing Director")
                    {
                    }
                    field("Name MD"; "Name MD")
                    {
                    }
                    field(TimeDate7; TimeDate7)
                    {
                    }
                }
                group()
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Print LPP")
            {
                Caption = 'Print LPP';
                Image = Bin;
                RunObject = Report 50075;
            }
            action("Payment Voucher")
            {
                Caption = 'Payment Voucher';
                Image = CreateFinanceChargememo;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    TESTFIELD("Genarate LPO", TRUE);

                    IF NOT CONFIRM(Text001, FALSE) THEN BEGIN
                        PaymentRec2.SETRANGE("Procurement No.", "LPP No.");
                        IF PaymentRec2.FINDFIRST THEN
                            PAGE.RUNMODAL(70097, PaymentRec2)
                    END ELSE BEGIN
                        PaymentRec.INIT;
                        PaymentRec."Document Type" := PaymentRec."Document Type"::"e-Pay";
                        PaymentRec."Cash/Cheque" := PaymentRec."Cash/Cheque"::Cheque;
                        PaymentRec."Account Type" := PaymentRec."Account Type"::Supplier;
                        PaymentRec."Procurement No." := "LPP No.";
                        PaymentRec.INSERT(TRUE);
                        COMMIT;
                        MESSAGE(Text002);

                        PaymentRec2.SETRANGE("Procurement No.", "LPP No.");
                        IF PaymentRec2.FINDFIRST THEN
                            PAGE.RUNMODAL(70097, PaymentRec2);
                        "Voucher Raised" := TRUE;
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

                    TESTFIELD("Genarate LPO", TRUE);


                    IF NOT CONFIRM(Text003, FALSE) THEN BEGIN
                        PaymentRec2.SETRANGE("Procurement No.", "LPP No.");
                        IF PaymentRec2.FINDFIRST THEN
                            PAGE.RUNMODAL(70010, PaymentRec2)
                    END ELSE BEGIN
                        PaymentRec.INIT;
                        PaymentRec."Document Type" := PaymentRec."Document Type"::Requisition;
                        PaymentRec."Cash/Cheque" := PaymentRec."Cash/Cheque"::Cheque;
                        PaymentRec."Account Type" := PaymentRec."Account Type"::Supplier;
                        PaymentRec."Procurement No." := "LPP No.";
                        PaymentRec.INSERT(TRUE);
                        COMMIT;
                        MESSAGE(Text004);
                        PaymentRec2.SETRANGE("Procurement No.", "LPP No.");
                        IF PaymentRec2.FINDFIRST THEN
                            PAGE.RUNMODAL(70010, PaymentRec2);
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
                    TESTFIELD("Genarate LPO", TRUE);

                    IF NOT CONFIRM(Text005, FALSE) THEN BEGIN
                        PaymentRec2.SETRANGE("Procurement No.", "LPP No.");
                        IF PaymentRec2.FINDFIRST THEN
                            PAGE.RUNMODAL(70097, PaymentRec2)
                    END ELSE BEGIN
                        PaymentRec.INIT;
                        PaymentRec."Document Type" := PaymentRec."Document Type"::Journal;
                        PaymentRec."Cash/Cheque" := PaymentRec."Cash/Cheque"::Cheque;
                        PaymentRec."Account Type" := PaymentRec."Account Type"::Supplier;
                        PaymentRec."Procurement No." := "LPP No.";
                        PaymentRec.INSERT(TRUE);
                        COMMIT;
                        MESSAGE(Text006);
                        PaymentRec2.SETRANGE("Procurement No.", "LPP No.");
                        IF PaymentRec2.FINDFIRST THEN
                            PAGE.RUNMODAL(70011, PaymentRec2);
                        "Voucher Raised" := TRUE;
                        MODIFY;
                    END;
                end;
            }
            action("Generate LPO")
            {
                Caption = 'Generate LPO';
                Image = "Report";

                trigger OnAction()
                begin

                    //LPP.SETRANGE(LPP."LPP No.","LPP No.");
                    //IF LPP.FINDFIRST THEN BEGIN
                    //  "LPP LPO".SETTABLEVIEW(LPP);
                    //  "LPP LPO".RUN;
                    //END;
                    GenaratePayment := TRUE;
                end;
            }
            action("Print  LPO")
            {
                Caption = 'Print  LPO';
                Image = Print;

                trigger OnAction()
                begin
                    TESTFIELD("Genarate LPO", TRUE);

                    LPP.SETRANGE(LPP."LPP No.", "LPP No.");
                    IF LPP.FINDFIRST THEN BEGIN
                        "LPP LPO".SETTABLEVIEW(LPP);
                        "LPP LPO".RUN;
                    END;
                    //GenaratePayment:= TRUE;
                end;
            }
            action("Print Document LPP")
            {
                Caption = 'Print Document LPP';
                RunObject = Report 50551;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF "Order Type" = "Order Type"::"Isolo Store" THEN
            AuditVisible := FALSE
        ELSE
            AuditVisible := TRUE;
    end;

    trigger OnOpenPage()
    begin
        IF "LPP No." <> '' THEN BEGIN
            IF "Total Purchase Value" < 100001 THEN
                HeadApprovalVisible := TRUE;
            MODIFY;

            IF ("Total Purchase Value" > 100000) AND ("Total Purchase Value" < 500000) THEN BEGIN
                GMVisible := TRUE;
                MDVisible := FALSE;
                MODIFY;
            END;

            IF ("Total Purchase Value" >= 500000) THEN BEGIN
                MDVisible := TRUE;
                GMVisible := FALSE;
                MODIFY;
            END;
        END;

        IF Send = TRUE THEN
            SendEdit := FALSE ELSE
            SendEdit := TRUE;


        IF "Head of Department" = "Head of Department"::Approved THEN
            HeadEdit := FALSE ELSE
            HeadEdit := TRUE;


        IF "Compliance check" = "Compliance check"::Satisfactory THEN
            CompliancEdit := FALSE ELSE
            CompliancEdit := TRUE;

        IF "Head of Audit" = "Head of Audit"::Approved THEN
            HODAuditEdit := FALSE ELSE
            HODAuditEdit := TRUE;

        IF "General Manager" = "General Manager"::Approved THEN
            GMEdit := FALSE ELSE
            GMEdit := TRUE;


        IF "Managing Director" = "Managing Director"::Approved THEN
            MDEdit := FALSE ELSE
            MDEdit := TRUE;

        IF "HOD's Part Procurement Appr." = "HOD's Part Procurement Appr."::Approved THEN
            HODEdit := FALSE ELSE
            HODEdit := TRUE;


        IF "Order Type" = "Order Type"::"Isolo Store" THEN
            AuditVisible := FALSE
        ELSE
            AuditVisible := TRUE;
    end;

    var
        HODVisible: Boolean;
        GMVisible: Boolean;
        MDVisible: Boolean;
        VendAmt: Decimal;
        HeadApprovalVisible: Boolean;
        AuditVisible: Boolean;
        ComplianceVisible: Boolean;
        SendEdit: Boolean;
        HeadEdit: Boolean;
        CompliancEdit: Boolean;
        HODAuditEdit: Boolean;
        HODEdit: Boolean;
        GMEdit: Boolean;
        MDEdit: Boolean;
        LppLine: Record "70019";
        PaymentRec: Record 50103;
        PaymentRec2: Record 50103;
        Text001: Label 'Are you sure you want to create an e-payment voucher?';
        Text002: Label 'A payment voucher has been raised!';
        Text003: Label 'Are you sure you want to create an cheque requisition?';
        Text004: Label 'A cheque requisition  has been raised!';
        Text005: Label 'Are you sure you want to generate a journal voucher?';
        Text006: Label 'A journal  voucher  has been raised!';
        LPP: Record "70018";
        "LPP LPO": Report "50611";
}

