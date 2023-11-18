page 70012 "Payment/Receipt Bal. Line"
{
    AutoSplitKey = true;
    PageType = ListPart;
    SourceTable = Table50104;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Account Type"; "Account Type")
                {
                }
                field("Account No."; "Account No.")
                {
                }
                field("Account Description"; "Account Description")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Branch Code"; "Branch Code")
                {
                }
                field("FA Posting Type"; "FA Posting Type")
                {
                    Visible = false;
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Currency Code"; "Currency Code")
                {
                }
                field("Exchange Rate"; "Exchange Rate")
                {
                }
                field("Credit Amount"; "Credit Amount")
                {
                }
                field("Debit Amount"; "Debit Amount")
                {
                }
                field("Amount (LCY)"; "Amount (LCY)")
                {
                }
                field("Applies-to Doc. Type"; "Applies-to Doc. Type")
                {
                }
                field("Apply Entry"; "Apply Entry")
                {
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                }
                field("Loan ID"; "Loan ID")
                {
                    Visible = false;
                }
                field("Loan Type"; "Loan Type")
                {
                    Visible = false;
                }
                field("Maintenance Code"; "Maintenance Code")
                {
                    Visible = false;
                }
                field("Job Task code"; "Job Task code")
                {
                    Visible = false;
                }
                field("Job Code"; "Job Code")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Department Code" := headrec."Global Dimension 1 Code";
        "Branch Code" := headrec."Global Dimension 2 Code";
        IF headrec."Multiple Account" THEN BEGIN
            VALIDATE("Account Type", headrec."Account Type");
            VALIDATE("Account No.", headrec."Account No.");
        END;
        IF headrec."Multiple Balance Account" THEN BEGIN
            VALIDATE("Account Type", headrec."Balance Account Type");
            VALIDATE("Account No.", headrec."Balance Account No.");
        END
    end;

    var
        headrec: Record 50103;

    local procedure OnActivateForm()
    begin
        headrec.GET(Type, "Cash/Cheque", "No.");
    end;
}

