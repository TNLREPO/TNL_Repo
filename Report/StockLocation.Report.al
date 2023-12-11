report 50400 "Stock/Location"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockLocation.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Location Code, Item No.)
                                WHERE (Inventory Posting Group=CONST(N_CARS));
            RequestFilterFields = "Location Code","Item No.";
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
            column(Item_Ledger_Entry__Location_Code_;"Location Code")
            {
            }
            column(Item_Ledger_Entry__Item_No__;"Item No.")
            {
            }
            column(Item_Ledger_Entry_Description;Description)
            {
            }
            column(Item_Ledger_Entry_Quantity;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry__Item_No___Control1000000000;"Item No.")
            {
            }
            column(Item_Ledger_Entry_Description_Control1000000007;Description)
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000010;Quantity)
            {
            }
            column(Item_Ledger_Entry__Location_Code__Control1000000011;"Location Code")
            {
            }
            column(Vehicles_Per_LocationCaption;Vehicles_Per_LocationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(Item_Ledger_Entry_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Item_Ledger_Entry_QuantityCaption;FIELDCAPTION(Quantity))
            {
            }
            column(Item_Ledger_Entry__Location_Code_Caption;FIELDCAPTION("Location Code"))
            {
            }
            column(Item_Ledger_Entry_Entry_No_;"Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Item No.");
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        Vehicles_Per_LocationCaptionLbl: Label 'Vehicles Per Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

