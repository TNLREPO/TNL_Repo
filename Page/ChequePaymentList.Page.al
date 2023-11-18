page 70010 "Cheque Payment List"
{
    CardPageID = "Cheque Payment Card";
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=FILTER(Requisition),
                            Cash/Cheque=FILTER(Cheque),
                            Posted=CONST(No));

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
                field("Currency Code";"Currency Code")
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
                field("Global Dimension 1 Code";"Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                }
                field(Amount;Amount)
                {
                }
                field("Created By";"Created By")
                {
                }
            }
        }
    }

    actions
    {
    }
}

