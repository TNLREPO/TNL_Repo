report 50322 "Part Sales Purchase Histor"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PartSalesPurchaseHistor.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = WHERE (Inventory Posting Group=FILTER(N_PARTS|ACCESSORY));
            RequestFilterFields = "Entry Type","Location Code","Posting Date","Variant Code";
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
            {
            }
            column(PostingDate_ItemLedgerEntry;"Item Ledger Entry"."Posting Date")
            {
            }
            column(Description_ItemLedgerEntry;"Item Ledger Entry".Description)
            {
            }
            column(Quantity_ItemLedgerEntry;"Item Ledger Entry".Quantity)
            {
            }
            column(UnitofMeasureCode_ItemLedgerEntry;"Item Ledger Entry"."Unit of Measure Code")
            {
            }
            column(ProductGroupCode_ItemLedgerEntry;"Item Ledger Entry"."Product Group Code")
            {
            }
            column(CostAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(PurchaseAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Purchase Amount (Actual)")
            {
            }
            column(ItemCategoryCode_ItemLedgerEntry;"Item Ledger Entry"."Item Category Code")
            {
            }
            column(Nonstock_ItemLedgerEntry;"Item Ledger Entry".Nonstock)
            {
            }
            column(EntryType_ItemLedgerEntry;"Item Ledger Entry"."Entry Type")
            {
            }
            column(SalesAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Sales Amount (Actual)")
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

