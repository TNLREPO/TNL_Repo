page 70205 "LPP Card2"
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
                field("Suppliers Code"; "Suppliers Code")
                {
                }
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
            }
            group(REQUESTER)
            {
                field("LPP No."; "LPP No.")
                {
                }
                field("Order Type"; "Order Type")
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
                field("TCOF No."; "TCOF No.")
                {
                    Editable = false;
                }
                field("RFQ No."; "RFQ No.")
                {
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
                            Editable = false;
                        }
                        field(TimeDate2; TimeDate2)
                        {
                            Editable = false;
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
                            Editable = false;
                        }
                        field(TimeDate3; TimeDate3)
                        {
                            Editable = false;
                        }
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

            IF ("Total Purchase Value" > 100000) AND ("Total Purchase Value" < 500000) THEN
                GMVisible := TRUE;
            MODIFY;


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
        LPP: Record "70018";
        "LPP LPO": Report "50611";
}

