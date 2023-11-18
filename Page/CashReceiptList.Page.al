page 70007 "Cash Receipt List"
{
    CardPageID = "Cash Receipt Card";
    Editable = false;
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=FILTER(Receipt),
                            Cash/Cheque=FILTER(Cash),
                            Posted=CONST(No),
                            Reject=CONST(No));

    layout
    {
        area(content)
        {
            repeater()
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

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

