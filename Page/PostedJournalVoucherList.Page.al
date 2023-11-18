page 70024 "Posted Journal Voucher List"
{
    CardPageID = "Posted Journal Voucher Card";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50103;
    SourceTableView = WHERE (Document Type=CONST(Journal),
                            Cash/Cheque=CONST(Cheque),
                            Posted=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
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
                field("Posting Date"; "Posting Date")
                {
                }
                field("Created By"; "Created By")
                {
                }
                field("Modified By"; "Modified By")
                {
                }
                field("Received by"; "Received by")
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

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

