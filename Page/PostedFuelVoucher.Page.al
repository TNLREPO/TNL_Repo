page 50167 "Posted Fuel Voucher"
{
    PageType = Card;
    SourceTable = Table50053;
    SourceTableView = WHERE (Posted = CONST (Yes));

    layout
    {
        area(content)
        {
            group()
            {
                Editable = false;
                field("Voucher No."; "Voucher No.")
                {

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE;
                    end;
                }
                field(Description; Description)
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                    Editable = false;
                }
                field("Item No."; "Item No.")
                {
                }
                field(Item.Description;
                    Item.Description)
                {
                    Caption = 'Item Description';
                    Editable = false;
                }
                field(Location; Location)
                {
                }
                field("Asset Code"; "Asset Code")
                {
                }
                field(FA.Description;
                    FA.Description)
                {
                    Caption = 'Asset Description';
                    Editable = false;
                }
                field("Fuel Code"; "Fuel Code")
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field("Qty Requested"; "Qty Requested")
                {
                }
                field("Qty Approved"; "Qty Approved")
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
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Item.GET("Item No.") THEN;
        IF FA.GET("Asset Code") THEN;
    end;

    var
        Item: Record 27;
        FA: Record 5600;
        FADeprBk: Record "5612";
        ItemJnlLine: Record "83";
        GenJnlLine: Record "81";
        GenPostSetup: Record "252";
        ItemJnlPost: Codeunit "22";
        Text100: Label 'Do you want to Post Voucher?';
        GenJnlPost: Codeunit "12";
        Text101: Label 'Voucher successfully posted';
}

