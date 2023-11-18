page 50008 "Payslip Lines List"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50006;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("E/D Code"; "E/D Code")
                {
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
                field(Units; Units)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Loan ID"; "Loan ID")
                {
                }
                field("Debit Account"; "Debit Account")
                {
                }
                field("Credit Account"; "Credit Account")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Posting Group" := ActivePostingGroup;
    end;

    trigger OnOpenPage()
    begin
        FILTERGROUP(10);
        ActivePostingGroup := GETFILTER("Posting Group");
        FILTERGROUP(0);
    end;

    var
        ActivePostingGroup: Code[20];
}

