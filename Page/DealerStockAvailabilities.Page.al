page 50225 "Dealer Stock Availabilities"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table27;
    SourceTableView = WHERE (Inventory = FILTER (> 0),
                            Net Change=FILTER(>0));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No.";"No.")
                {
                }
                field(Description;Description)
                {
                }
                field("Unit Price";"Unit Price")
                {
                }
                field("Date Filter";"Date Filter")
                {
                }
                field("Location Filter";"Location Filter")
                {
                }
                field(Inventory;Inventory)
                {

                    trigger OnDrillDown()
                    begin

                        ERROR('You Don''t Have Permision to Open Details');
                    end;
                }
                field("Net Change";"Net Change")
                {

                    trigger OnDrillDown()
                    begin

                        ERROR('You Don''t Have Permision to Open Details');
                    end;
                }
                field("Qty. on Purch. Order";"Qty. on Purch. Order")
                {

                    trigger OnDrillDown()
                    begin

                        ERROR('You Don''t Have Permision to Open Details');
                    end;
                }
                field("Qty. on Sales Order";"Qty. on Sales Order")
                {

                    trigger OnDrillDown()
                    begin

                        ERROR('You Don''t Have Permision to Open Details');
                    end;
                }
            }
        }
    }

    actions
    {
    }
}

