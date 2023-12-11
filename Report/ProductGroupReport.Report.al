report 50098 "Product Group Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ProductGroupReport.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = SORTING (Source No.)
                                WHERE (Entry Type=CONST(Sale),
                                      Inventory Posting Group=FILTER(N_PARTS|ACCESSORY));
            RequestFilterFields = "Product Group Code","Posting Date","Source No.";
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

