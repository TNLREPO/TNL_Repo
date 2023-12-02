page 50608 "Approved Leave List"
{
    CardPageID = "Leave Request Card";
    Editable = false;
    PageType = List;
    SourceTable = "Leave Request3";
    SourceTableView = WHERE(Approved2 = filter('Yes'),
                            Treated = filter('No'),
                            Reject = filter('No'),
                            "Entry Date" = FILTER('01/01/23..'));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No."; Rec."Request No.")
                {
                }
                field("Entry Date"; Rec."Entry Date")
                {
                }
                field("Employee Name";
                EmpREc.FullName)
                {
                    Caption = 'Employee Name';
                }
                field("Employee No."; Rec."Employee No.")
                {
                }
                field("Request Type"; Rec."Request Type")
                {
                    Visible = false;
                }
                field("Employment Date"; Rec."Employment Date")
                {
                }
                field("Global Dimension 1 code"; Rec."Global Dimension 1 code")
                {
                    Caption = 'Department';
                }
            }
        }
    }

    actions
    {
    }

    var
        EmpREc: Record 5200;
}

