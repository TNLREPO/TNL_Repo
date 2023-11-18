page 50228 "Stock Capitalisation List"
{
    CardPageID = "Stock Capitalisation";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50135;
    SourceTableView = WHERE (Stock Capitalisation Approval=CONST(No),
                            Processed=CONST(No));

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Code; Code)
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Global Dimension 1"; "Global Dimension 1")
                {
                }
                field("Global Dimension 2"; "Global Dimension 2")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Item Description"; "Item Description")
                {
                }
                field(Location; Location)
                {
                }
                field("Variant Code"; "Variant Code")
                {
                }
                field("Asset No."; "Asset No.")
                {
                }
                field("Asset Description"; "Asset Description")
                {
                }
                field("Asset Aquisition Date"; "Asset Aquisition Date")
                {
                }
                field(Processed; Processed)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Process date"; "Process date")
                {
                }
                field("Process Time"; "Process Time")
                {
                }
                field("Process By"; "Process By")
                {
                }
                field("Stock Capitalisation Account"; "Stock Capitalisation Account")
                {
                }
                field("Stock Capitalisation Approval"; "Stock Capitalisation Approval")
                {
                }
                field("Capitalisation Approved By"; "Capitalisation Approved By")
                {
                }
                field("Capitalisation Approved Time"; "Capitalisation Approved Time")
                {
                }
                field("Capitalisation Approved Date"; "Capitalisation Approved Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

