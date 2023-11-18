page 50608 "Approved Leave List"
{
    CardPageID = "Leave Request Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70009;
    SourceTableView = WHERE (Approved2 = CONST (Yes),
                            Treated = CONST (No),
                            Reject = CONST (No),
                            Entry Date=FILTER(01/01/23..));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No.";"Request No.")
                {
                }
                field("Entry Date";"Entry Date")
                {
                }
                field(EmpREc.GetFullName("Employee No.");EmpREc.GetFullName("Employee No."))
                {
                    Caption = 'Employee Name';
                }
                field("Employee No.";"Employee No.")
                {
                }
                field("Request Type";"Request Type")
                {
                    Visible = false;
                }
                field("Employment Date";"Employment Date")
                {
                }
                field("Global Dimension 1 code";"Global Dimension 1 code")
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
        EmpREc: Record "5200";
}

