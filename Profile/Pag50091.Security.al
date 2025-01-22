page 50091 Security
{
    Caption = 'Security', Comment = 'Use same translation as ''Profile Description'' (if applicable)';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            part("User Tasks Activities"; "User Tasks Activities")
            {
                ApplicationArea = Suite;
            }
            part("Emails"; "Email Activities")
            {
                ApplicationArea = Basic, Suite;
            }

            part(Control123; "Team Member Activities")
            {
                ApplicationArea = Suite;
            }
            part(Control106; "My Job Queue")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }

            systempart(Control1901377608; MyNotes)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Embedding)
        {
            action(WaybillDoc)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Waybill';
                Image = "Report";
                RunObject = page "Posted Sales Shipments";
                ToolTip = 'View posted sales shipment.';
            }
            action(MyPayslips)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'My Payslip';
                Image = "Report";
                RunObject = page "My payslip";
                ToolTip = 'View your payslips.';
            }
        }

    }
}


