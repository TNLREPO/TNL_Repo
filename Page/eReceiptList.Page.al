page 70107 "e-Receipt List"
{
    CardPageID = "e-Receipt Card";
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=FILTER(e-Receipt),
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
                    Width = 20;
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("Cash/Cheque";"Cash/Cheque")
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
                    Caption = 'Department Code';
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                    Caption = 'Branch Code';
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

