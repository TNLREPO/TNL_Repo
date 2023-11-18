page 50005 "Payslip Card"
{
    DelayedInsert = true;
    Editable = false;
    PageType = Card;
    SourceTable = Table50007;

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
                field(Closed; Closed)
                {
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
                field("ED Filter"; "ED Filter")
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
                    Editable = false;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Editable = false;
                }
                field("ED Value"; "ED Value")
                {
                }
            }
            part("Payslip Lines"; 50006)
            {
                SubPageLink = Payroll Period=FIELD(Payroll Period),
                              Employee No=FIELD(Employee No);
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Reports")
            {
                Caption = '&Reports';
                action("Print payslip")
                {
                    Caption = 'Print payslip';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Report 50045;
                                    ShortCutKey = 'Shift+F7';
                }
                action("Print Special Emolument Payslip")
                {
                    Caption = 'Print Special Emolument Payslip';
                    Image = print;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Report 50046;
                }
            }
        }
        area(processing)
        {
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Posting Group" := DefaultPostingGroup;
    end;

    var
        gpc: Codeunit "50004";
        DefaultPostingGroup: Code[20];
}

