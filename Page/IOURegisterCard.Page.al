page 70031 "IOU Register Card"
{
    PageType = Card;
    SourceTable = Table50105;

    layout
    {
        area(content)
        {
            group(General)
            {
                Editable = "1st Approval toEditable";
                field("Current pending Person"; "Current pending Person")
                {
                    Editable = false;
                }
                field("IOU No."; "IOU No.")
                {
                    Editable = false;
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(Purpose; Description)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Account Type"; "Account Type")
                {
                }
                field("Staff No."; "Account No.")
                {
                }
                field("Staff Name"; "Account Name")
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ShowMandatory = true;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ShowMandatory = true;
                }
                field("120Isolo"; "120Isolo")
                {

                    trigger OnValidate()
                    begin
                        IF "120Isolo" = "120Isolo"::"1" THEN
                            JobDetails_Visible := TRUE
                        ELSE
                            JobDetails_Visible := FALSE;
                    end;
                }
            }
            group("Job Details ")
            {
                Caption = 'Job Details';
                Visible = JobDetails_Visible;
                field("No."; "No.")
                {
                }
                field("Customer Approved Amount"; "Customer Approved Amount")
                {
                }
                field("Markup Amount"; "Markup Amount")
                {
                }
                field("Cost Amount"; "Cost Amount")
                {
                }
            }
            group(Sender)
            {
                Caption = 'Sender';
                field("1st Approval to"; "1st Approval to")
                {
                    Caption = 'To';
                    Editable = "1st Approval toEditable";
                }
                field("1st Approver"; "1st Approver")
                {
                    Caption = 'Name';
                    Editable = "1st Approval toEditable";
                }
                field("Send for Approval"; "Send for Approval")
                {
                    Caption = 'Send';
                    Editable = "1st Approval toEditable";

                    trigger OnValidate()
                    begin
                        IF "Send for Approval" THEN
                            "1st Approval toEditable" := FALSE
                        ELSE
                            "1st Approval toEditable" := TRUE;
                    end;
                }
                field("Sent By"; Sender)
                {
                    Caption = 'Sent By';
                    Editable = false;
                }
                field("Sent Time"; "Sent Time")
                {
                }
            }
            group("Level 1")
            {
                Caption = 'Level 1';
                Visible = "1st ApprovalVisible";
                field("2nd Approval to"; "2nd Approval to")
                {
                    Caption = 'To';
                    Editable = "2nd Approval toEditable";
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                    Editable = "2nd Approval toEditable";
                }
                field("1st Apprv. Status"; "1st Apprv. Status")
                {
                    Caption = 'Action';
                    Editable = "2nd Approval toEditable";

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
                    Caption = 'Time';
                    Editable = "2nd Approval toEditable";
                }
            }
            group("Level 2")
            {
                Caption = 'Level 2';
                Visible = "2nd ApprovalVisible";
                field("3rd Approval to"; "3rd Approval to")
                {
                    Caption = 'To';
                    Editable = "3rd Approval toEditable";
                }
                field("3rd Approver"; "3rd Approver")
                {
                    Caption = 'Name';
                }
                field("2nd Apprv. Status"; "2nd Apprv. Status")
                {
                    Caption = 'Action';

                    trigger OnValidate()
                    begin
                        IF "2nd Apprv. Status" = "2nd Apprv. Status"::Approved THEN BEGIN
                            "3rd Approval toEditable" := TRUE;
                            "1st Apprv. StatusEditable" := FALSE;
                            "Final ApprovalVisible" := FALSE

                        END ELSE BEGIN
                            "3rd Approval toEditable" := TRUE;
                            "1st Apprv. StatusEditable" := TRUE;
                            "Final ApprovalVisible" := FALSE
                        END;
                    end;
                }
                field("2nd Approval Time"; "2nd Approval Time")
                {
                    Caption = 'Time';
                }
            }
            group("Level 3")
            {
                Caption = 'Level 3';
                Visible = "Final ApprovalVisible";
                field("Final Apprv. Status"; "Final Apprv. Status")
                {
                    Caption = 'Action';

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
                    Caption = 'Time';
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action(Print)
            {
                Caption = 'Print';
                Image = "Report";

                trigger OnAction()
                begin

                    IOURec.SETRANGE(IOURec."IOU No.", "IOU No.");
                    IF IOURec.FINDFIRST THEN BEGIN
                        IOUReport.SETTABLEVIEW(IOURec);
                        IOUReport.RUN;
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin

        OnAfterGetCurrRecord;
    end;

    trigger OnOpenPage()
    begin
        IF "120Isolo" = "120Isolo"::"1" THEN
            JobDetails_Visible := TRUE
        ELSE
            JobDetails_Visible := FALSE;


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
        "No.Editable": Boolean;
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
        [InDataSet]
        "Entry DateEditable": Boolean;
        JobDetails_Visible: Boolean;

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN
            "No.Editable" := FALSE;

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

