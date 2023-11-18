page 50440 "Approved IOU"
{
    PageType = Card;
    SourceTable = Table50105;
    SourceTableView = SORTING (IOU No.)
                      WHERE (Posted = CONST (No),
                            Treated = FILTER (No));

    layout
    {
        area(content)
        {
            group("IOU Payment")
            {
                Caption = 'IOU Payment';
                field("IOU No."; "IOU No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                    Caption = 'Entry Date';
                }
                field(Description; Description)
                {
                    Caption = 'Purpose';
                }
                field(Amount; Amount)
                {
                }
                field("Account Type"; "Account Type")
                {
                }
                field("Account No."; "Account No.")
                {
                    Caption = 'Staff No';
                }
                field("Account Name"; "Account Name")
                {
                    Caption = 'Staff Name';
                    Editable = false;
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Expected Retirement Date"; "Expected Retirement Date")
                {
                    Caption = 'Exp. Retirement Date';
                }
                field("Manual Voucher No."; "Manual Voucher No.")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Visible = true;
                }
                field("Bal. Account Type"; "Bal. Account Type")
                {
                }
                field("Bal. Account No."; "Bal. Account No.")
                {
                }
                field(Treated; Treated)
                {
                    Editable = false;
                }
                field(Posted; Posted)
                {
                    Visible = false;
                }
                field(Approved; Approved)
                {
                    Visible = false;
                }
                field("Approved By"; "Approved By")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                    Visible = false;
                }
                field(Paid; Paid)
                {
                    Visible = false;

                    trigger OnValidate()
                    begin
                        TESTFIELD("Account Name");
                        TESTFIELD("Final Apprv. Status", 2);
                        /*IF "No. Printed" = '' THEN
                          ERROR('IOU %1 must be printed!',"IOU No.");*/
                        //GPC.AccessGranted('39');
                        TESTFIELD("Payment Date");
                        TESTFIELD("Expected Retirement Date");
                        IF "Payment Date" > "Expected Retirement Date" THEN
                            ERROR(FIELDCAPTION("Payment Date") + ' cannot come after '
                               + FIELDCAPTION("Expected Retirement Date"));
                        GPC.PostIOUPayment(Rec, FALSE);
                        PaidOnAfterValidate;

                    end;
                }
                field("Paid By"; "Paid By")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                    Visible = false;
                }
            }
            group(Sender)
            {
                field("1st Approval to"; "1st Approval to")
                {
                    Caption = 'Send To';
                    Editable = "1st Approval toEditable";
                }
                field("1st Approver"; "1st Approver")
                {
                    Editable = false;
                }
                field("Send for Approval"; "Send for Approval")
                {
                    Editable = "Send for ApprovalEditable";

                    trigger OnValidate()
                    begin
                        IF "Send for Approval" THEN
                            "1st Approval toEditable" := FALSE
                        ELSE
                            "1st Approval toEditable" := TRUE;
                    end;
                }
                field("Sent Time"; "Sent Time")
                {
                    Editable = false;
                }
            }
            group("1st Approval")
            {
                Visible = "1st ApprovalVisible";
                field("2nd Approval to"; "2nd Approval to")
                {
                    Caption = 'For Next Approval Send to';
                    Editable = "2nd Approval toEditable";
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Editable = false;
                }
                field("1st Apprv. Status"; "1st Apprv. Status")
                {
                    Editable = "1st Apprv. StatusEditable";

                    trigger OnValidate()
                    begin
                        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN BEGIN
                            "2nd Approval toEditable" := FALSE;
                            "Send for ApprovalEditable" := FALSE
                        END ELSE BEGIN
                            "2nd Approval toEditable" := TRUE;
                            "Send for ApprovalEditable" := TRUE
                        END;
                    end;
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Editable = false;
                }
            }
            group("2nd Approval")
            {
                Visible = "2nd ApprovalVisible";
                field("3rd Approval to"; "3rd Approval to")
                {
                    Caption = 'For Next Approval Send to';
                    Editable = "3rd Approval toEditable";
                }
                field("3rd Approver"; "3rd Approver")
                {
                    Editable = false;
                }
                field("2nd Apprv. Status"; "2nd Apprv. Status")
                {
                    Editable = "2nd Apprv. StatusEditable";

                    trigger OnValidate()
                    begin
                        IF "2nd Apprv. Status" = "2nd Apprv. Status"::Approved THEN BEGIN
                            "3rd Approval toEditable" := FALSE;
                            "1st Apprv. StatusEditable" := FALSE
                        END ELSE BEGIN
                            "3rd Approval toEditable" := TRUE;
                            "1st Apprv. StatusEditable" := TRUE
                        END;
                    end;
                }
                field("2nd Approval Time"; "2nd Approval Time")
                {
                    Editable = false;
                }
            }
            group("Final Approval")
            {
                Visible = "Final ApprovalVisible";
                field("Final Apprv. Status"; "Final Apprv. Status")
                {

                    trigger OnValidate()
                    begin
                        IF "Final Apprv. Status" = "Final Apprv. Status"::Approved THEN
                            "2nd Apprv. StatusEditable" := FALSE
                        ELSE
                            "2nd Apprv. StatusEditable" := TRUE;
                    end;
                }
                field("Final Approval Time"; "Final Approval Time")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Fu&nction")
            {
                Caption = 'Fu&nction';
                separator()
                {
                }
                action("Cancel IOU")
                {
                    Caption = 'Cancel IOU';
                    Visible = false;

                    trigger OnAction()
                    begin
                        VALIDATE(Void, TRUE);
                        MODIFY;
                    end;
                }
            }
        }
        area(processing)
        {
            action("P&rint")
            {
                Caption = 'P&rint';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IOURec.SETRANGE(IOURec."IOU No.", "IOU No.");
                    IF IOURec.FINDFIRST THEN BEGIN
                        IOUReport.SETTABLEVIEW(IOURec);
                        IOUReport.RUN;
                    END;
                    //CurrForm.UPDATE(FALSE);
                    //REPORT.RUNMODAL(50299,TRUE,TRUE,Rec);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnInit()
    begin
        "2nd Apprv. StatusEditable" := TRUE;
        "1st Apprv. StatusEditable" := TRUE;
        "3rd Approval toEditable" := TRUE;
        "Send for ApprovalEditable" := TRUE;
        "2nd Approval toEditable" := TRUE;
        "1st Approval toEditable" := TRUE;
        "Final ApprovalVisible" := TRUE;
        "2nd ApprovalVisible" := TRUE;
        "1st ApprovalVisible" := TRUE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnOpenPage()
    begin

        IF "Send for Approval" THEN
            "1st Approval toEditable" := FALSE
        ELSE
            "1st Approval toEditable" := TRUE;
        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN BEGIN
            "2nd Approval toEditable" := FALSE;
            "Send for ApprovalEditable" := FALSE
        END ELSE BEGIN
            "2nd Approval toEditable" := TRUE;
            "Send for ApprovalEditable" := TRUE
        END;
        IF "2nd Apprv. Status" = "2nd Apprv. Status"::Approved THEN BEGIN
            "3rd Approval toEditable" := FALSE;
            "1st Apprv. StatusEditable" := FALSE
        END ELSE BEGIN
            "3rd Approval toEditable" := TRUE;
            "1st Apprv. StatusEditable" := TRUE
        END;
        IF "Final Apprv. Status" = "Final Apprv. Status"::Approved THEN
            "2nd Apprv. StatusEditable" := FALSE
        ELSE
            "2nd Apprv. StatusEditable" := TRUE;

        IF Treated THEN
            CurrPage.EDITABLE(FALSE);
    end;

    var
        IOURec: Record 50105;
        IOUReport: Report "50299";
        GPC: Codeunit "50004";
        [InDataSet]
        "1st ApprovalVisible": Boolean;
        [InDataSet]
        "2nd ApprovalVisible": Boolean;
        [InDataSet]
        "Final ApprovalVisible": Boolean;
        [InDataSet]
        "1st Approval toEditable": Boolean;
        [InDataSet]
        "2nd Approval toEditable": Boolean;
        [InDataSet]
        "Send for ApprovalEditable": Boolean;
        [InDataSet]
        "3rd Approval toEditable": Boolean;
        [InDataSet]
        "1st Apprv. StatusEditable": Boolean;
        [InDataSet]
        "2nd Apprv. StatusEditable": Boolean;

    local procedure PaidOnAfterValidate()
    begin
        CurrPage.UPDATE(FALSE);
    end;

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        IF "Send for Approval" THEN
            "1st ApprovalVisible" := TRUE
        ELSE
            "1st ApprovalVisible" := FALSE;

        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN
            "2nd ApprovalVisible" := TRUE
        ELSE
            "2nd ApprovalVisible" := FALSE;

        IF "2nd Apprv. Status" = "2nd Apprv. Status"::Approved THEN
            "Final ApprovalVisible" := TRUE
        ELSE
            "Final ApprovalVisible" := FALSE;
    end;
}

