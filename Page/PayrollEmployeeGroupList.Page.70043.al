page 70043 "Payroll Employee Group List"
{
    CardPageID = "Payroll Employee Group Card";
    PageType = List;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                }
                field("Employee Name"; EmpGrp.GetEmpName(Rec.Code))
                {
                    Caption = 'Employee Name';
                }
                field("Search Name"; Rec."Search Name")
                {
                }
                field("Gross Pay"; Rec."Gross Pay")
                {
                }
                field("Tax Charged"; Rec."Tax Charged")
                {
                }
                field("Tax Deducted"; Rec."Tax Deducted")
                {
                }
                field("Taxable Pay"; Rec."Taxable Pay")
                {
                }
                field("Total Deductions"; Rec."Total Deductions")
                {
                }
                field("Net Pay Due"; Rec."Net Pay Due")
                {
                }
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                }
                field(Grade; Rec.Grade)
                {
                }
                field(Step; Rec.Step)
                {
                }
                field(Management; Rec.Management)
                {
                }
                field("Basic Salary"; Rec."Basic Salary")
                {
                }
                field("Individual Group"; Rec."Individual Group")
                {
                }
                field("Main Group"; Rec."Main Group")
                {
                }
                field("Staff Name"; Rec."Staff Name")
                {
                }
                field("Department Code"; Rec."Department Code")
                {
                }
                field("Project Code"; Rec."Project Code")
                {
                }
                field("Total In Group"; Rec."Total In Group")
                {
                }
                field("Increment %"; Rec."Increment %")
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("Create New Payslips")
            {
                Ellipsis = true;
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50051;
            }
            action("Create Payroll Journal")
            {
                Ellipsis = true;
                Image = "Report";
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                //PromotedIsBig = true;
                RunObject = Report 50059;
            }
        }
    }

    var
        EmpGrp: Record 50009;
}

