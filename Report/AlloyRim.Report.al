report 50385 "Alloy Rim"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AlloyRim.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50101)
        {
            column(No_StoresRequisitionHeader; "Stores Requisition Header."."No.")
            {
            }
            column(DealerName_StoresRequisitionHeader; "Stores Requisition Header."."Dealer Name")
            {
            }
            column(WaybillDate_StoresRequisitionHeader; "Stores Requisition Header."."Waybill Date")
            {
            }
            column(WaybillNo_StoresRequisitionHeader; "Stores Requisition Header."."Waybill No.")
            {
            }
            column(Description_StoresRequisitionHeader; "Stores Requisition Header.".Description)
            {
            }
            column(Description2_StoresRequisitionHeader; "Stores Requisition Header.".Description2)
            {
            }
            dataitem(DataItem1000000005; Table50102)
            {
                column(Quantity_StoresReqLine; "Stores Req. Line.".Quantity)
                {
                }
                column(QuantityRequested_StoresReqLine; "Stores Req. Line."."Quantity Requested")
                {
                }
                column(Qty; Qty)
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                IF StoreReqLine.GET(StoreReqLine."Document Type"::Issue, "No.", 10000) THEN
                    Qty := StoreReqLine.Quantity;
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
        Descr1: Text[100];
        Descr2: Text[100];
        StoreReqHead: Record "50101";
        StoreReqLine: Record "50102";
        Qty: Decimal;
}

