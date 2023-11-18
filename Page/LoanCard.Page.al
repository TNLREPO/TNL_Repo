page 50024 "Loan Card."
{
    PageType = Card;
    SourceTable = Table50013;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Loan ID"; "Loan ID")
                {

                    trigger OnAssistEdit()
                    begin

                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Staff No."; "Staff No.")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Loan Type"; "Loan Type")
                {
                }
                field(Description; Description)
                {
                }
                field("Loan ED Regular"; "Loan ED Regular")
                {
                }
                field("Journal Batch"; "Journal Batch")
                {
                }
                field("Loan Created"; "Loan Created")
                {
                }
            }
            group(Posting)
            {
                Caption = 'Posting';
                field("Acct. Type"; "Acct. Type")
                {
                }
                field("Acct. No."; "Acct. No.")
                {
                }
                field("Loan Posting Date"; "Loan Posting Date")
                {
                }
                field("Voucher No. for Loan"; "Voucher No. for Loan")
                {
                }
                field("Counter Acct. Type"; "Counter Acct. Type")
                {
                }
                field("Counter Acct. No."; "Counter Acct. No.")
                {
                }
            }
            group(Status)
            {
                Caption = 'Status';
                field("Loan Amount"; "Loan Amount")
                {
                }
                field("Number of Payments"; "Number of Payments")
                {
                }
                field("Interest Percent"; "Interest Percent")
                {
                }
                field(LPlusInt; LPlusInt)
                {
                    Caption = 'Principal+Interest';
                    Editable = false;
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Monthly Repayment"; "Monthly Repayment")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Cust Ldg Entry No"; "Cust Ldg Entry No")
                {
                }
                field("Start Period"; "Start Period")
                {
                }
                field("Open(Y/N)"; "Open(Y/N)")
                {
                }
                field("Suspended(Y/N)"; "Suspended(Y/N)")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Loan")
            {
                Caption = '&Loan';
                action("Create Staff &Customer Account")
                {
                    Caption = 'Create Staff &Customer Account';

                    trigger OnAction()
                    begin
                        employee.SETRANGE("No.", "Staff No.");
                        //REPORT.RUN(REPORT::"Create Customer Acct. forStaff",FALSE,FALSE,employee);

                        MESSAGE('Staff Vendor Account Created');
                    end;
                }
            }
        }
        area(processing)
        {
            action("&Create Loan Gen. Journal")
            {
                Caption = '&Create Loan Gen. Journal';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    InserGlLine(TRUE);
                end;
            }
        }
    }

    var
        employee: Record 5200;
        gpc: Codeunit "50004";
        DefaultPostingGroup: Code[20];
}

