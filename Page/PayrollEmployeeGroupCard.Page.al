page 70042 "Payroll Employee Group Card"
{
    PageType = Card;
    SourceTable = Table50009;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Code)
                {
                }
                field(GetEmpName(Code); GetEmpName(Code))
                {
                    Caption = 'Employee Name';
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
            }
            part("Employee Group"; 50016)
            {
                Caption = 'Lines';
                SubPageLink = Employee Group=FIELD(Code);
            }
        }
    }

    actions
    {
    }

    var
        PGrp: Record "50011";

    [Scope('Internal')]
    procedure GetPGrp(Grp: Code[10]): Text[30]
    begin
        IF PGrp.GET(Grp) THEN
            EXIT(PGrp.Description)
        ELSE
            EXIT('');
    end;
}

