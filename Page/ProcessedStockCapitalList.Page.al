page 70039 "Processed Stock Capital List"
{
    CardPageID = "Processed Stock Capitalisation";
    PageType = List;
    SourceTable = Table50135;
    SourceTableView = WHERE (Processed = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
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
                field("No. Series"; "No. Series")
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
                field("Chasis No."; "Chasis No.")
                {
                }
                field(Color; Color)
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Entry No"; "Entry No")
                {
                }
                field("Item Cost (LCY)"; "Item Cost (LCY)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

