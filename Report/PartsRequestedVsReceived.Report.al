report 50159 "Parts Requested Vs Received"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PartsRequestedVsReceived.rdlc';

    dataset
    {
        dataitem(DataItem1; Table70036)
        {
            DataItemTableView = WHERE (Type = CONST (Item));
            column(DocumentNo_CustomerOrderLine; "Customer Order LineX"."Document No.")
            {
            }
            column(No_CustomerOrderLine; "Customer Order LineX"."No.")
            {
            }
            column(Description_CustomerOrderLine; "Customer Order LineX".Description)
            {
            }
            column(LocationCode_CustomerOrderLine; "Customer Order LineX"."Location Code")
            {
            }
            column(QuantityAvailable_CustomerOrderLine; "Customer Order LineX"."Quantity Available")
            {
            }
            column(QuantityRequested_CustomerOrderLine; "Customer Order LineX"."Quantity Requested")
            {
            }
            column(QuantityReceived_CustomerOrderLine; "Customer Order LineX"."Quantity Received")
            {
            }
            column(QuantityOutstanding_CustomerOrderLine; "Customer Order LineX"."Quantity Outstanding")
            {
            }
            column(StockStatus_CustomerOrderLineX; "Customer Order LineX"."Stock Status")
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

