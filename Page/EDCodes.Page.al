page 50294 "E/D Codes."
{
    DataCaptionFields = "E/D Code", "Payslip Text";
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = Table50001;

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
                field("Sequence No"; "Sequence No")
                {
                }
                field(Prorate; Prorate)
                {
                    Visible = false;
                }
                field("Allow Posting Group"; "Allow Posting Group")
                {
                }
                field("Monthly Variable"; "Monthly Variable")
                {
                }
                field("Variable Unit"; "Variable Unit")
                {
                }
                field("Loan (Y/N)"; "Loan (Y/N)")
                {
                    Visible = false;
                }
                field(Units; Units)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Compute; Compute)
                {
                    DrillDownPageID = "E/D Survey.";
                    LookupPageID = "E/D Survey.";
                }
                field("Add/Subtract"; "Add/Subtract")
                {
                }
                field("Factor Of"; "Factor Of")
                {
                    DrillDownPageID = "E/D Survey.";
                    LookupPageID = "E/D Survey.";
                }
                field(Percentage; Percentage)
                {
                }
                field("Table Look Up"; "Table Look Up")
                {
                }
                field("Max. Amount"; "Max. Amount")
                {
                }
                field("Min. Amount"; "Min. Amount")
                {
                }
                field("Rounding Direction"; "Rounding Direction")
                {
                }
                field("Rounding Precision"; "Rounding Precision")
                {
                }
                field("Edit Amount"; "Edit Amount")
                {
                }
                field("Edit Grp. Amount"; "Edit Grp. Amount")
                {
                }
                field("Yes/No Req."; "Yes/No Req.")
                {
                }
                field("Reset Next Period"; "Reset Next Period")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Payslip appearance"; "Payslip appearance")
                {
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                }
                field("Pos. In Payslip Grp."; "Pos. In Payslip Grp.")
                {
                }
                field("Payslip Column"; "Payslip Column")
                {
                }
                field("Underline Amount"; "Underline Amount")
                {
                }
                field("Payslip Print Column"; "Payslip Print Column")
                {
                }
                field("ED Type"; "ED Type")
                {
                }
                field("Control Type"; "Control Type")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Functions")
            {
                Caption = '&Functions';
                action("Amend Payslip Details")
                {
                    Caption = 'Amend Payslip Details';
                    Ellipsis = true;
                    RunObject = Report 50057;
                }
            }
        }
    }
}

