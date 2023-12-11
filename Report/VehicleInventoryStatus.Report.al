report 50248 "Vehicle Inventory Status"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VehicleInventoryStatus.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (No.)
                                WHERE (Inventory Posting Group=FILTER(N_CARS));
            RequestFilterFields = "Date Filter";
            column(FORMAT_TODAY_0_4_;FORMAT(TODAY,0,4))
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(USERID;USERID)
            {
            }
            column(Item__No__;"No.")
            {
            }
            column(Item_Description;Description)
            {
            }
            column(Item__Purchases__Qty___;"Purchases (Qty.)")
            {
            }
            column(Item__Sales__Qty___;"Sales (Qty.)")
            {
            }
            column(Item__Positive_Adjmt___Qty___;"Positive Adjmt. (Qty.)")
            {
            }
            column(Item__Negative_Adjmt___Qty___;"Negative Adjmt. (Qty.)")
            {
            }
            column(Item__Net_Change_;"Net Change")
            {
            }
            column(Item__Net_Change__Control1000000000;"Net Change")
            {
            }
            column(Item__Negative_Adjmt___Qty____Control1000000007;"Negative Adjmt. (Qty.)")
            {
            }
            column(Item__Positive_Adjmt___Qty____Control1000000010;"Positive Adjmt. (Qty.)")
            {
            }
            column(Item__Sales__Qty____Control1000000013;"Sales (Qty.)")
            {
            }
            column(Item__Purchases__Qty____Control1000000016;"Purchases (Qty.)")
            {
            }
            column(ItemCaption;ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption;FIELDCAPTION("No."))
            {
            }
            column(Item_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Item__Purchases__Qty___Caption;FIELDCAPTION("Purchases (Qty.)"))
            {
            }
            column(Item__Sales__Qty___Caption;FIELDCAPTION("Sales (Qty.)"))
            {
            }
            column(Item__Positive_Adjmt___Qty___Caption;FIELDCAPTION("Positive Adjmt. (Qty.)"))
            {
            }
            column(Item__Negative_Adjmt___Qty___Caption;FIELDCAPTION("Negative Adjmt. (Qty.)"))
            {
            }
            column(Item__Net_Change_Caption;FIELDCAPTION("Net Change"))
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

    var
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

