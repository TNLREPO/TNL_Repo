page 50013 "Posting Group Header."
{
    PageType = Card;
    SourceTable = Table50011;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Description; Description)
                {
                }
                field("Annual Leave Days"; "Annual Leave Days")
                {
                }
                field(Management; Management)
                {
                }
            }
            part("Loan Type Line"; 50014)
            {
                SubPageLink = Posting Group=FIELD(Posting Group Code);
                    SubPageView = SORTING(Posting Group,E/D Code);
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

