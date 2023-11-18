page 50301 "Employee Regular Var. Header."
{
    PageType = Card;
    SourceTable = Table50016;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Payroll Period"; "Payroll Period")
                {
                }
                field("E/d Code"; "E/d Code")
                {
                }
                field("PaySlip Text"; "PaySlip Text")
                {
                }
                field("Recorded By"; "Recorded By")
                {
                }
                field(Date; Date)
                {
                }
            }
            part(; 50298)
            {
                SubPageLink = Payroll Period=FIELD(Payroll Period),
                              E/D Code=FIELD(E/d Code);
            }
        }
    }

    actions
    {
    }

    var
        PGrp: Record "50140";
        DefaultPostingGroup: Text[250];
        UserRec: Record "91";
        EmployeeRec: Record "5200";

    [Scope('Internal')]
    procedure GetPGrp(Grp: Code[10]): Text[30]
    begin
    end;
}

