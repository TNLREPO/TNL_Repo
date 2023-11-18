page 50385 "Sublet List"
{
    CardPageID = "Sublet Register Card";
    PageType = List;
    SourceTable = Table50138;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Sublet Code"; "Sublet Code")
                {
                }
                field("Sublet Descriptions"; "Sublet Descriptions")
                {
                }
                field("Standard Duration"; "Standard Duration")
                {
                }
                field("Standard Cost"; "Standard Cost")
                {
                }
                field("Standard Price"; "Standard Price")
                {
                }
                field("Debit Account"; "Debit Account")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Sublet &Card ")
            {
                Caption = 'Sublet &Card ';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50386;
                RunPageOnRec = true;
            }
        }
    }
}

