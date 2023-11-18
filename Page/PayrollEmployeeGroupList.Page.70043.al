page 70043 "Payroll Employee Group List"
{
    CardPageID = "Payroll Employee Group Card";
    PageType = List;
    SourceTable = Table50009;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                }
                field(EmpGrp.GetEmpName(Code);
                    EmpGrp.GetEmpName(Code))
                {
                    Caption = 'Employee Name';
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Gross Pay"; "Gross Pay")
                {
                }
                field("Tax Charged"; "Tax Charged")
                {
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                }
                field("Total Deductions"; "Total Deductions")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field(Management; Management)
                {
                }
                field("Basic Salary"; "Basic Salary")
                {
                }
                field("Individual Group"; "Individual Group")
                {
                }
                field("Main Group"; "Main Group")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Project Code"; "Project Code")
                {
                }
                field("Total In Group"; "Total In Group")
                {
                }
                field("Increment %"; "Increment %")
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
        EmpGrp: Record "50009";
}

