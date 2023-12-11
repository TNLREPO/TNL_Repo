report 50394 "Promo Sales"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PromoSales.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (No.)
                                WHERE (Promo = CONST (Yes));
            RequestFilterFields = "Date Filter";
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
            column(Item_GETFILTERS; Item.GETFILTERS)
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Model_No__; "Model No.")
            {
            }
            column(Item__Model_Name_; "Model Name")
            {
            }
            column(Item__Sales__Qty___; "Sales (Qty.)")
            {
            }
            column(Item__Sales__LCY__; "Sales (LCY)")
            {
            }
            column(Item__Sales__LCY___Control1000000007; "Sales (LCY)")
            {
            }
            column(Item__Sales__Qty____Control1000000010; "Sales (Qty.)")
            {
            }
            column(Promo_SalesCaption; Promo_SalesCaptionLbl)
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
            column(Item__Model_No__Caption; FIELDCAPTION("Model No."))
            {
            }
            column(Item__Model_Name_Caption; FIELDCAPTION("Model Name"))
            {
            }
            column(Item__Sales__Qty___Caption; FIELDCAPTION("Sales (Qty.)"))
            {
            }
            column(Item__Sales__LCY__Caption; FIELDCAPTION("Sales (LCY)"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CALCFIELDS("Sales (Qty.)");
                IF Item."Sales (Qty.)" = 0 THEN
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
        Promo_SalesCaptionLbl: Label 'Promo Sales';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

