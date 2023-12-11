report 50637 "TCSC Posted Job"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TCSCPostedJob.rdlc';

    dataset
    {
        dataitem(DataItem1; Table5993)
        {
            column(CustomerNo_ServiceInvoiceLine; "Service Invoice Line"."Customer No.")
            {
            }
            column(DocumentNo_ServiceInvoiceLine; "Service Invoice Line"."Document No.")
            {
            }
            column(LineNo_ServiceInvoiceLine; "Service Invoice Line"."Line No.")
            {
            }
            column(Type_ServiceInvoiceLine; "Service Invoice Line".Type)
            {
            }
            column(No_ServiceInvoiceLine; "Service Invoice Line"."No.")
            {
            }
            column(LocationCode_ServiceInvoiceLine; "Service Invoice Line"."Location Code")
            {
            }
            column(Description_ServiceInvoiceLine; "Service Invoice Line".Description)
            {
            }
            column(UnitofMeasure_ServiceInvoiceLine; "Service Invoice Line"."Unit of Measure")
            {
            }
            column(Quantity_ServiceInvoiceLine; "Service Invoice Line".Quantity)
            {
            }
            column(UnitPrice_ServiceInvoiceLine; "Service Invoice Line"."Unit Price")
            {
            }
            column(Amount_ServiceInvoiceLine; "Service Invoice Line".Amount)
            {
            }
            column(AmountIncludingVAT_ServiceInvoiceLine; "Service Invoice Line"."Amount Including VAT")
            {
            }
            column(PostingDate_ServiceInvoiceLine; "Service Invoice Line"."Posting Date")
            {
            }
            column(CustomerName_ServiceInvoiceLine; "Service Invoice Line"."Customer Name")
            {
            }
            column(CustomerOrderNo_ServiceInvoiceLine; "Service Invoice Line"."Customer Order No.")
            {
            }
            column(RegistrationNo_ServiceInvoiceLine; "Service Invoice Line"."Registration No.")
            {
            }
            column(ModelNo_ServiceInvoiceLine; "Service Invoice Line"."Model No.")
            {
            }
            column(ModelName_ServiceInvoiceLine; "Service Invoice Line"."Model Name")
            {
            }
            column(JobType_ServiceInvoiceLine; "Service Invoice Line"."Job Type")
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

