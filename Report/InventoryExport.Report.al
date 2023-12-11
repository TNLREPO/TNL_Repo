report 50028 "Inventory Export"
{
    DefaultLayout = RDLC;
    RDLCLayout = './InventoryExport.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            RequestFilterFields = "Inventory Posting Group", "Posting Date";
            column(DocumentNo_ItemLedgerEntry; "Item Ledger Entry"."Document No.")
            {
            }
            column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
            {
            }
            column(RemainingQuantity_ItemLedgerEntry; "Item Ledger Entry"."Remaining Quantity")
            {
            }
            column(CostAmountActual_ItemLedgerEntry; "Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(LocationCode_ItemLedgerEntry; "Item Ledger Entry"."Location Code")
            {
            }
            column(InventoryPostingGroup_ItemLedgerEntry; "Item Ledger Entry"."Inventory Posting Group")
            {
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
}

