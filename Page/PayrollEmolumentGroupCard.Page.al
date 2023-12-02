page 70045 "Payroll Emolument Group Card"
{
    PageType = Card;
    SourceTable = "Payroll-Emolument Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Rec.Code)
                {
                }
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                }
                field("Net Pay Due"; Rec."Net Pay Due")
                {
                }
                field(Grade; Rec.Grade)
                {
                }
                field(Step; Rec.Step)
                {
                }
                field("Search Name"; Rec."Search Name")
                {
                }
            }
            part("Payroll Emolument Line"; 50151)
            {
                SubPageLink = "Emolument Group" = FIELD(Code);
            }
        }
    }

    actions
    {
    }
}

