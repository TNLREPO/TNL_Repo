page 50277 "Treasury Activities"
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = Table9054;

    layout
    {
        area(content)
        {
            cuegroup(Receipts)
            {
                Caption = 'Receipts';
                field("Overdue Sales Documents"; "Overdue Sales Documents")
                {
                    DrillDownPageID = "Customer Ledger Entries";
                }
                field("Overdue Service Documents"; "Overdue Service Documents")
                {
                }
                field("Customer Payments Due-Today"; "Customer Payments Due-Today")
                {
                }

                actions
                {
                    action("Edit Cash Receipt Journal")
                    {
                        Caption = 'Edit Cash Receipt Journal';
                        RunObject = Page 255;
                    }
                    action("Page Customer List")
                    {
                        Caption = 'View Customer Balances';
                        RunObject = Page 22;
                        RunPageMode = Create;
                    }
                    action(Navigate)
                    {
                        Caption = 'Navigate';
                        RunObject = Page 344;
                        RunPageMode = Create;
                    }
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        RESET;
        IF NOT GET THEN BEGIN
            INIT;
            INSERT;
        END;

        SETFILTER("Due Date Filter", '<=%1', WORKDATE);
        SETFILTER("Overdue Date Filter", '<%1', WORKDATE);
    end;
}

