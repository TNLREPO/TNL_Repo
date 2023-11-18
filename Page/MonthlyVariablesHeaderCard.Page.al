page 50026 "Monthly Variables Header Card."
{
    DelayedInsert = true;
    PageType = Card;
    SourceTable = Table50016;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; "Payroll Period")
                {
                    TableRelation = Table65004;
                }
                field("Employee No"; "Employee No")
                {
                    LookupPageID = "Employee List";
                    TableRelation = Table65005;
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Posting Group"; "Posting Group")
                {
                    Editable = false;
                }
                field(VariableFilter; VariableFilter)
                {
                }
                field("Period Start"; "Period Start")
                {
                }
                field("Period End"; "Period End")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field(VariableAmount; VariableAmount)
                {
                }
            }
            part("Monthly Variables Lines."; 50027)
            {
                SubPageLink = Payroll Period=FIELD(Payroll Period),
                              Employee No=FIELD(Employee No);
            }
        }
    }

    actions
    {
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Posting Group" := DefaultPostingGroup;
        VALIDATE("Payroll Period",xRec."Payroll Period");
    end;

    var
        gpc: Codeunit "50004";
        DefaultPostingGroup: Code[20];
        LinesRec: Record "50017";
}

