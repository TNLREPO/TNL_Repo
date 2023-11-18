page 50296 "Payroll Survey"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50004;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Period Code"; "Period Code")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field(Name; Name)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Mid Month"; "Mid Month")
                {
                }
                field(Closed; Closed)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Create Pay Period")
            {
                Caption = '&Create Pay Period';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50044;
            }
        }
    }
}

