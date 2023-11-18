page 50449 "Fuel New Vehicle"
{
    PageType = Card;
    SourceTable = Table50053;
    SourceTableView = WHERE (New Vehicle=CONST(Yes),
                            Issue=CONST(No));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Voucher No."; "Voucher No.")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Item No."; "Item No.")
                {
                    Caption = 'Fuel Type';
                }
                field(Description; Description)
                {
                    Editable = true;
                }
                field(Location; Location)
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field("Qty Issued"; "Qty Issued")
                {
                }
                field("Issued By"; "Issued By")
                {
                }
                field("Received By"; "Received By")
                {
                }
                field("Receipt Date"; "Receipt Date")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Post")
            {
                Caption = '&Post';
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    TESTFIELD("Transaction Date");
                    TESTFIELD(Location);
                    TESTFIELD("Shortcut Dimension 1 Code");
                    TESTFIELD("Shortcut Dimension 2 Code");
                    TESTFIELD("Qty Issued");
                    TESTFIELD("Issued By");
                    TESTFIELD("Received By");
                    TESTFIELD("Receipt Date");
                    PostNewVehicle;
                    MESSAGE('Fuel has been posted!');
                end;
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        "New Vehicle" := TRUE;
    end;

    var
        Item: Record 27;
        FA: Record 5600;
        FADeprBk: Record "5612";
        ItemJnlLine: Record "83";
        GenJnlLine: Record "81";
        GenPostSetup: Record "252";
        ItemJnlPost: Codeunit "22";
        GenJnlPost: Codeunit "12";
        FuelVoucherR: Report "50255";
        AssetDescptn: Code[70];
}

