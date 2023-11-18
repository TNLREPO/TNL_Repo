page 70110 "Posted e-Receipt Voucher"
{
    Editable = false;
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
            }
            group("Main Account")
            {
                Caption = 'Main Account';
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
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
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Multiple Balance Account"; "Multiple Balance Account")
                {
                }
            }
            group("Other Details")
            {
                Caption = 'Other Details';
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                }
            }
            part(Multiline; 70012)
            {
                Editable = false;
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
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF "Multiple Account" OR "Multiple Balance Account" THEN
          MultilineVisible := TRUE
        ELSE
          MultilineVisible := FALSE;
    end;

    trigger OnOpenPage()
    begin
        IF "Multiple Account" OR "Multiple Balance Account" THEN
          MultilineVisible := TRUE
        ELSE
          MultilineVisible := FALSE;
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
}

