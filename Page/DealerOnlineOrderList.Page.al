page 50158 "Dealer Online Order List"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50099;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Order No."; "Order No.")
                {
                }
                field("Dealer No."; "Dealer No.")
                {
                }
                field("Dealer Name"; "Dealer Name")
                {
                }
                field("Dealer Address"; "Dealer Address")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field(Description; Description)
                {
                }
                field("User Id"; "User Id")
                {
                }
                field("Process date"; "Process date")
                {
                }
                field(Processed; Processed)
                {
                }
                field(Submit; Submit)
                {
                }
            }
        }
    }

    actions
    {
    }
}

