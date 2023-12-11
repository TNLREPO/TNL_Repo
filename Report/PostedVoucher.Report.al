report 50630 "Posted Voucher"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PostedVoucher.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            RequestFilterFields = "Document No.";
            column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
            {
            }
            column(Description_ItemLedgerEntry; "Item Ledger Entry".Description)
            {
            }
            column(DocumentNo_ItemLedgerEntry; "Item Ledger Entry"."Document No.")
            {
            }
            column(InvoicedQuantity_ItemLedgerEntry; "Item Ledger Entry"."Invoiced Quantity")
            {
            }
            column(LocationCode_ItemLedgerEntry; "Item Ledger Entry"."Location Code")
            {
            }
            column(CostAmountActual_ItemLedgerEntry; "Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(SalesAmountActual_ItemLedgerEntry; "Item Ledger Entry"."Sales Amount (Actual)")
            {
            }
            column(UOM; "Item Ledger Entry"."Unit of Measure Code")
            {
            }
            column(SalesAmountExpected_ItemLedgerEntry; "Item Ledger Entry"."Sales Amount (Expected)")
            {
            }
            column(Amount; Amount)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.GET("Item No.");
                Amount := Item."Unit Price" * "Item Ledger Entry".Quantity;
            end;
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
        Item: Record 27;
        Amount: Decimal;
}

