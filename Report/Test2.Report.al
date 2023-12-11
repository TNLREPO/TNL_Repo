report 50392 Test2
{
    DefaultLayout = RDLC;
    RDLCLayout = './Test2.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Location Code, Item No.)
                                WHERE (Inventory Posting Group=FILTER(N_CARS));
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
            column(Item_Ledger_Entry_Quantity;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000023;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000024;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry__Item_No___Control1000000000;"Item No.")
            {
            }
            column(TotalFor___FIELDCAPTION__Location_Code__;TotalFor + FIELDCAPTION("Location Code"))
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000026;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000027;"Cost Amount (Actual)")
            {
            }
            column(Inventory_LocationCaption;Inventory_LocationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(Item_Ledger_Entry_QuantityCaption;FIELDCAPTION(Quantity))
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__Caption;FIELDCAPTION("Cost Amount (Actual)"))
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
        TotalFor: Label 'Total for ';
        Inventory_LocationCaptionLbl: Label 'Inventory/Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

