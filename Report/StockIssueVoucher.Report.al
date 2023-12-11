report 50631 "Stock Issue Voucher"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockIssueVoucher.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70034)
        {
            DataItemLink = No.=FIELD(Document No.);
            DataItemLinkReference = "Customer Order LineX";
            column(No_CustomerOrderHeaderX; "Customer Order HeaderX"."No.")
            {
            }
            column(VehicleRegistrationNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Vehicle Registration No.")
            {
            }
            column(ServiceAdvisor_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Advisor")
            {
            }
            column(ServiceAdvisorsName_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Advisor's Name")
            {
            }
        }
        dataitem(DataItem1000000005; Table70036)
        {
            DataItemTableView = WHERE (Type = CONST (Item));
            RequestFilterFields = "Document No.";
            column(No_CustomerOrderLineX; "Customer Order LineX"."No.")
            {
            }
            column(Description_CustomerOrderLineX; "Customer Order LineX".Description)
            {
            }
            column(QuantityRequested_CustomerOrderLineX; "Customer Order LineX"."Quantity Requested")
            {
            }
            column(QuantityReceived_CustomerOrderLineX; "Customer Order LineX"."Quantity Received")
            {
            }
            column(DocumentNo_CustomerOrderLineX; "Customer Order LineX"."Document No.")
            {
            }
            column(VehicleRegistrationNo_CustomerOrderLineX; "Customer Order LineX"."Vehicle Registration No.")
            {
            }
            column(ServiceAdvisorsName_CustomerOrderLineX; "Customer Order LineX"."Service Advisor's Name")
            {
            }
            column(VariantCode_CustomerOrderLineX; "Customer Order LineX"."Variant Code")
            {
            }
            column(ModelName_CustomerOrderLineX; "Customer Order LineX"."Model Name")
            {
            }
            column(ETA_CustomerOrderLineX; "Customer Order LineX".ETA)
            {
            }
            column(EDA_CustomerOrderLineX; "Customer Order LineX".EDA)
            {
            }
            column(ShipmentStatus_CustomerOrderLineX; "Customer Order LineX"."Shipment Status")
            {
            }
            column(Reason_CustomerOrderLineX; "Customer Order LineX".Reason)
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

