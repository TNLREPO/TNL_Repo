report 50627 "Part Sales To Dealers"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PartSalesToDealers.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = WHERE (Entry Type=FILTER(Sale),
                                      Inventory Posting Group=FILTER(N_PARTS));
            RequestFilterFields = "Posting Date","Source Type","Source No.","Location Code";
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
            {
            }
            column(PostingDate_ItemLedgerEntry;"Item Ledger Entry"."Posting Date")
            {
            }
            column(Description_ItemLedgerEntry;"Item Ledger Entry".Description)
            {
            }
            column(InvoicedQuantity_ItemLedgerEntry;"Item Ledger Entry"."Invoiced Quantity")
            {
            }
            column(TNLSellingPricetoTCSC_ItemLedgerEntry;"Item Ledger Entry"."TNL Selling Price to TCSC")
            {
            }
            column(DocumentNo_ItemLedgerEntry;"Item Ledger Entry"."Document No.")
            {
            }
            column(LocationCode_ItemLedgerEntry;"Item Ledger Entry"."Location Code")
            {
            }
            column(CostAmount;"Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(SourceNo_ItemLedgerEntry;"Item Ledger Entry"."Source No.")
            {
            }
            column(SalesAmountActual_ItemLedgerEntry;"Item Ledger Entry"."Sales Amount (Actual)")
            {
            }
            column(CustomerName_ItemLedgerEntry;"Item Ledger Entry"."Customer Name")
            {
            }
            dataitem(DataItem1000000006;Table27)
            {
                DataItemLink = No.=FIELD(Item No.);
                column(TNLSellingPricetoTCSC_Item;Item."TNL Selling Price to TCSC")
                {
                }
                column(UnitCost_Item;Item."Unit Cost")
                {
                }
                column(UnitPrice_Item;Item."Unit Price")
                {
                }
            }
            dataitem(DataItem1000000014;Table113)
            {
                DataItemLink = Document No.=FIELD(Document No.);
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

