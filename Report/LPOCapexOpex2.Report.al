report 50446 "LPO Capex-Opex2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LPOCapexOpex2.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70010)
        {
            column(LPONo_LPO; LPO."LPO No.")
            {
            }
            column(VendorName_LPO; LPO."Vendor Name")
            {
            }
            column(Address_LPO; LPO.Address)
            {
            }
            column(Amount_LPO; LPO.Amount)
            {
            }
            column(Vatamount_LPO; LPO."Vat amount")
            {
            }
            column(Vatable_LPO; LPO.Vatable)
            {
            }
            column(Description_LPO; LPO.Description)
            {
            }
            column(PurchRequisitionNo_LPO; LPO."Purch.Requisition No")
            {
            }
            column(PaymentTerms_LPO; LPO."Payment Terms")
            {
            }
            column(VendorNo_LPO; LPO."Vendor No.")
            {
            }
            column(PurchRequisitionDate_LPO; LPO."Purch.Requisition Date")
            {
            }
            column(NoSeries_LPO; LPO."No. Series")
            {
            }
            column(CapexOpexNo_LPO; LPO."Capex-Opex No.")
            {
            }
            column(VoucherRaised_LPO; LPO."Voucher Raised")
            {
            }
            column(Quantity_LPO; LPO.Quantity)
            {
            }
            column(Paymenttermdetail_LPO; LPO."Payment term detail")
            {
            }

            trigger OnAfterGetRecord()
            begin
                //IF DimValue.GET('DEPARTMENT',"Shortcut Dimension 1 Code") THEN
                //  Department := DimValue.Name;

                //IF CapexOpexReq.GET(CapexOpexReq."Document Type","Purchase Header"."Requsition No.") THEN
                //  Requester := CapexOpexReq."Requester Name";
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
        DimValue: Record "349";
        Department: Text[50];
        CapexOpexReq: Record 70008;
        Requester: Text[60];
}

