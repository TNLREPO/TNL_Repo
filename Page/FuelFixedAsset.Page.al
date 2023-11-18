page 50450 "Fuel Fixed Asset"
{
    PageType = Card;
    SourceTable = Table50053;
    SourceTableView = WHERE (Fixed Asset=CONST(Yes),
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
                field("Asset Code"; "Asset Code")
                {
                }
                field("Asset Name"; "Asset Name")
                {
                    Editable = false;
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
                field("Registration No."; "Registration No.")
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
                    TESTFIELD("Asset Code");
                    TESTFIELD(Location);
                    TESTFIELD("Shortcut Dimension 1 Code");
                    TESTFIELD("Shortcut Dimension 2 Code");
                    TESTFIELD("Qty Issued");
                    TESTFIELD("Issued By");
                    TESTFIELD("Received By");
                    TESTFIELD("Receipt Date");
                    PostFixedAsset;
                    MESSAGE('Fuel for this Asset has been posted!');
                end;
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        "Fixed Asset" := TRUE;
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

