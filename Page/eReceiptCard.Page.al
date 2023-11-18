page 70108 "e-Receipt Card"
{
    PageType = Card;
    SourceTable = Table50103;

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
                field("Detail Balance"; "Detail Balance")
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
                field("Received by"; "Received by")
                {
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
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
            action("Test Report")
            {
                Caption = 'Test Report';
                Image = TestReport;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    GLentry2.LOCKTABLE;
                    GLentry2.SETRANGE(GLentry2."Document No.","No.");
                    IF GLentry2.FINDFIRST THEN
                      ERROR('This document has been posted before!');

                    IF Posted THEN ERROR('This document has been posted before!');
                    "Test Report" := FALSE;
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
                    GLentry2.LOCKTABLE;
                    GLentry2.SETRANGE(GLentry2."Document No.","No.");
                    IF GLentry2.FINDFIRST THEN
                      ERROR('This document has been posted before!');

                    IF Posted THEN ERROR('This document has been posted before!');
                    "Test Report" := FALSE;

                    Postgl(Rec,FALSE);
                end;
            }
            action("Print Document")
            {
                Caption = 'Print Document';
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
                      REPORT.RUNMODAL(50425,TRUE,TRUE,ReqRec) ELSE
                      REPORT.RUNMODAL(50427,TRUE,TRUE,ReqRec);
                    END;
                end;
            }
            action("Dollar Receipt")
            {
                Caption = 'Dollar Receipt';

                trigger OnAction()
                begin
                    ReqRec.SETRANGE(ReqRec."Document Type","Document Type");
                    ReqRec.SETRANGE(ReqRec."No.","No.");
                    IF ReqRec.FINDFIRST THEN BEGIN
                      IF ReqRec."Multiple Balance Account" OR ReqRec."Multiple Account" THEN
                      REPORT.RUNMODAL(50417,TRUE,TRUE,ReqRec) ELSE
                      REPORT.RUNMODAL(50427,TRUE,TRUE,ReqRec);
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
        Doctext: Text[30];
        CashText: Text[30];
        ReqRec: Record "50103";
        posd: Text[30];
        pos: Boolean;
        ChangeExchangeRate: Page "511";
                                GLReconcile: Page "345";
                                GenJnlManagement: Codeunit "230";
                                ReportPrint: Codeunit "228";
                                CurrentJnlBatchName: Code[10];
                                AccName: Text[30];
                                BalAccName: Text[30];
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
        GLentry2: Record "17";

    [Scope('Internal')]
    procedure UpdatePosting()
    begin
        IF NOT Posted THEN
        BEGIN
        GLEntry.SETCURRENTKEY("Document No.","Posting Date");
        GLEntry.SETRANGE(GLEntry."Document No.","No.");
        IF GLEntry.FIND('-') THEN
        Posted := TRUE;
        MODIFY;
        END
        ELSE
        BEGIN
        GLEntry.SETCURRENTKEY("Document No.","Posting Date");
        GLEntry.SETRANGE(GLEntry."Document No.","No.");
        IF NOT GLEntry.FIND('-') THEN
        Posted := FALSE;
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

