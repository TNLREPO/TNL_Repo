page 50026 "Monthly Variables Header Card."
{
    DelayedInsert = true;
    PageType = Card;
    SourceTable = "Monthly Variables Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period";Rec. "Payroll Period")
                {
                    TableRelation = Table65004;
                }
                field("Employee No";Rec. "Employee No")
                {
                    LookupPageID = "Employee List";
                    TableRelation = Table65005;
                }
                field("Employee Name";Rec. "Employee Name")
                {
                }
                field("Posting Group";Rec. "Posting Group")
                {
                    Editable = false;
                }
                field(VariableFilter;Rec. VariableFilter)
                {
                }
                field("Period Start";Rec. "Period Start")
                {
                }
                field("Period End";Rec. "Period End")
                {
                }
                field("Global Dimension 1 Code";Rec. "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";Rec. "Global Dimension 2 Code")
                {
                }
                field(VariableAmount;Rec. VariableAmount)
                {
                }
            }
            part("Monthly Variables Lines."; "Monthly Variables Lines.")
            {
                SubPageLink = "Payroll Period"=FIELD("Payroll Period"),
                              "Employee No"=FIELD("Employee No");
            }
        }
    }

    actions
    {
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."Posting Group" := DefaultPostingGroup;
        Rec.VALIDATE("Payroll Period",xRec."Payroll Period");
    end;

    var
        gpc: Codeunit "50004";
        DefaultPostingGroup: Code[20];
        LinesRec: Record "50017";
}

