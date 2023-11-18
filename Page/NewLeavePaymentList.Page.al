page 50083 "New Leave Payment List"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50076;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Leave Period"; "Leave Period")
                {
                }
                field("Leave Plan No."; "Leave Plan No.")
                {
                }
                field("Document No"; "Document No")
                {
                }
                field("Amount Paid"; "Amount Paid")
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Total Days Paid For"; "Total Days Paid For")
                {
                }
            }
        }
    }

    actions
    {
    }
}

