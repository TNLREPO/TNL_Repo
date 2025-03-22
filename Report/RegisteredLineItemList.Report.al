report 50082 "Registered Line Item List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './RegisteredLineItemList.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            CalcFields = Net Change;
            DataItemTableView = SORTING (No.);
            RequestFilterFields = "Inventory Posting Group", "Creation Date";
            RequestFilterHeading = 'Filter';
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
            column(Showfilter; Showfilter)
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Creation_Date_; "Creation Date")
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(SNQ; SNQ)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SN; SN)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SO; SO)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SNH; SNH)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SNO; SNO)
            {
                DecimalPlaces = 0 : 0;
            }
            column(List_of_Registered_Line_ItemsCaption; List_of_Registered_Line_ItemsCaptionLbl)
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
            column(Item__Creation_Date_Caption; FIELDCAPTION("Creation Date"))
            {
            }
            column(Item_InventoryCaption; Item_InventoryCaptionLbl)
            {
            }
            column(SNQCaption; SNQCaptionLbl)
            {
            }
            column(SNCaption; SNCaptionLbl)
            {
            }
            column(Total_Registered_With_Nil_Stock_On_hand_and_Nil_Stock_On_OrderCaption; Total_Registered_With_Nil_Stock_On_hand_and_Nil_Stock_On_OrderCaptionLbl)
            {
            }
            column(SOCaption; SOCaptionLbl)
            {
            }
            column(SNOCaption; SNOCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CALCFIELDS(Item."Qty. on Purch. Order");
                SN := 1;
                IF Item.Inventory > 0 THEN
                    SNQ := 1
                ELSE
                    SNQ := 0;
                IF (Item.Inventory = 0) AND (Item."Qty. on Purch. Order" = 0) THEN
                    SNH := 1
                ELSE
                    SNH := 0;
                IF (Item.Inventory = 0) AND (Item."Qty. on Purch. Order" > 0) THEN
                    SNO := 1
                ELSE
                    SNO := 0;

                IF Item."Qty. on Purch. Order" > 0 THEN
                    SO := 1
                ELSE
                    SO := 0;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS(SN, SNQ, SO, SNH, SNO);
                //SN := 0;
                SNQ := 0;

                Showfilter := Item.GETFILTERS;
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
        SN: Decimal;
        SNQ: Decimal;
        Showdet: Boolean;
        Showfilter: Text[100];
        SO: Decimal;
        SNH: Decimal;
        SNO: Decimal;
        List_of_Registered_Line_ItemsCaptionLbl: Label 'List of Registered Line Items';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Item_InventoryCaptionLbl: Label 'Inventory';
        SNQCaptionLbl: Label 'Total Registered With Stock On Hand';
        SNCaptionLbl: Label 'Total Registered Line Item';
        Total_Registered_With_Nil_Stock_On_hand_and_Nil_Stock_On_OrderCaptionLbl: Label 'Total Registered With Nil Stock On hand and Nil Stock On Order';
        SOCaptionLbl: Label 'Total  Registered With Stock On Order';
        SNOCaptionLbl: Label 'Total Registered with Nil Stock On Hand But On Order';
}

