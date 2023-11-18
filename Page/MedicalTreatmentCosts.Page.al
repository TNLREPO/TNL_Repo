page 50084 "Medical Treatment Costs"
{
    PageType = Card;
    ShowFilter = true;
    SourceTable = Table50092;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Clinic Cost"; "Clinic Cost")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Reimbursed Cost"; "Reimbursed Cost")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Hospital Cost"; "Hospital Cost")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Treatment Cost"; "Treatment Cost")
                {
                    Caption = 'Total Medical Cost';
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
            }
            part(; 50086)
            {
                SubPageLink = Global Dimension 1 Code=FIELD(Global Dimension 1 Filter),
                              Global Dimension 2 Code=FIELD(Global Dimension 2 Filter),
                              Employee No=FIELD(Employee Filter),
                              Beneficiary=FIELD(Beneficiary Filter),
                              Transaction Type=FIELD(Transaction  Filter),
                              Transaction Date=FIELD(Date Filter),
                              Hospital Code=FIELD(Hospital Filter);
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        UpdateFilter()
    end;

    var
        VendRec: Record "23";
        HospName: Text[60];
        MediRec: Record "50092";
        BenFilter: Option " ",Self,Dependant;
        TransFilter: Option " ",C,R,H;

    [Scope('Internal')]
    procedure UpdateFilter()
    begin
        Rec."Beneficiary Filter" := BenFilter;
        VALIDATE(Rec."Transaction  Filter",TransFilter);
    end;
}

