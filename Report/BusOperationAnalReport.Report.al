report 50635 "Bus. Operation Anal. Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './BusOperationAnalReport.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5993)
        {
            DataItemTableView = WHERE (Location Code=FILTER(150ISOLO|120ISO),
                                      Local Buys=FILTER(No),
                                      Invt. Post. Grp=FILTER(N_PARTS));
            RequestFilterFields = "Posting Date","No.",Quantity,"Unit Cost (LCY)","Unit Price",Amount,"Model Name";
            column(No_ServiceInvoiceLine;"Service Invoice Line"."No.")
            {
            }
            column(Description_ServiceInvoiceLine;"Service Invoice Line".Description)
            {
            }
            column(Quantity_ServiceInvoiceLine;"Service Invoice Line".Quantity)
            {
            }
            column(UnitPrice_ServiceInvoiceLine;"Service Invoice Line"."Unit Price")
            {
            }
            column(UnitCostLCY_ServiceInvoiceLine;"Service Invoice Line"."Unit Cost (LCY)")
            {
            }
            column(Amount_ServiceInvoiceLine;"Service Invoice Line".Amount)
            {
            }
            column(ServiceItemSerialNo_ServiceInvoiceLine;"Service Invoice Line"."Service Item Serial No.")
            {
            }
            column(PostingDate_ServiceInvoiceLine;"Service Invoice Line"."Posting Date")
            {
            }
            column(ModelNo_ServiceInvoiceLine;"Service Invoice Line"."Model No.")
            {
            }
            column(ModelName_ServiceInvoiceLine;"Service Invoice Line"."Model Name")
            {
            }
            column(VIN_ServiceInvoiceLine;"Service Invoice Line".VIN)
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

