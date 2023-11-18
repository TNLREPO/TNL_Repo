page 70097 "e-Payment List"
{
    CardPageID = "e-Payment Card";
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=FILTER(e-Pay),
                            Cash/Cheque=FILTER(Cheque),
                            Posted=CONST(No),
                            Reject=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Account Type";"Account Type")
                {
                }
                field("Account No.";"Account No.")
                {
                }
                field("Account Description";"Account Description")
                {
                }
                field("Transaction Description";"Transaction Description")
                {
                }
                field("Balance Account Type";"Balance Account Type")
                {
                }
                field("Balance Account No.";"Balance Account No.")
                {
                }
                field("Global Dimension 1 Code";"Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                }
                field(Amount;Amount)
                {
                }
                field("Received by";"Received by")
                {
                }
                field("Created By";"Created By")
                {
                }
                field("Balance Amount";"Balance Amount")
                {
                }
                field("Balance Total";"Balance Total")
                {
                }
                field("Detail Balance";"Detail Balance")
                {
                }
            }
        }
    }

    actions
    {
    }
}

