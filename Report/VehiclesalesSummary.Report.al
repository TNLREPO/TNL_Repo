report 50603 "Vehicle sales Summary"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VehiclesalesSummary.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = SORTING (Item No.)
                                WHERE (Entry Type=FILTER(Sale),
                                      Inventory Posting Group=FILTER(N_CARS|SPV|PRE-OWNED));
            RequestFilterFields = "Posting Date","Item No.";
            column(Description_ItemLedgerEntry;"Item Ledger Entry".Description)
            {
            }
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
            {
            }
            column(InvoicedQuantity_ItemLedgerEntry;"Item Ledger Entry"."Invoiced Quantity")
            {
            }
            column(PostingDate_ItemLedgerEntry;"Item Ledger Entry"."Posting Date")
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

