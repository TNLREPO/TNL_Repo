report 50326 "Paint Usage Oregun"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PaintUsageOregun.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = WHERE (Inventory Posting Group=CONST(BNP));
            RequestFilterFields = "Entry Type","Posting Date","Location Code";
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
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
            column(CostAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(PurchaseAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Purchase Amount (Actual)")
            {
            }
            column(SalesAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Sales Amount (Actual)")
            {
            }
            column(PostingDate_ItemLedgerEntry;"Item Ledger Entry"."Posting Date")
            {
            }
            column(EntryType_ItemLedgerEntry;"Item Ledger Entry"."Entry Type")
            {
            }
            column(LocationCode_ItemLedgerEntry;"Item Ledger Entry"."Location Code")
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

