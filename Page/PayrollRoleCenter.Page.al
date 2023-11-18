page 50280 "Payroll Role Center"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                systempart(; MyNotes)
                {
                }
                systempart(; Notes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
        }
        area(embedding)
        {
            action(Employees)
            {
                Caption = 'Employees';
                RunObject = Page 5201;
            }
            action("Earnings and Deductions")
            {
                Caption = 'Earnings and Deductions';
                RunObject = Page 70003;
                RunPageMode = View;
            }
        }
        area(sections)
        {
        }
        group("HR Setup")
        {
            Caption = 'HR Setup';
            Image = HRSetup;
        }
        action("Units Of Measure")
        {
            Caption = 'Units Of Measure';
            RunObject = Page 5236;
        }
        action("Causes Of Abscence")
        {
            Caption = 'Causes Of Abscence';
            RunObject = Page 5210;
        }
        action("Causes Of Inactivity")
        {
            Caption = 'Causes Of Inactivity';
            RunObject = Page 5214;
        }
        action("Misc. Articles")
        {
            Caption = 'Misc. Articles';
            RunObject = Page 5218;
        }
        action(Confidential)
        {
            Caption = 'Confidential';
            RunObject = Page 5220;
        }
        group(Payroll)
        {
            Caption = 'Payroll';
            Image = Setup;
        }
        action("Payroll Periods")
        {
            Caption = 'Payroll Periods';
            RunObject = Page 70007;
        }
        action("E/D Codes")
        {
            Caption = 'E/D Codes';
            RunObject = Page 70003;
                            RunPageMode = View;
        }
        action("Loan Types")
        {
            Caption = 'Loan Types';
            RunObject = Page 70023;
                            RunPageMode = View;
        }
        action("Employee Banks")
        {
            Caption = 'Employee Banks';
            RunObject = Page 50021;
        }
        group("Posted Documents")
        {
            Caption = 'Posted Documents';
            Image = FiledPosted;
        }
        action("G/L Registers")
        {
            Caption = 'G/L Registers';
            Image = GLRegisters;
            RunObject = Page 116;
                            RunPageMode = View;
                            RunPageView = WHERE(Journal Batch Name=FILTER(PAYROLL));
        }
        area(creation)
        {
        }
        action(Employee)
        {
            Caption = 'Employee';
            Image = Employee;
            RunObject = Page 5200;
                            RunPageMode = Create;
        }
        action("Employee Group")
        {
            Caption = 'Employee Group';
            Image = EditCustomer;
            RunObject = Page 70014;
                            RunPageMode = Create;
        }
        action("Loan Record")
        {
            Caption = 'Loan Record';
            Image = Loaner;
            RunObject = Page 70021;
                            RunPageMode = Create;
        }
        area(processing)
        {
        }
        separator(Tasks)
        {
            Caption = 'Tasks';
            IsHeader = true;
        }
        action("Payroll Setup")
        {
            Caption = 'Payroll Setup';
            Image = Setup;
            RunObject = Page 70001;
        }
        action("Monthly Variable Register")
        {
            Caption = 'Monthly Variable Register';
            Image = Registered;
            RunObject = Page 70043;
        }
        action("Upload/Download Monthly Variables")
        {
            Caption = 'Upload/Download Monthly Variables';
            Image = ImportExcel;
            RunObject = XMLport 50022;
        }
        action("Payroll Payslips")
        {
            Caption = 'Payroll Payslips';
            RunObject = Page 70005;
                            RunPageMode = View;
        }
    }
}

