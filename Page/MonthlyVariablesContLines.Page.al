page 50313 "Monthly Variables/Cont. Lines."
{
    PageType = Card;
    SourceTable = "Monthly Variables Lines.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payroll Period";Rec."Payroll Period")
                {
                }
                field("Employee No";Rec."Employee No")
                {
                }
                field("E/D Code";Rec."E/D Code")
                {
                }
                field("Old Payroll No.";Rec."Old Payroll No.")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Employee Name";Rec."Employee Name")
                {
                }
                field("Cost Centre Code";Rec."Cost Centre Code")
                {
                    Visible = false;
                }
                field("Global Dimension 1 Code";Rec."Global Dimension 1 Code")
                {
                    Visible = false;
                }
                field(Quantity;Rec. Quantity)
                {
                }
                field(Rate;Rec. Rate)
                {
                }
                field(Amount;Rec. Amount)
                {
                }
                field("Variable Unit";Rec."Variable Unit")
                {
                }
                field(Taxable;Rec. Taxable)
                {
                }
                field("Payslip Text";Rec."Payslip Text")
                {
                }
                field("Lapse Period";Rec."Lapse Period")
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
        Rec.FILTERGROUP(10);
        Rec.SETFILTER("Posting Group", DefaultPostingGroup);
        Rec.FILTERGROUP(0);
    end;

    var
        MonthCont: Record "50017";
        Periodrec: Record "50004";
        usersetup: Record 91;
        DefaultPostingGroup: Text[250];
}

