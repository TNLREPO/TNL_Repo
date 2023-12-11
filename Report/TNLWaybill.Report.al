report 50210 "TNL Waybill"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TNLWaybill.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table114)
        {
            column(No_SalesCrMemoHeader; "Sales Cr.Memo Header"."No.")
            {
            }
            column(SelltoCustomerName_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Customer Name")
            {
            }
            column(SelltoCustomerName2_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Customer Name 2")
            {
            }
            column(SelltoAddress_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Address")
            {
            }
            column(SelltoAddress2_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Address 2")
            {
            }
            column(SelltoCity_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to City")
            {
            }
            column(SelltoCustomerNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Customer No.")
            {
            }
            column(AppliestoDocNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Applies-to Doc. No.")
            {
            }
            column(YourReference_SalesCrMemoHeader; "Sales Cr.Memo Header"."Your Reference")
            {
            }
            column(PostingDate_SalesCrMemoHeader; "Sales Cr.Memo Header"."Posting Date")
            {
            }
            column(AmountIncludingVAT_SalesCrMemoHeader; "Sales Cr.Memo Header"."Amount Including VAT")
            {
            }
            column(Amount_SalesCrMemoHeader; "Sales Cr.Memo Header".Amount)
            {
            }
            dataitem(DataItem1000000011; Table115)
            {
                DataItemLink = Document No.=FIELD(No.);
                column(LineAmount_SalesCrMemoLine; "Sales Cr.Memo Line"."Line Amount")
                {
                }
                column(Quantity_SalesCrMemoLine; "Sales Cr.Memo Line".Quantity)
                {
                }
                column(UnitPrice_SalesCrMemoLine; "Sales Cr.Memo Line"."Unit Price")
                {
                }
                column(No_SalesCrMemoLine; "Sales Cr.Memo Line"."No.")
                {
                }
                column(Description_SalesCrMemoLine; "Sales Cr.Memo Line".Description)
                {
                }
                column(LineDiscount_SalesCrMemoLine; "Sales Cr.Memo Line"."Line Discount %")
                {
                }
            }
            dataitem(DataItem1000000020; Table32)
            {
                DataItemLink = Document No.=FIELD(No.);
                DataItemTableView = WHERE (Document Type=CONST(Sales Return Receipt),
                                          Entry Type=CONST(Sale),
                                          Positive=CONST(Yes));
                column(SerialNo_ItemLedgerEntry; "Item Ledger Entry"."Serial No.")
                {
                }
                column(ExteriorColourName_ItemLedgerEntry; "Item Ledger Entry"."Exterior Colour Name")
                {
                }
                column(EngineNo_ItemLedgerEntry; "Item Ledger Entry"."Engine No.")
                {
                }
                column(KeyNo_ItemLedgerEntry; "Item Ledger Entry"."Key No.")
                {
                }
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
        CustAddr: array[8] of Text[50];
        GPC: Codeunit 50004;
        SalesPerson: Record "13";
}

