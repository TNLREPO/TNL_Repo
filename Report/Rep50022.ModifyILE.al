namespace AL_TNL.AL_TNL;

using Microsoft.Inventory.Ledger;
using Microsoft.Inventory.Item;

report 50022 ModifyILE
{
    ApplicationArea = All;
    Caption = 'ModifyILE';
    UsageCategory = Lists;
    Permissions = tabledata "Item Ledger Entry" = rimd;
    ProcessingOnly = true;
    dataset
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            column(EntryNo; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            var
                ItemRec: Record Item;
            begin
                if ItemRec.Get("Item No.") then begin
                    Description := ItemRec.Description;
                    Modify();
                end;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
