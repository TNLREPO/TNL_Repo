page 50227 "Stock Capitalisation"
{
    PageType = Card;
    SourceTable = Table50135;
    SourceTableView = WHERE (Stock Capitalisation Approval=CONST(No),
                            Processed=CONST(No));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Code)
                {
                    Caption = 'Code';
                }
                field("Transaction Date"; "Transaction Date")
                {
                    Caption = 'Transaction Date';
                }
                field("Global Dimension 1"; "Global Dimension 1")
                {
                    Caption = 'Global Dimension 1';
                }
                field("Global Dimension 2"; "Global Dimension 2")
                {
                    Caption = 'Global Dimension 2';
                }
                field("Item No."; "Item No.")
                {
                    Caption = 'Item No.';
                }
                field("Item Description"; "Item Description")
                {
                    Caption = 'Item Description';
                }
                field(Location; Location)
                {
                    Caption = 'Location';
                }
                field("Entry No"; "Entry No")
                {
                    Caption = 'Entry No';
                }
                field("Chasis No."; "Chasis No.")
                {
                    Caption = 'Chasis No.';
                }
                field("Engine No."; "Engine No.")
                {
                    Caption = 'Engine No.';
                }
                field(Color; Color)
                {
                    Caption = 'Color';
                }
                field("Key No."; "Key No.")
                {
                    Caption = 'Key No.';
                }
                field("Item Cost (LCY)"; "Item Cost (LCY)")
                {
                }
                field("Asset No."; "Asset No.")
                {
                    Caption = 'Asset No.';
                }
                field("Asset Description"; "Asset Description")
                {
                    Caption = 'Asset Description';
                }
                field("Asset Aquisition Date"; "Asset Aquisition Date")
                {
                    Caption = 'Asset Aquisition Date';
                }
                field("Stock Capitalisation Account"; "Stock Capitalisation Account")
                {
                    Caption = 'Stock Capitalisation Account';
                }
                field("Stock Capitalisation Approval"; "Stock Capitalisation Approval")
                {
                    Caption = 'Stock Capitalisation Approval';
                }
                field("Capitalisation Approved By"; "Capitalisation Approved By")
                {
                    Caption = 'Capitalisation Approved By';
                }
                field("Capitalisation Approved Time"; "Capitalisation Approved Time")
                {
                    Caption = 'Capitalisation Approved Time';
                }
                field("Capitalisation Approved Date"; "Capitalisation Approved Date")
                {
                    Caption = 'Capitalisation Approved Date';
                }
                field(Processed; Processed)
                {
                    Caption = 'Processed';
                }
                field("Process date"; "Process date")
                {
                    Caption = 'Process date';
                }
                field("Process Time"; "Process Time")
                {
                    Caption = 'Process Time';
                }
                field("Process By"; "Process By")
                {
                    Caption = 'Process By';
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Stock Capitalization")
            {
                Caption = 'Stock Capitalization';
                RunObject = Report 50550;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        OnAfterGetCurrRecord;
    end;

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        IF Processed THEN
            CurrPage.EDITABLE(FALSE) ELSE
            CurrPage.EDITABLE(TRUE);
    end;
}

