page 50139 "Approved IOU Retirement"
{
    PageType = Card;
    SourceTable = Table50107;
    SourceTableView = WHERE (Posted = CONST (No),
                            Final Apprv. Status=CONST(Approved));

    layout
    {
        area(content)
        {
            group("IOU Retirement")
            {
                Caption = 'IOU Retirement';
                field("No."; "No.")
                {
                    Editable = "No.Editable";
                }
                field("IOU No."; "IOU No.")
                {
                    Editable = false;

                    trigger OnValidate()
                    begin
                        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN
                            ERROR('You cannot change IOU No. after approval has been made!');
                    end;
                }
                field("Entry Date"; "Entry Date")
                {
                    Caption = 'Entry Date';
                    Editable = "Entry DateEditable";
                }
                field("Staff No."; "Staff No.")
                {
                    Editable = false;
                }
                field("Staff Name"; "Staff Name")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Editable = false;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Editable = false;
                }
                field("Original IOU Amount"; "Original IOU Amount")
                {
                }
                field("Amount To Retire"; "Amount To Retire")
                {
                }
                field(BalAmt; BalAmt)
                {
                    Caption = 'Balance';
                    Editable = false;
                }
                label()
                {
                    CaptionClass = Text19002652;
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                }
                field("Apply Entry"; "Apply Entry")
                {
                }
            }
            part("Retirement Lines"; 50221)
            {
                SubPageLink = Retirement No.=FIELD(No.),
                              IOU No.=FIELD(IOU No.);
            }
            group(Sender)
            {
                field("1st Approval to";"1st Approval to")
                {
                    Caption = 'Send To';
                    Editable = "1st Approval toEditable";
                }
                field("1st Approver";"1st Approver")
                {
                    Editable = false;
                }
                field("Send for Approval";"Send for Approval")
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
                field("Sent Time";"Sent Time")
                {
                    Editable = false;
                }
            }
            group("1st Approval")
            {
                Visible = "1st ApprovalVisible";
                field("2nd Approval to";"2nd Approval to")
                {
                    Caption = 'For Next Approval Send to';
                    Editable = "2nd Approval toEditable";
                }
                field("2nd Approver";"2nd Approver")
                {
                    Editable = false;
                }
                field("1st Apprv. Status";"1st Apprv. Status")
                {
                    Editable = "1st Apprv. StatusEditable";

                    trigger OnValidate()
                    begin
                        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN
                          BEGIN
                          "2nd Approval toEditable" := FALSE;
                          "Send for ApprovalEditable" := FALSE
                        END ELSE
                          BEGIN
                          "2nd Approval toEditable" := TRUE;
                          "Send for ApprovalEditable" := TRUE
                        END;
                    end;
                }
                field("1st Approval Time";"1st Approval Time")
                {
                    Editable = false;
                }
                label()
                {
                    CaptionClass = Text19022435;
                }
            }
            group("2nd Approval")
            {
                Visible = "2nd ApprovalVisible";
                field("3rd Approval to";"3rd Approval to")
                {
                    Caption = 'For Next Approval Send to';
                    Editable = "3rd Approval toEditable";
                }
                field("3rd Approver";"3rd Approver")
                {
                    Editable = false;
                }
                field("2nd Apprv. Status";"2nd Apprv. Status")
                {
                    Editable = "2nd Apprv. StatusEditable";

                    trigger OnValidate()
                    begin
                        IF "2nd Apprv. Status" = "2nd Apprv. Status"::Approved THEN
                          BEGIN
                          "3rd Approval toEditable" := FALSE;
                          "1st Apprv. StatusEditable" := FALSE
                        END ELSE
                          BEGIN
                          "3rd Approval toEditable" := TRUE;
                          "1st Apprv. StatusEditable" := TRUE
                        END;
                    end;
                }
                field("2nd Approval Time";"2nd Approval Time")
                {
                    Editable = false;
                }
            }
            group("Final Approval")
            {
                Visible = "Final ApprovalVisible";
                field("Final Apprv. Status";"Final Apprv. Status")
                {

                    trigger OnValidate()
                    begin
                        IF "Final Apprv. Status" = "Final Apprv. Status"::Approved THEN
                          "2nd Apprv. StatusEditable" := FALSE
                        ELSE
                          "2nd Apprv. StatusEditable" := TRUE;
                    end;
                }
                field("Final Approval Time";"Final Approval Time")
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
                action(Print)
                {
                    Caption = 'Print';
                    Image = Print;
                    ShortCutKey = 'F7';

                    trigger OnAction()
                    begin
                        IOURetireHead.SETRANGE(IOURetireHead."No.","No.");
                        IF FINDFIRST THEN
                          REPORT.RUNMODAL(50350,TRUE,TRUE,IOURetireHead);
                    end;
                }
            }
        }
        area(processing)
        {
            action("P&ost")
            {
                Caption = 'P&ost';
                Ellipsis = true;
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Visible = true;

                trigger OnAction()
                begin
                    TESTFIELD("Final Apprv. Status",2);
                    IOURec.GET("IOU No.");
                    IOURec.TESTFIELD(IOURec."Converted to Loan",FALSE);
                    IF NOT CONFIRM(Text001,FALSE) THEN
                      EXIT ELSE BEGIN
                    GPC.PostIOURetirement(Rec);
                    CurrPage.UPDATE(FALSE);
                    IOURec.Posted:=TRUE;
                    END;
                end;
            }
            action("test report")
            {
                Caption = 'Test Report';
                Image = TestReport;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                      "Test Report" := TRUE;

                     GLEntry2.SETRANGE(GLEntry2."Document No.","No.");
                     IF GLEntry2.FINDFIRST THEN
                     ERROR('This document has been posted before!');
                    IF Posted THEN ERROR('This document has been posted before!');
                    Testgl(Rec);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        BalAmt := 0;
        CALCFIELDS("Amount To Retire");
        BalAmt := "Original IOU Amount" - "Amount To Retire";
        OnAfterGetCurrRecord;
    end;

    trigger OnInit()
    begin
        "Entry DateEditable" := TRUE;
        "2nd Apprv. StatusEditable" := TRUE;
        "1st Apprv. StatusEditable" := TRUE;
        "3rd Approval toEditable" := TRUE;
        "Send for ApprovalEditable" := TRUE;
        "2nd Approval toEditable" := TRUE;
        "1st Approval toEditable" := TRUE;
        "No.Editable" := TRUE;
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
        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN
          BEGIN
          "2nd Approval toEditable" := FALSE;
          "Send for ApprovalEditable" := FALSE
        END ELSE
          BEGIN
          "2nd Approval toEditable" := TRUE;
          "Send for ApprovalEditable" := TRUE
        END;
        IF "2nd Apprv. Status" = "2nd Apprv. Status"::Approved THEN
          BEGIN
          "3rd Approval toEditable" := FALSE;
          "1st Apprv. StatusEditable" := FALSE
        END ELSE
          BEGIN
          "3rd Approval toEditable" := TRUE;
          "1st Apprv. StatusEditable" := TRUE
        END;
        IF "Final Apprv. Status" = "Final Apprv. Status"::Approved THEN
          "2nd Apprv. StatusEditable" := FALSE
        ELSE
          "2nd Apprv. StatusEditable" := TRUE;

        //UserSetup.GET(USERID);
        IF UserSetup."User ID" = 'TOLULOPE' THEN
          "Entry DateEditable" := TRUE ELSE
          "Entry DateEditable" := FALSE;
    end;

    var
        IOURec: Record "50105";
        IOURetireHead: Record "50107";
        GPC: Codeunit "50004";
        Text001: Label 'Do you want to Post Retirement';
        BalAmt: Decimal;
        IOURetLine: Record "50106";
        UserSetup: Record "91";
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
        Text19002652: Label 'For Accounts Dept. ';
        Text19022435: Label '1st Approver''s Comment';
        GLEntry2: Record "17";

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        IF "1st Apprv. Status" = "1st Apprv. Status" ::Approved THEN
        "No.Editable" := FALSE;

        IF "Send for Approval" THEN "1st ApprovalVisible" := TRUE
        ELSE
         "1st ApprovalVisible" := FALSE;
        IF "1st Apprv. Status" = "1st Apprv. Status"::Approved THEN "2nd ApprovalVisible" := TRUE
        ELSE
        "2nd ApprovalVisible" := FALSE;
        IF "2nd Apprv. Status" = "2nd Apprv. Status" ::Approved THEN "Final ApprovalVisible" := TRUE
        ELSE
        "Final ApprovalVisible" := FALSE;

        BalAmt := 0;
        CALCFIELDS("Amount To Retire");
        BalAmt := "Original IOU Amount" - "Amount To Retire";
    end;
}

