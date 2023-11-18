page 70014 "Cheque Receipt Card"
{
    DataCaptionFields = "Cash/Cheque", "Document Type", "No.";
    PageType = Card;
    SourceTable = Table50103;
    SourceTableView = SORTING (Document Type, Cash/Cheque, No.);

    layout
    {
        area(content)
        {
            group("Document Details")
            {
                Caption = 'Document Details';
                field("No."; "No.")
                {
                    Caption = 'No.';

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field("External Document No."; "External Document No.")
                {
                }
                field("Currency Code"; "Currency Code")
                {
                }
                field("Exchange rate"; "Exchange rate")
                {
                }
                field("Created By"; "Created By")
                {
                }
            }
            group("Main Account")
            {
                Caption = 'Main Account';
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Caption = 'Department Code';
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Caption = 'Branch Code';
                }
                field("Account Type"; "Account Type")
                {
                }
                field("Account No."; "Account No.")
                {
                }
                field("Account Description"; "Account Description")
                {
                }
                field("Credit Amount"; "Credit Amount")
                {
                }
                field("Debit Amount"; "Debit Amount")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Amount (LCY)"; "Amount (LCY)")
                {
                }
                field("Multiple Account"; "Multiple Account")
                {

                    trigger OnValidate()
                    begin
                        MultipleAccountOnPush;
                        CurrPage.UPDATE;
                    end;
                }
            }
            group("Balancing Account")
            {
                Caption = 'Balancing Account';
                field("Balance Department Code"; "Balance Department Code")
                {
                }
                field("Balance Branch Code"; "Balance Branch Code")
                {
                }
                field("Balance Account Type"; "Balance Account Type")
                {
                }
                field("Balance Account No."; "Balance Account No.")
                {
                }
                field("Bal. Acc. Description"; "Bal. Acc. Description")
                {
                    Caption = 'Account Description';
                }
                field("Cheque No."; "Cheque No.")
                {
                }
                field("Bank Name"; "Bank Name")
                {
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Multiple Balance Account"; "Multiple Balance Account")
                {

                    trigger OnValidate()
                    begin
                        MultipleBalanceAccountOnPush;
                        CurrPage.UPDATE;
                    end;
                }
            }
            group("Other Details")
            {
                Caption = 'Other Details';
                field("Apply Entry"; "Apply Entry")
                {
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                }
                field("Received by"; "Received by")
                {
                }
            }
            part(Multiline; 70012)
            {
                SubPageLink = No.=FIELD(No.),
                              Type=FIELD(Document Type),
                              Cash/Cheque=FIELD(Cash/Cheque);
                Visible = MultilineVisible;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Preview Posting")
            {
                Caption = 'Preview Posting';
                Image = TestReport;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    IF Posted THEN ERROR('This document has been posted before!');
                    "Test Report" := TRUE;
                    Postgl(Rec,TRUE);
                end;
            }
            action(Post)
            {
                Caption = 'Post';
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ShortCutKey = 'F9';

                trigger OnAction()
                begin
                    IF "Created By" = COPYSTR(USERID,15) THEN
                      ERROR('You cannot post!');
                    GLEntry2.LOCKTABLE;
                    GLEntry2.SETRANGE(GLEntry2."Document No.","No.");
                    IF GLEntry2.FINDFIRST THEN
                      ERROR('This document has been posted before!');


                    IF Posted THEN ERROR('This document has been posted before!');
                    "Test Report" := FALSE;

                     Postgl(Rec,FALSE);

                    UpdatePosting;
                end;
            }
            action(Print)
            {
                Caption = 'Print';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    ReqRec.SETRANGE(ReqRec."Document Type","Document Type");
                    ReqRec.SETRANGE(ReqRec."No.","No.");
                    IF ReqRec.FINDFIRST THEN BEGIN
                      IF ReqRec."Multiple Balance Account" OR ReqRec."Multiple Account" THEN
                      REPORT.RUNMODAL(50002,TRUE,TRUE,ReqRec) ELSE
                      REPORT.RUNMODAL(50008,TRUE,TRUE,ReqRec);
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF ("Multiple Balance Account") OR ("Multiple Account") THEN BEGIN
          debalVisible := TRUE;
          MultilineVisible := TRUE;
        END
        ELSE BEGIN
          debalVisible := FALSE;
          MultilineVisible := FALSE;
        END;
        IF "Account Type" = "Account Type"::"Fixed Asset" THEN
        BEGIN
          "FA Posting TypeVisible" := TRUE;
          "Maintenance CodeVisible" := TRUE;
        END
        ELSE
        BEGIN
          "FA Posting TypeVisible" := FALSE;
          "Maintenance CodeVisible" := FALSE;
        END;
    end;

    trigger OnInit()
    begin
        NavigateVisible := TRUE;
        debalVisible := TRUE;
        "Print DocumentVisible" := TRUE;
        "Maintenance CodeVisible" := TRUE;
        "FA Posting TypeVisible" := TRUE;
    end;

    trigger OnOpenPage()
    begin
        CurrPage.EDITABLE(TRUE);
        NavigateVisible := FALSE;
    end;

    var
        operationType: Integer;
        Doctype: Option;
        Cashvalue: Option;
        DocumentType: Option Receipt,Requisition;
        Cashcheque: Option Cash,Cheque;
        cashRecLine: Record "50104";
        Doctext: Text[50];
        CashText: Text[50];
        ReqRec: Record "50103";
        posd: Text[50];
        pos: Boolean;
        ChangeExchangeRate: Page "511";
                                GLReconcile: Page "345";
                                GenJnlManagement: Codeunit "230";
                                ReportPrint: Codeunit "228";
                                CurrentJnlBatchName: Code[12];
                                AccName: Text[50];
                                BalAccName: Text[50];
                                Balance: Decimal;
                                TotalBalance: Decimal;
                                ShowBalance: Boolean;
                                ShowTotalBalance: Boolean;
                                ShortcutDimCode: array [8] of Code[20];
                                GLEntry: Record "17";
                                UserRec: Record "91";
                                GPC: Codeunit "50004";
    [InDataSet]

    "FA Posting TypeVisible": Boolean;
        [InDataSet]
        "Maintenance CodeVisible": Boolean;
        [InDataSet]
        "Print DocumentVisible": Boolean;
        [InDataSet]
        debalVisible: Boolean;
        [InDataSet]
        MultilineVisible: Boolean;
        [InDataSet]
        NavigateVisible: Boolean;
        Text19038076: Label 'Department Code';
        Text19077769: Label 'Branch Code';
        GLEntry2: Record "17";

    [Scope('Internal')]
    procedure UpdatePosting()
    begin
        GLEntry.SETCURRENTKEY("Document No.","Posting Date");
        GLEntry.SETRANGE("Document No.","No.");
        IF GLEntry.FINDFIRST THEN BEGIN
          Posted := TRUE;
          MODIFY;
        END;
    end;

    local procedure AccountTypeOnAfterValidate()
    begin
        IF "Account Type" = "Account Type"::"Fixed Asset" THEN
        BEGIN
          "FA Posting TypeVisible" := TRUE;
          "Maintenance CodeVisible" := TRUE;
        END
        ELSE
        BEGIN
          "FA Posting TypeVisible" := FALSE;
          "Maintenance CodeVisible" := FALSE;
        END;
    end;

    local procedure Control1000000081OnActivate()
    begin
        UpdatePosting;
    end;

    local procedure Control1000000034OnActivate()
    begin
        UpdatePosting;
    end;

    local procedure MultipleBalanceAccountOnPush()
    begin
        IF "Multiple Balance Account" THEN
        MultilineVisible := TRUE
        ELSE
        BEGIN
        cashRecLine.SETRANGE(cashRecLine.Type,"Document Type");
        cashRecLine.SETRANGE(cashRecLine."Cash/Cheque","Cash/Cheque");
        cashRecLine.SETRANGE(cashRecLine."No.","No.");
        IF cashRecLine.FIND('-') THEN
        BEGIN
        IF CONFIRM('This Action will delete all balance Line for This Transaction/ Continue deletion ?',FALSE) THEN
          cashRecLine.DELETEALL
        ELSE
          EXIT;
        END
        ELSE
        MultilineVisible := FALSE;
        END;
    end;

    local procedure MultipleAccountOnPush()
    begin
        IF "Multiple Account" THEN BEGIN
          debalVisible := TRUE;
          MultilineVisible := TRUE;
        END
        ELSE
        BEGIN
          cashRecLine.SETRANGE(cashRecLine.Type,"Document Type");
          cashRecLine.SETRANGE(cashRecLine."Cash/Cheque","Cash/Cheque");
          cashRecLine.SETRANGE(cashRecLine."No.","No.");
        IF cashRecLine.FIND('-') THEN
        BEGIN
        IF CONFIRM('This Action will delete all balance Line for This Transaction/ Continue deletion ?',FALSE) THEN
          cashRecLine.DELETEALL
        ELSE
          EXIT;
        END
        ELSE BEGIN
        debalVisible := FALSE;
        MultilineVisible := FALSE;
        END
        END;
    end;
}

