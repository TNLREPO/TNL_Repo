report 50424 "LPO Capex-Opex-Internal"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LPOCapexOpexInternal.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table38)
        {
            column(BuyfromVendorNo_PurchaseHeader; "Purchase Header"."Buy-from Vendor No.")
            {
            }
            column(BuyfromVendorName_PurchaseHeader; "Purchase Header"."Buy-from Vendor Name")
            {
            }
            column(BuyfromAddress_PurchaseHeader; "Purchase Header"."Buy-from Address")
            {
            }
            column(ShortcutDimension1Code_PurchaseHeader; "Purchase Header"."Shortcut Dimension 1 Code")
            {
            }
            column(DocumentDate_PurchaseHeader; "Purchase Header"."Document Date")
            {
            }
            column(No_PurchaseHeader; "Purchase Header"."No.")
            {
            }
            dataitem(DataItem1000000005; Table39)
            {
                DataItemLink = Document No.=FIELD(No.);
                column(No_PurchaseLine; "Purchase Line"."No.")
                {
                }
                column(Description_PurchaseLine; "Purchase Line".Description)
                {
                }
                column(Quantity_PurchaseLine; "Purchase Line".Quantity)
                {
                }
                column(Amount_PurchaseLine; "Purchase Line".Amount)
                {
                }
                column(UnitCostLCY_PurchaseLine; "Purchase Line"."Unit Cost (LCY)")
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

