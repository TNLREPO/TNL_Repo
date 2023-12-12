report 50423 "LPO Capex-Opex"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LPOCapexOpex.rdlc';

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
            column(ShiptoName_PurchaseHeader; "Purchase Header"."Ship-to Name")
            {
            }
            column(ExpectedReceiptDate_PurchaseHeader; "Purchase Header"."Expected Receipt Date")
            {
            }
            column(Validity_PurchaseHeader; "Purchase Header".Validity)
            {
            }
            column(OtherInstructions_PurchaseHeader; "Purchase Header"."Other Instructions")
            {
            }
            column(RequisitionNo_PurchaseHeader; "Purchase Header"."Requsition No.")
            {
            }
            column(RequisitionDate_PurchaseHeader; "Purchase Header"."Requisition Date")
            {
            }
            column(Department; Department)
            {
            }
            column(Requester; Requester)
            {
            }
            column(AmountIncludingVAT_PurchaseHeader; "Purchase Header"."Amount Including VAT")
            {
            }
            column(Amount_PurchaseHeader; "Purchase Header".Amount)
            {
            }
            column(PaymentTerm_PurchaseHeader; "Purchase Header"."Payment Term")
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
                column(UnitPriceLCY_PurchaseLine; "Purchase Line"."Unit Price (LCY)")
                {
                }
                column(Amount_PurchaseLine; "Purchase Line".Amount)
                {
                }
                column(UnitCostLCY_PurchaseLine; "Purchase Line"."Unit Cost (LCY)")
                {
                }
                column(VATBaseAmount_PurchaseLine; "Purchase Line"."VAT Base Amount")
                {
                }
                column(VAT_PurchaseLine; "Purchase Line"."VAT %")
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                IF DimValue.GET('DEPARTMENT', "Shortcut Dimension 1 Code") THEN
                    Department := DimValue.Name;

                IF CapexOpexReq.GET(CapexOpexReq."Document Type", "Purchase Header"."Requsition No.") THEN
                    Requester := CapexOpexReq."Requester Name";
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

