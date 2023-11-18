page 50302 "Monthly Reg. Var. Header."
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
                SubPageView = SORTING(Payroll Period,E/D Code,Employee No);
            }
        }
    }

    actions
    {
    }
}

