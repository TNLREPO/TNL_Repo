page 50185 "Dealer Monthly Allocation List"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50034;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Allocation Code"; "Allocation Code")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Amount Paid"; "Amount Paid")
                {
                }
                field("Teller No."; "Teller No.")
                {
                }
                field(Bank; Bank)
                {
                }
                field("Teller Date"; "Teller Date")
                {
                }
                field("Amount Allocated"; "Amount Allocated")
                {
                }
            }
        }
    }

    actions
    {
    }
}

