page 70205 "LPP Card2"
{
    PageType = Card;
    SourceTable = "Local Part Purchase Register";

    layout
    {
        area(content)
        {
            group("SUPPLIER'S DETAIL")
            {
                Editable = SendEdit;
                field("Suppliers Code";Rec."Suppliers Code")
                {
                }
                field("Supplier's Name";Rec."Supplier's Name")
                {
                }
                field("Supplier's Address";Rec."Supplier's Address")
                {
                }
                field("Profoma Invoice No:";Rec."Profoma Invoice No:")
                {
                }
                field("Total Purchase Value";Rec."Total Purchase Value")
                {
                }
            }
            group(REQUESTER)
            {
                field("LPP No.";Rec."LPP No.")
                {
                }
                field("Order Type";Rec."Order Type")
                {
                }
                field("Requester Name";Rec."Requester Name")
                {
                }
                field("Requester Department";Rec."Requester Department")
                {
                }
                field("Justification for purchase";Rec."Justification for purchase")
                {
                    Editable = SendEdit;
                }
                field("Send To";Rec."Send To")
                {
                    Editable = SendEdit;
                }
                field(Send;Rec. Send)
                {
                    Editable = SendEdit;
                }
                field("TCOF No.";Rec."TCOF No.")
                {
                    Editable = false;
                }
                field("RFQ No.";Rec."RFQ No.")
                {
                }
            }
            part("LPP Subform"; "LPP Subform")
            {
                Caption = 'LPP Subform';
                SubPageLink = "Document No."=FIELD("LPP No.");
            }
            group(AUTHORIZATION)
            {
                grid(Control1)
                {
                    group(control2)
                    {
                        Editable = HeadEdit;
                        field("Head of Department";Rec."Head of Department")
                        {
                        }
                        field("Name HOD";Rec."Name HOD")
                        {
                            Editable = false;
                        }
                        field(TimeDate2;Rec.TimeDate2)
                        {
                            Editable = false;
                        }
                    }
                    group(control3)
                    {
                        Editable = CompliancEdit;
                        field("Compliance check";Rec."Compliance check")
                        {
                        }
                        field("Confirmed By";Rec."Confirmed By")
                        {
                            Editable = false;
                        }
                        field(TimeDate3;Rec. TimeDate3)
                        {
                            Editable = false;
                        }
                    }
                }
                group(control4)
                {
                    Editable = HODAuditEdit;
                    Visible = AuditVisible;
                    field("Head of Audit";Rec."Head of Audit")
                    {
                    }
                    field("Name Head of Audit";Rec."Name Head of Audit")
                    {
                    }
                    field(TimeDate4;Rec. TimeDate4)
                    {
                    }
                    group(control5)
                    {
                    }
                }
            }
            group("Procurement  Approval HOD")
            {
                Visible = HeadApprovalVisible;
                group(control6)
                {
                    Editable = HODEdit;
                    field("HOD's Part Procurement Appr.";Rec."HOD's Part Procurement Appr.")
                    {
                    }
                    field("HOD's Part  Appr. Name";Rec."HOD's Part  Appr. Name")
                    {
                    }
                    field(TimeDate5;Rec.TimeDate5)
                    {
                    }
                }
            }
            group("Procurement Approval GM")
            {
                Visible = GMVisible;
                group(control7)
                {
                    Editable = GMEdit;
                    field("General Manager";Rec."General Manager")
                    {
                    }
                    field("Name GM";Rec."Name GM")
                    {
                    }
                    field(TimeDate6;Rec.TimeDate6)
                    {
                    }
                }
            }
            group("Procurement Approval MD")
            {
                Visible = MDVisible;
                group(control8)
                {
                    Editable = MDEdit;
                    field("Managing Director";Rec."Managing Director")
                    {
                    }
                    field("Name MD";Rec."Name MD")
                    {
                    }
                    field(TimeDate7;Rec.TimeDate7)
                    {
                    }
                }
                group(Control9)
                {
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Print Document LPP")
            {
                Caption = 'Print Document LPP';
                RunObject = Report 50551;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Rec."Order Type" = Rec."Order Type"::"Isolo Store" THEN
            AuditVisible := FALSE
        ELSE
            AuditVisible := TRUE;
    end;

    trigger OnOpenPage()
    begin
        IF Rec."LPP No." <> '' THEN BEGIN
            IF Rec."Total Purchase Value" < 100001 THEN
                HeadApprovalVisible := TRUE;
            Rec.MODIFY;

            IF (Rec."Total Purchase Value" > 100000) AND (Rec."Total Purchase Value" < 500000) THEN
                GMVisible := TRUE;
            Rec.MODIFY;


            IF (rec."Total Purchase Value" >= 500000) THEN BEGIN
                MDVisible := TRUE;
                GMVisible := FALSE;
                Rec.MODIFY;
            END;
        END;

        IF Rec.Send = TRUE THEN
            SendEdit := FALSE ELSE
            SendEdit := TRUE;


        IF Rec."Head of Department" = Rec."Head of Department"::Approved THEN
            HeadEdit := FALSE ELSE
            HeadEdit := TRUE;


        IF Rec."Compliance check" = Rec."Compliance check"::Satisfactory THEN
            CompliancEdit := FALSE ELSE
            CompliancEdit := TRUE;

        IF Rec."Head of Audit" = Rec."Head of Audit"::Approved THEN
            HODAuditEdit := FALSE ELSE
            HODAuditEdit := TRUE;

        IF Rec."General Manager" = Rec."General Manager"::Approved THEN
            GMEdit := FALSE ELSE
            GMEdit := TRUE;


        IF Rec."Managing Director" = Rec."Managing Director"::Approved THEN
            MDEdit := FALSE ELSE
            MDEdit := TRUE;

        IF Rec."HOD's Part Procurement Appr." = Rec."HOD's Part Procurement Appr."::Approved THEN
            HODEdit := FALSE ELSE
            HODEdit := TRUE;


        IF Rec."Order Type" =Rec."Order Type"::"Isolo Store" THEN
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
        LPP: Record 70018;
        "LPP LPO": Report "50611";
}

