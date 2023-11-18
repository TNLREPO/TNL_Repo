page 50147 "My payslip"
{
    CardPageID = "Payslip Card";
    Editable = false;
    PageType = List;
    SourceTable = Table50007;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("Period Start"; "Period Start")
                {
                }
                field("Period End"; "Period End")
                {
                }
                field("Period Name"; "Period Name")
                {
                }
                field(Company; Company)
                {
                }
                field(Section; Section)
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field(Closed; Closed)
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
                field("Total Relief"; "Total Relief")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Customer Number"; "Customer Number")
                {
                }
                field(Designation; Designation)
                {
                }
                field("ED Filter"; "ED Filter")
                {
                }
                field("ED Value"; "ED Value")
                {
                }
                field("Posting Group"; "Posting Group")
                {
                }
                field(Grade; Grade)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("print payslip")
            {
                Caption = 'print  payslip';
                Image = print;
                Promoted = true;
                PromotedCategory = New;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    UserSetup.GET(USERID);
                    PayrollPayslipHeader.SETRANGE("Payroll Period", "Payroll Period");
                    PayrollPayslipHeader.SETRANGE("Employee No", UserSetup."Employee No.");
                    IF PayrollPayslipHeader.FINDFIRST THEN
                        REPORT.RUNMODAL(50046, TRUE, TRUE, PayrollPayslipHeader);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        UserSetup.GET(USERID);
        FILTERGROUP(10);
        SETFILTER("Employee No", UserSetup."Employee No.");
        FILTERGROUP(0);
    end;

    var
        PayrollPayslipHeader: Record "50007";
        PayrollPayslipLines: Record "50006";
        USEREmployee: Code[10];
        UserSetup: Record 91;
}

