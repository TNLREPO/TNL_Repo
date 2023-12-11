report 50632 "B&P Materials"
{
    DefaultLayout = RDLC;
    RDLCLayout = './BPMaterials.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5902)
        {
            DataItemTableView = WHERE (Location Code=CONST(131PWISOLO));
            RequestFilterFields = "Document No.";
            column(CustomerNo_ServiceLine; "Service Line"."Customer No.")
            {
            }
            column(DocumentNo_ServiceLine; "Service Line"."Document No.")
            {
            }
            column(ServiceItemNo_ServiceLine; "Service Line"."Service Item No.")
            {
            }
            column(Description_ServiceLine; "Service Line".Description)
            {
            }
            column(Type_ServiceLine; "Service Line".Type)
            {
            }
            column(No_ServiceLine; "Service Line"."No.")
            {
            }
            column(LocationCode_ServiceLine; "Service Line"."Location Code")
            {
            }
            column(Quantity_ServiceLine; "Service Line".Quantity)
            {
            }
            column(UnitofMeasure_ServiceLine; "Service Line"."Unit of Measure")
            {
            }
            column(UnitPrice_ServiceLine; "Service Line"."Unit Price")
            {
            }
            column(LineAmount_ServiceLine; "Service Line"."Line Amount")
            {
            }
            column(VAT_ServiceLine; "Service Line"."VAT %")
            {
            }
            column(QtytoShip_ServiceLine; "Service Line"."Qty. to Ship")
            {
            }
            column(QtytoInvoice_ServiceLine; "Service Line"."Qty. to Invoice")
            {
            }
            column(QuantityShipped_ServiceLine; "Service Line"."Quantity Shipped")
            {
            }
            column(QuantityInvoiced_ServiceLine; "Service Line"."Quantity Invoiced")
            {
            }
            column(VATBaseAmount_ServiceLine; "Service Line"."VAT Base Amount")
            {
            }
            column(VATBusPostingGroup_ServiceLine; "Service Line"."VAT Bus. Posting Group")
            {
            }
            column(VATProdPostingGroup_ServiceLine; "Service Line"."VAT Prod. Posting Group")
            {
            }
            column(VariantCode_ServiceLine; "Service Line"."Variant Code")
            {
            }
            column(AmountIncludingVAT_ServiceLine; "Service Line"."Amount Including VAT")
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

