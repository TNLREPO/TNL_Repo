page 50610 "HOD HR/ADMIN LIST"
{
    CardPageID = "Leave Request Card";
    PageType = List;
    SourceTable = Table70009;
    SourceTableView = WHERE (HOD HR/ADMIN=CONST(Yes),
                            Reject=CONST(No),
                            Treated=CONST(No),
                            MD Leave Approval=CONST(No),
                            Approved2=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No."; "Request No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(EmpREc.GetFullName("Employee No.");
                    EmpREc.GetFullName("Employee No."))
                {
                    Caption = 'Employee Name';
                }
                field("Employee No."; "Employee No.")
                {
                }
                field("Request Type"; "Request Type")
                {
                    Visible = false;
                }
                field("Employment Date"; "Employment Date")
                {
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
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

