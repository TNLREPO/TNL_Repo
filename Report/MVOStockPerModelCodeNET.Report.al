report 50084 "MVO Stock Per Model Code NET"
{
    DefaultLayout = RDLC;
    RDLCLayout = './MVOStockPerModelCodeNET.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            CalcFields = Cost Amount (Actual);
            DataItemTableView = SORTING (Item No., Entry Type, Entry No., Variant Code, Drop Shipment, Location Code, Posting Date, Serial No.)
                                WHERE (Entry Type=FILTER(Purchase|Positive Adjmt.));
            RequestFilterFields = "Item No.","Posting Date","Location Code","External Document No.";
            RequestFilterHeading = 'MVO Filter';
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
            column(Filter_______GETFILTERS;'Filter : ' + GETFILTERS)
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
            column(Item_Ledger_Entry__Serial_No__;"Serial No.")
            {
            }
            column(Item_Ledger_Entry__Engine_No__;"Engine No.")
            {
            }
            column(Item_Ledger_Entry__Exterior_Colour_Name_;"Exterior Colour Name")
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual__;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry__External_Document_No__;"External Document No.")
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000009;Quantity)
            {
            }
            column(Item_Ledger_Entry__Serial_No___Control1000000010;"Serial No.")
            {
            }
            column(Item_Ledger_Entry__Engine_No___Control1000000013;"Engine No.")
            {
            }
            column(Item_Ledger_Entry__Exterior_Colour_Name__Control1000000016;"Exterior Colour Name")
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000019;"Cost Amount (Actual)")
            {
            }
            column(Item_Ledger_Entry__External_Document_No___Control1000000038;"External Document No.")
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000029;Quantity)
            {
            }
            column(Item_Ledger_Entry__Cost_Amount__Actual___Control1000000030;"Cost Amount (Actual)")
            {
            }
            column(AvgCost;AvgCost)
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000032;Quantity)
            {
            }
            column(TCost;TCost)
            {
            }
            column(Inventory_Position_ReportCaption;Inventory_Position_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(DescriptionCaption;DescriptionCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(UnitsCaption;UnitsCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Serial_No__Caption;FIELDCAPTION("Serial No."))
            {
            }
            column(Item_Ledger_Entry__Engine_No__Caption;FIELDCAPTION("Engine No."))
            {
            }
            column(Item_Ledger_Entry__Exterior_Colour_Name_Caption;Item_Ledger_Entry__Exterior_Colour_Name_CaptionLbl)
            {
            }
            column(Unit_CostCaption;Unit_CostCaptionLbl)
            {
            }
            column(LC_NumberCaption;LC_NumberCaptionLbl)
            {
            }
            column(Average_CostCaption;Average_CostCaptionLbl)
            {
            }
            column(Item_Ledger_Entry_Entry_No_;"Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                //ColourDesc := ColourRec.GetColour("Stockkeeping Unit"."Product Group Code","Stockkeeping Unit".Colour);
                ItemRec.GET("Item Ledger Entry"."Item No.");
                IF ItemRec."Inventory Posting Group" <> 'N_CARS' THEN
                  CurrReport.SKIP;

                ItemLedgEntry.SETCURRENTKEY("Item No.","Entry Type","Entry No.","Variant Code","Drop Shipment","Location Code","Posting Date",
                                             "Serial No.");
                //ItemLedgEntry.SETCURRENTKEY("Entry Type","Posting Date","Serial No.",Open,Positive);
                ItemLedgEntry.SETFILTER("Entry Type",'%1|%2',ItemLedgEntry."Entry Type"::Sale,ItemLedgEntry."Entry Type"::"Negative Adjmt.");
                ItemLedgEntry.SETFILTER("Posting Date",'%1..%2',0D,TODAY);
                ItemLedgEntry.SETRANGE(ItemLedgEntry."Serial No.","Item Ledger Entry"."Serial No.");
                IF ItemLedgEntry.FINDLAST THEN BEGIN
                  IF (ItemLedgEntry."Posting Date" IN [0D..EndDate]) AND
                         (ItemLedgEntry."Document Type" <> ItemLedgEntry."Document Type"::"Sales Return Receipt") THEN
                    CurrReport.SKIP;
                END;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Item No.");

                CurrReport.CREATETOTALS("Cost Amount (Actual)",UCost,TCost);

                EndDate := GETRANGEMAX("Posting Date");
                "Item Ledger Entry".SETFILTER("Posting Date",'%1..%2',0D,EndDate);
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

    trigger OnPreReport()
    begin
        IF "Item Ledger Entry".GETFILTER("Item Ledger Entry"."Posting Date") = '' THEN
          ERROR('Please specify Posting Date filter!!');
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        ColourDesc: Text[30];
        ItemRec: Record "27";
        ItemLedgEntry: Record "32";
        ShowZeroInventory: Boolean;
        ColourRec: Record "50067";
        UCost: Decimal;
        AvgCost: Decimal;
        TCost: Decimal;
        EndDate: Date;
        Inventory_Position_ReportCaptionLbl: Label 'Inventory Position Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        DescriptionCaptionLbl: Label 'Description';
        UnitsCaptionLbl: Label 'Units';
        Item_Ledger_Entry__Exterior_Colour_Name_CaptionLbl: Label 'Colour';
        Unit_CostCaptionLbl: Label 'Unit Cost';
        LC_NumberCaptionLbl: Label 'LC Number';
        Average_CostCaptionLbl: Label 'Average Cost';
}

