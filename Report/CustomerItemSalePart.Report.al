report 50608 "Customer Item Sale-Part"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerItemSalePart.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table113)
        {
            DataItemTableView = WHERE (Type = CONST (Item),
                                      Inventoy Posting Group=CONST(N_PARTS));
            RequestFilterFields = "Posting Date","Sell-to Customer No.";
            column(STRSUBSTNO_Text000_PeriodText_;STRSUBSTNO(Text000,PeriodText))
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(ShipmentDate_SalesInvoiceLine;"Sales Invoice Line"."Shipment Date")
            {
            }
            column(SelltoCustomerNo_SalesInvoiceLine;"Sales Invoice Line"."Sell-to Customer No.")
            {
            }
            column(No_SalesInvoiceLine;"Sales Invoice Line"."No.")
            {
            }
            column(Description_SalesInvoiceLine;"Sales Invoice Line".Description)
            {
            }
            column(QtyDemanded_SalesInvoiceLine;"Sales Invoice Line"."Qty. Demanded")
            {
            }
            column(Quantity_SalesInvoiceLine;"Sales Invoice Line".Quantity)
            {
            }
            column(UnitPrice_SalesInvoiceLine;"Sales Invoice Line"."Unit Price")
            {
            }
            column(UnitCostLCY_SalesInvoiceLine;"Sales Invoice Line"."Unit Cost (LCY)")
            {
            }
            column(LineDiscountAmount_SalesInvoiceLine;"Sales Invoice Line"."Line Discount Amount")
            {
            }
            column(Amount_SalesInvoiceLine;"Sales Invoice Line".Amount)
            {
            }
            column(QuantityDemanded_SalesInvoiceLine;"Sales Invoice Line"."Quantity Demanded")
            {
            }
            column(PostingDate_SalesInvoiceLine;"Sales Invoice Line"."Posting Date")
            {
            }
            column(ProdGrpCode_SalesInvoiceLine;"Sales Invoice Line"."Prod. Grp. Code")
            {
            }
            column(ProdCode_SalesInvoiceLine;"Sales Invoice Line"."Prod. Code")
            {
            }
            column(CustomerName_SalesInvoiceLine;"Sales Invoice Line"."Customer Name")
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
        Text000: Label 'Period: %1';
        PeriodText: Text[30];
}

