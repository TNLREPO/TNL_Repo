page 50013 "Posting Group Header."
{
    PageType = Card;
    SourceTable = "Payroll-Posting Group Header.";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                }
                field("Search Name"; Rec."Search Name")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Annual Leave Days"; Rec."Annual Leave Days")
                {
                }
                field(Management; Rec.Management)
                {
                }
            }
            part("Loan Type Line"; 50014)
            {
                SubPageLink = "Posting Group" = FIELD(Posting Group Code);
                SubPageView = SORTING("Posting Group", E/D Code);
            }
        }
    }

    actions
    {
        area(processing)
        {
        }
    }
}

