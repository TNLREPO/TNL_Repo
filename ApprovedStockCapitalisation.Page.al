page 50235 "Approved Stock Capitalisation"
{
    PageType = Card;
    SourceTable = Table50135;
    SourceTableView = WHERE (Stock Capitalisation Approval=CONST(Yes),
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

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE;
                    end;
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Global Dimension 1"; "Global Dimension 1")
                {
                    Caption = 'Department Code';
                }
                field("Global Dimension 2"; "Global Dimension 2")
                {
                    Caption = 'Branch Code';
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
                field("Entry No"; "Entry No")
                {
                }
                field("Chasis No."; "Chasis No.")
                {
                }
                field("Item Cost (LCY)"; "Item Cost (LCY)")
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
                field("Process date"; "Process date")
                {
                }
                field("Process Time"; "Process Time")
                {
                }
                field("Process By"; "Process By")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field(Quantity; Quantity)
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
                field(Color; Color)
                {
                }
                field("Key No."; "Key No.")
                {
                }
            }
        }
    }

    actions
    {
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

