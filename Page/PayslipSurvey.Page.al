page 50033 "Payslip Survey"
{
    Editable = false;
    PageType = List;
    SourceTable = Table50006;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
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
                field("Payslip Print Column"; "Payslip Print Column")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Payslip appearance"; "Payslip appearance")
                {
                }
                field("Payslip Column"; "Payslip Column")
                {
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                }
                field("Pos. In Payslip Grp."; "Pos. In Payslip Grp.")
                {
                }
                field("ED Type"; "ED Type")
                {
                }
                field("Overline Column"; "Overline Column")
                {
                }
                field("Underline Amount"; "Underline Amount")
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

