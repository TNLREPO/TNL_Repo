page 50243 "Issued Fuel Voucher"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50053;
    SourceTableView = WHERE (Issue = FILTER (Yes));

    layout
    {
        area(content)
        {
            group()
            {
                field("Voucher No."; "Voucher No.")
                {

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE;
                    end;
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
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
                field(AssetDescptn; AssetDescptn)
                {
                    Caption = 'Asset Description';
                    Editable = false;
                }
                field("Account No."; "Account No.")
                {
                }
                field("Fuel Code"; "Fuel Code")
                {
                }
                field("Posting Group"; "Posting Group")
                {
                }
                field("New Vehicle"; "New Vehicle")
                {
                }
                field("Cost Amount in G/L"; "Cost Amount in G/L")
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
                field(Issue; Issue)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Fu&nction")
            {
                Caption = 'Fu&nction';
                separator()
                {
                }
                action("P&ost")
                {
                    Caption = 'P&ost';
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';
                    Visible = false;

                    trigger OnAction()
                    begin
                        IF NOT CONFIRM(Text100, FALSE) THEN
                            ERROR('Action aborted!');

                        TESTFIELD("Item No.");
                        TESTFIELD("Asset Code");
                        TESTFIELD("Fuel Code");
                        TESTFIELD("Qty Issued");

                        Item.GET("Item No.");
                        FA.GET("Asset Code");
                        GenPostSetup.GET('', Item."Gen. Prod. Posting Group");
                        FADeprBk.SETRANGE(FADeprBk."FA No.", FA."No.");
                        FADeprBk.FINDFIRST;

                        //post item
                        ItemJnlLine."Journal Template Name" := 'ITEM';
                        //ItemJnlLine."Journal Batch Name" := 'FUEL';
                        ItemJnlLine."Line No." := 10000;
                        ItemJnlLine.VALIDATE("Item No.", "Item No.");
                        ItemJnlLine."Posting Date" := TODAY;
                        ItemJnlLine.Description := Description;
                        ItemJnlLine."Entry Type" := ItemJnlLine."Entry Type"::"Negative Adjmt.";
                        ItemJnlLine."Document No." := "Voucher No.";
                        ItemJnlLine."Location Code" := Location;
                        ItemJnlLine.VALIDATE(Quantity, "Qty Issued");
                        ItemJnlLine.VALIDATE(ItemJnlLine."Shortcut Dimension 1 Code", "Shortcut Dimension 1 Code");
                        ItemJnlLine.VALIDATE(ItemJnlLine."Shortcut Dimension 2 Code", "Shortcut Dimension 2 Code");
                        ItemJnlPost.RUN(ItemJnlLine);

                        //post maintenance
                        GenJnlLine."Journal Template Name" := 'GENERAL';
                        //GenJnlLine."Journal Batch Name" := 'FUEL';
                        GenJnlLine."Line No." := 10000;
                        GenJnlLine."Account Type" := GenJnlLine."Account Type"::"Fixed Asset";
                        GenJnlLine.VALIDATE("Account No.", "Asset Code");
                        GenJnlLine."Posting Date" := TODAY;
                        GenJnlLine."FA Posting Date" := TODAY;
                        GenJnlLine."Document No." := "Voucher No.";
                        GenJnlLine.Description := Description;
                        GenJnlLine.Amount := Item."Unit Cost" * "Qty Issued";
                        GenJnlLine."FA Posting Type" := GenJnlLine."FA Posting Type"::Maintenance;
                        GenJnlLine."Depreciation Book Code" := FADeprBk."Depreciation Book Code";
                        GenJnlLine."Maintenance Code" := "Fuel Code";
                        GenJnlLine.VALIDATE(GenJnlLine."Shortcut Dimension 1 Code", "Shortcut Dimension 1 Code");
                        GenJnlLine.VALIDATE(GenJnlLine."Shortcut Dimension 2 Code", "Shortcut Dimension 2 Code");
                        GenJnlLine."Bal. Account Type" := GenJnlLine."Bal. Account Type"::"G/L Account";
                        GenJnlLine.VALIDATE("Bal. Account No.", GenPostSetup."Inventory Adjmt. Account");
                        GenJnlLine."Gen. Posting Type" := 0;
                        GenJnlLine."Gen. Bus. Posting Group" := '';
                        GenJnlLine."Gen. Prod. Posting Group" := '';
                        GenJnlPost.RUN(GenJnlLine);

                        //update voucher as posted
                        Posted := TRUE;
                        MODIFY;
                        CurrPage.UPDATE(FALSE);
                        MESSAGE(Text101);
                    end;
                }
                action(Navigate)
                {
                    Caption = 'Navigate';
                    Image = Navigate;

                    trigger OnAction()
                    begin
                        Navigate;
                    end;
                }
            }
        }
        area(processing)
        {
            action("P&rint")
            {
                Caption = 'P&rint';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    FuelVoucher: Record "50053";
                begin
                    CLEAR(FuelVoucherR);
                    FuelVoucher.SETRANGE(FuelVoucher."Voucher No.", "Voucher No.");
                    FuelVoucherR.SETTABLEVIEW(FuelVoucher);
                    FuelVoucherR.RUNMODAL;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF Item.GET("Item No.") THEN;
        IF FA.GET("Asset Code") THEN
            AssetDescptn := FA.Description ELSE
            AssetDescptn := '';
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
        FuelVoucherR: Report "50255";
        AssetDescptn: Code[70];
}

