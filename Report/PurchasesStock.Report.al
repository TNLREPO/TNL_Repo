report 50249 "Purchases Stock"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchasesStock.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (No.);
            RequestFilterFields = "Date Filter", "Inventory Posting Group";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Purchases__Qty___; "Purchases (Qty.)")
            {
            }
            column(Item__Purchases__LCY__; "Purchases (LCY)")
            {
            }
            column(Item__Purchases__LCY___Control1000000000; "Purchases (LCY)")
            {
            }
            column(Item__Purchases__Qty____Control1000000007; "Purchases (Qty.)")
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Item_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Item__Purchases__Qty___Caption; FIELDCAPTION("Purchases (Qty.)"))
            {
            }
            column(Item__Purchases__LCY__Caption; FIELDCAPTION("Purchases (LCY)"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Item."Purchases (Qty.)" = 0 THEN
                    CurrReport.SKIP;
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
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

