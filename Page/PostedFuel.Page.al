page 50452 "Posted Fuel"
{
    PageType = Card;
    SourceTable = Table50053;
    SourceTableView = WHERE (Issue = CONST (Yes));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                Editable = false;
                field("Voucher No."; "Voucher No.")
                {
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
                field("Asset Code"; "Asset Code")
                {
                }
                field("Asset Name"; "Asset Name")
                {
                }
                field("Account No."; "Account No.")
                {
                }
                field("Staff Name"; "Staff Name")
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

    var
        FuelVoucherR: Report "50255";
}

