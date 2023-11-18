page 50313 "Monthly Variables/Cont. Lines."
{
    PageType = Card;
    SourceTable = Table50017;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("Employee No"; "Employee No")
                {
                }
                field("E/D Code"; "E/D Code")
                {
                }
                field("Old Payroll No."; "Old Payroll No.")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Employee Name"; "Employee Name")
                {
                }
                field("Cost Centre Code"; "Cost Centre Code")
                {
                    Visible = false;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    Visible = false;
                }
                field(Quantity; Quantity)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Variable Unit"; "Variable Unit")
                {
                }
                field(Taxable; Taxable)
                {
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
                field("Lapse Period"; "Lapse Period")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Reset Variables")
            {
                Caption = '&Reset Variables';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 70032;
            }
            action("&Print For Checking")
            {
                Caption = '&Print For Checking';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 70068;
            }
            action("&Update Monthly Variable")
            {
                Caption = '&Update Monthly Variable';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 70033;
            }
        }
    }

    trigger OnOpenPage()
    begin
        usersetup.GET(USERID);
        DefaultPostingGroup := usersetup."Applicable HR Posting Group";
        FILTERGROUP(10);
        SETFILTER("Posting Group", DefaultPostingGroup);
        FILTERGROUP(0);
    end;

    var
        MonthCont: Record "50017";
        Periodrec: Record "50004";
        usersetup: Record 91;
        DefaultPostingGroup: Text[250];
}

