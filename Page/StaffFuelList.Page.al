page 70002 "Staff Fuel List"
{
    CardPageID = "Fuel Staff";
    PageType = List;
    SourceTable = Table50053;
    SourceTableView = WHERE (Staff = CONST (Yes),
                            Issue = CONST (No));

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = false;
                field("Voucher No."; "Voucher No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Fuel Code"; "Fuel Code")
                {
                }
                field("Asset Code"; "Asset Code")
                {
                }
                field(Location; Location)
                {
                }
                field("Transaction Date"; "Transaction Date")
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
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

