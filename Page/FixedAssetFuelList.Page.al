page 70001 "Fixed Asset Fuel List"
{
    CardPageID = "Fuel Fixed Asset";
    PageType = List;
    SourceTable = Table50053;
    SourceTableView = WHERE (Fixed Asset=CONST(Yes),
                            Issue=CONST(No));

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
                field("Registration No."; "Registration No.")
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

