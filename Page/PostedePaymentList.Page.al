page 70099 "Posted e-Payment List"
{
    CardPageID = "Posted e-Payment Card";
    DeleteAllowed = false;
    Editable = false;
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=CONST(e-Pay),
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
                field("Posting Date"; "Posting Date")
                {
                }
                field("Account Type"; "Account Type")
                {
                }
                field("Currency Code"; "Currency Code")
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
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Received by"; "Received by")
                {
                }
                field("Procurement No."; "Procurement No.")
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

