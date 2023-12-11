report 50430 "ProductGroup By Warranty"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ProductGroupByWarranty.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = WHERE (Entry Type=CONST(Negative Adjmt.),
                                      Inventory Posting Group=FILTER(N_PARTS),
                                      Document No.=FILTER(TVPC*));
            column(ProductGroupCode_ItemLedgerEntry;"Item Ledger Entry"."Product Group Code")
            {
            }
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
            {
            }
            column(PostingDate_ItemLedgerEntry;"Item Ledger Entry"."Posting Date")
            {
            }
            column(InvoicedQuantity_ItemLedgerEntry;"Item Ledger Entry"."Invoiced Quantity")
            {
            }
            column(SalesAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Sales Amount (Actual)")
            {
            }
            column(CostAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(PostingDate;"Item Ledger Entry"."Posting Date")
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

