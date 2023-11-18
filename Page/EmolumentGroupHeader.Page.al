page 50152 "Emolument Group Header"
{
    PageType = Card;
    SourceTable = Table50000;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Code)
                {
                    Lookup = false;
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
                field(GetEmpName(Code); GetEmpName(Code))
                {
                    Caption = 'Employee Name';
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
            }
            part(; 50151)
            {
                SubPageLink = Emolument Group=FIELD(Code);
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Functions")
            {
                Caption = '&Functions';
                action("Copy Lines from another group")
                {
                    Caption = 'Copy Lines from another group';
                    Ellipsis = false;
                    RunObject = Report 50049;
                }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Posting Group Code" := DefaultPostingGroup;
    end;

    var
        PGrp: Record "50011";
        gpc: Codeunit "50004";
        DefaultPostingGroup: Code[20];

    [Scope('Internal')]
    procedure GetPGrp(Grp: Code[10]): Text[30]
    begin
        IF PGrp.GET(Grp) THEN
            EXIT(PGrp.Description)
        ELSE
            EXIT('');
    end;
}

