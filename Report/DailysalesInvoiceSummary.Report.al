report 50612 "Daily sales Invoice Summary"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DailysalesInvoiceSummary.rdlc';
    Caption = 'Daily sales Invoice Summary';

    dataset
    {
        dataitem(DataItem1000000000; Table112)
        {
            DataItemTableView = WHERE (Bill-to Customer No.=FILTER(TDP00000..TDP99999|TCO00000..TCO99999));
            RequestFilterFields = "Posting Date";
            column(No_SalesInvoiceHeader;"Sales Invoice Header"."No.")
            {
            }
            column(BilltoCustomerNo_SalesInvoiceHeader;"Sales Invoice Header"."Bill-to Customer No.")
            {
            }
            column(BilltoName_SalesInvoiceHeader;"Sales Invoice Header"."Bill-to Name")
            {
            }
            column(BilltoAddress2_SalesInvoiceHeader;"Sales Invoice Header"."Bill-to Address 2")
            {
            }
            column(AmountIncludingVAT_SalesInvoiceHeader;"Sales Invoice Header"."Amount Including VAT")
            {
            }
        }
    }

    requestpage
    {
        SaveValues = true;

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
        SalesInvoiceHeader: Record "112";
        SalesInvoiceLine: Record "113";
        startdate: Date;
        enddate: Date;
}

