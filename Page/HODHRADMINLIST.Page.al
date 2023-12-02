page 50610 "HOD HR/ADMIN LIST"
{
    CardPageID = "Leave Request Card";
    PageType = List;
    SourceTable = "Leave Request3";
    SourceTableView = WHERE("HOD HR/ADMIN" = FILTER('Yes'),
                            Reject = FILTER('No'),
                            Treated = FILTER('No'),
                            "MD Leave Approval" = FILTER('No'),
                            "Approved2" = FILTER('No'));

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
                field("Employe Name"; EmpRec.FullName())
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

