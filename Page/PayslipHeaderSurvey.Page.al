page 50023 "Payslip Header Survey."
{
    CardPageID = "Payslip Card";
    PageType = List;
    SourceTable = Table50007;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Payroll Period"; "Payroll Period")
                {
                    Editable = false;
                }
                field("Period Start"; "Period Start")
                {
                }
                field("Period Name"; "Period Name")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("ED Value"; "ED Value")
                {
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                }
                field("Total Relief"; "Total Relief")
                {
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                }
                field("Total Deductions"; "Total Deductions")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
                field(Closed; Closed)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Process)
            {
                action("Create New Payslip")
                {
                    Image = "Report";
                    Promoted = true;
                    PromotedCategory = "Report";
                    RunObject = Report 50051;
                }
            }
        }
    }
}

