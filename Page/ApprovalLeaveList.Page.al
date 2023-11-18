page 50609 "Approval Leave List"
{
    CardPageID = "Leave Request Card";
    PageType = List;
    SourceTable = "Leave Request3";
    SourceTableView = WHERE("Send for Approval" = filter(true),
                            Approved2 = filter(false),
                            Treated = filter(false),
                            "MD Leave Approval" = filter(false),
                            Reject = filter(false),
                            "HOD HR/ADMIN" = filter(false),
                            "Date Filter" = FILTER('01/01/23..'));

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
                field(EmpREc; EmpREc.FullName())
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

