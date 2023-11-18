page 50386 "Sublet Register Card"
{
    PageType = Card;
    SourceTable = Table50138;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Sublet Code"; "Sublet Code")
                {

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE(TRUE);
                    end;
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
    }
}

