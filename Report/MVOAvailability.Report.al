report 50243 "MVO Availability"
{
    DefaultLayout = RDLC;
    RDLCLayout = './MVOAvailability.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Item No., Serial No., Posting Date)
                                WHERE (Inventory Posting Group=CONST(N_CARS));
            RequestFilterFields = "Item No.","Serial No.","Posting Date","Location Code";
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
            column(Item_Ledger_Entry_Quantity;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry_Description;Description)
            {
            }
            column(Item_Ledger_Entry__Item_No__;"Item No.")
            {
            }
            column(Item_Ledger_Entry__Serial_No__;"Serial No.")
            {
            }
            column(Total________Item_No__;'Total  '  + "Item No.")
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000041;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000042;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry_Description_Control1000000007;Description)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000008;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000009;Quantity)
            {
            }
            column(Item_Ledger_EntryCaption;Item_Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(DescriptionCaption;DescriptionCaptionLbl)
            {
            }
            column(QuantityCaption;QuantityCaptionLbl)
            {
            }
            column(Cost_AmountCaption;Cost_AmountCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Serial_No__Caption;FIELDCAPTION("Serial No."))
            {
            }
            column(Item_Ledger_Entry_Entry_No_;"Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Serial No.");
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
        Item_Ledger_EntryCaptionLbl: Label 'Item Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DescriptionCaptionLbl: Label 'Description';
        QuantityCaptionLbl: Label 'Quantity';
        Cost_AmountCaptionLbl: Label 'Cost Amount';
}

