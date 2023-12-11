page 50005 "Payslip Card"
{
    DelayedInsert = true;
    Editable = false;
    PageType = Card;
    SourceTable = "Payroll-Payslip Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; Rec."Payroll Period")
                {
                    TableRelation = "Payroll-Periods.";
                }
                field(Closed; Rec.Closed)
                {
                }
                field("Employee No"; Rec."Employee No")
                {
                    LookupPageID = "Employee List";
                    TableRelation = Table65005;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    Editable = false;
                }
                field("ED Filter"; Rec."ED Filter")
                {
                }
                field("Period Start"; Rec."Period Start")
                {
                }
                field("Period End"; Rec."Period End")
                {
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    Editable = false;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    Editable = false;
                }
                field("ED Value"; Rec."ED Value")
                {
                }
            }
            part("Payslip Lines"; 50006)
            {
                SubPageLink = "Payroll Period" = FIELD("Payroll Period"),
                              "Employee No" = FIELD("Employee No");
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
        Rec."Posting Group" := DefaultPostingGroup;
    end;

    var
        gpc: Codeunit 50004;
        DefaultPostingGroup: Code[20];
}

