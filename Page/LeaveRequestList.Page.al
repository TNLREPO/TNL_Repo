page 50604 "Leave Request List"
{
    CardPageID = "Leave Request Card";
    PageType = List;
    SourceTable = Table70009;
    SourceTableView = WHERE (Treated = CONST (No),
                            Send for Approval=CONST(No),
                            Reject=CONST(No),
                            HOD HR/ADMIN=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No."; "Request No.")
                {
                    Editable = false;
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
                field("Requester Name"; "Requester Name")
                {
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

