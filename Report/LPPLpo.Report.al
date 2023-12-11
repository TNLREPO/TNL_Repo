report 50611 "LPP Lpo"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LPPLpo.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70018)
        {
            column(LPPNo_LocalPartPurchaseRegister; "Local Part Purchase Register"."LPP No.")
            {
            }
            column(RequesterCode_LocalPartPurchaseRegister; "Local Part Purchase Register"."Requester Code")
            {
            }
            column(RequesterName_LocalPartPurchaseRegister; "Local Part Purchase Register"."Requester Name")
            {
            }
            column(DepartmentCode_LocalPartPurchaseRegister; "Local Part Purchase Register"."Department Code")
            {
            }
            column(RequesterDepartment_LocalPartPurchaseRegister; "Local Part Purchase Register"."Requester Department")
            {
            }
            column(Date_LocalPartPurchaseRegister; "Local Part Purchase Register".Date)
            {
            }
            column(SuppliersAddress_LocalPartPurchaseRegister; "Local Part Purchase Register"."Supplier's Address")
            {
            }
            column(SuppliersName_LocalPartPurchaseRegister; "Local Part Purchase Register"."Supplier's Name")
            {
            }
            column(ProfomaInvoiceNo_LocalPartPurchaseRegister; "Local Part Purchase Register"."Profoma Invoice No:")
            {
            }
            column(Justificationforpurchase_LocalPartPurchaseRegister; "Local Part Purchase Register"."Justification for purchase")
            {
            }
            column(TotalPurchaseValue_LocalPartPurchaseRegister; "Local Part Purchase Register"."Total Purchase Value")
            {
            }
            column(OrderType_LocalPartPurchaseRegister; "Local Part Purchase Register"."Order Type")
            {
            }
            dataitem(DataItem1000000001; Table70019)
            {
                DataItemLink = Document No.=FIELD(LPP No.);
                column(DocumentNo_LPPLine; "LPP Line"."Document No.")
                {
                }
                column(OrderType_LPPLine; "LPP Line"."Order Type")
                {
                }
                column(ItemNo_LPPLine; "LPP Line"."Item No")
                {
                }
                column(ItemName_LPPLine; "LPP Line"."Item Name")
                {
                }
                column(Quantity_LPPLine; "LPP Line".Quantity)
                {
                }
                column(UnitCost_LPPLine; "LPP Line"."Unit Cost")
                {
                }
                column(Amount_LPPLine; "LPP Line".Amount)
                {
                }
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

