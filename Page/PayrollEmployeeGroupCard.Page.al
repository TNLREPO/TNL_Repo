page 70042 "Payroll Employee Group Card"
{
    PageType = Card;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Rec.Code)
                {
                }
                field(EmpName; Rec.GetEmpName(Rec.Code))
                {
                    Caption = 'Employee Name';
                }
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                }
                field(Grade; Rec.Grade)
                {
                }
                field(Step; Rec.Step)
                {
                }
                field("Net Pay Due"; Rec."Net Pay Due")
                {
                }
            }
            part("Employee Group"; 50016)
            {
                Caption = 'Lines';
                SubPageLink = "Employee Group" = FIELD(Code);
            }
        }
    }

    actions
    {
    }

    var
        PGrp: Record 50011;


    procedure GetPGrp(Grp: Code[10]): Text[30]
    begin
        IF PGrp.GET(Grp) THEN
            EXIT(PGrp.Description)
        ELSE
            EXIT('');
    end;
}

