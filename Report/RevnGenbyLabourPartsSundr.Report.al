report 50093 "Revn Gen by Labour/Parts/Sundr"
{
    DefaultLayout = RDLC;
    RDLCLayout = './RevnGenbyLabourPartsSundr.rdlc';

    dataset
    {
        dataitem(DataItem1; Table5993)
        {
            RequestFilterFields = "Posting Date";
            column(DocumentNo_ServiceInvoiceLine; "Service Invoice Line"."Document No.")
            {
            }
            column(Type_ServiceInvoiceLine; "Service Invoice Line".Type)
            {
            }
            column(No_ServiceInvoiceLine; "Service Invoice Line"."No.")
            {
            }
            column(Amount_ServiceInvoiceLine; "Service Invoice Line".Amount)
            {
            }
            column(AmountIncludingVAT_ServiceInvoiceLine; "Service Invoice Line"."Amount Including VAT")
            {
            }
            column(LineDiscountAmount_ServiceInvoiceLine; "Service Invoice Line"."Line Discount Amount")
            {
            }
            column(PostingDate_ServiceInvoiceLine; "Service Invoice Line"."Posting Date")
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
        "Posting Date": Date;
        ServiceInvoiceHeader: Record "5992";
}

