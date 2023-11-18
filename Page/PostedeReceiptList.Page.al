page 70109 "Posted e-Receipt List"
{
    CardPageID = "Posted e-Receipt Voucher";
    DeleteAllowed = false;
    Editable = false;
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=CONST(e-Receipt),
                            Cash/Cheque=CONST(Cheque),
                            Posted=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field("Document Type"; "Document Type")
                {
                }
                field("Cash/Cheque"; "Cash/Cheque")
                {
                }
                field("Account Type"; "Account Type")
                {
                }
                field("Account No."; "Account No.")
                {
                }
                field("Account Description"; "Account Description")
                {
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Balance Account Type"; "Balance Account Type")
                {
                }
                field("Balance Account No."; "Balance Account No.")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Navigate;
                end;
            }
        }
    }
}

