report 50092 "WorkshopParts Used"
{
    DefaultLayout = RDLC;
    RDLCLayout = './WorkshopPartsUsed.rdlc';

    dataset
    {
        dataitem(DataItem1; Table32)
        {
            DataItemTableView = WHERE (Document Type=FILTER(Service Invoice));
            RequestFilterFields = "Posting Date","Location Code";
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
            {
            }
            column(Quantity_ItemLedgerEntry;"Item Ledger Entry".Quantity)
            {
            }
            column(SalesAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Sales Amount (Actual)")
            {
            }
            column(CostAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(LocationCode;"Item Ledger Entry"."Location Code")
            {
            }
            column(PostingDate_ItemLedgerEntry;"Item Ledger Entry"."Posting Date")
            {
            }
            column(ItemName_ItemLedgerEntry;"Item Ledger Entry"."Item Name")
            {
            }
            column(SalesAmountExpected_ItemLedgerEntry;"Item Ledger Entry"."Sales Amount (Expected)")
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

    var
        QuantityUsed: Decimal;
        CostAmount: Decimal;
}

