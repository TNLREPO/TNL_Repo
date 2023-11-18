page 70045 "Payroll Emolument Group Card"
{
    PageType = Card;
    SourceTable = Table50000;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Code)
                {
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
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
            part("Payroll Emolument Line"; 50151)
            {
                SubPageLink = Emolument Group=FIELD(Code);
            }
        }
    }

    actions
    {
    }
}

