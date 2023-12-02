page 50084 "Medical Treatment Costs"
{
    PageType = Card;
    ShowFilter = true;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Clinic Cost";Rec. "Clinic Cost")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Reimbursed Cost";Rec. "Reimbursed Cost")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Hospital Cost";Rec. "Hospital Cost")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Treatment Cost";Rec. "Treatment Cost")
                {
                    Caption = 'Total Medical Cost';
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
            }
            part(lines; "Medical Record List")
            {
                SubPageLink = "Global Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                              "Employee No"=FIELD("Employee Filter"),
                              Beneficiary=FIELD("Beneficiary Filter"),
                              "Transaction Type"=FIELD("Transaction  Filter"),
                              "Transaction Date"=FIELD("Date Filter"),
                              "Hospital Code"=FIELD("Hospital Filter");
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
        VendRec: Record 23;
        HospName: Text[60];
        MediRec: Record "50092";
        BenFilter: Option " ",Self,Dependant;
        TransFilter: Option " ",C,R,H;

    [Scope('Internal')]
    procedure UpdateFilter()
    begin
        Rec."Beneficiary Filter" := BenFilter;
        Rec.VALIDATE(Rec."Transaction  Filter",TransFilter);
    end;
}

