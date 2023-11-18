page 50223 "Deposit List"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50108;

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = false;
                field("Deposit No."; "Deposit No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                }
                field("Original Amount"; "Original Amount")
                {
                }
                field("Amount Deposited"; "Amount Deposited")
                {
                }
                field("Balance Amount"; "Balance Amount")
                {
                }
                field("Ref. Order No."; "Ref. Order No.")
                {
                }
                field("Bal. Account No."; "Bal. Account No.")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field("Cheque No."; "Cheque No.")
                {
                }
                field("Cash Confirmation"; "Cash Confirmation")
                {
                }
            }
        }
    }

    actions
    {
    }
}

