report 50188 "Inventory Price List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './InventoryPriceList.rdlc';
    Caption = 'Inventory Price List';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            CalcFields = Inventory;
            RequestFilterFields = "No.", "Location Filter", "Variant Filter", "Search Description", "Inventory Posting Group", "Global Dimension 1 Code";
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
            column(Prices_are_as_Per_____FORMAT_TODAY_0_4_; 'Prices are as Per ' + FORMAT(TODAY, 0, 4))
            {
            }
            column(Filters________ItemFilter; 'Filters  : ' + ItemFilter)
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Base_Unit_of_Measure_; "Base Unit of Measure")
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(Item__Unit_Price_; "Unit Price")
            {
            }
            column(Price_ListCaption; Price_ListCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(No_Caption; No_CaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(Base_Unit_of_MeasureCaption; Base_Unit_of_MeasureCaptionLbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(Unit_PriceCaption; Unit_PriceCaptionLbl)
            {
            }
            column(Unit_PriceCaption_Control47; Unit_PriceCaption_Control47Lbl)
            {
            }
            column(QuantityCaption_Control48; QuantityCaption_Control48Lbl)
            {
            }
            column(Base_Unit_of_MeasureCaption_Control50; Base_Unit_of_MeasureCaption_Control50Lbl)
            {
            }
            column(DescriptionCaption_Control51; DescriptionCaption_Control51Lbl)
            {
            }
            column(No_Caption_Control52; No_Caption_Control52Lbl)
            {
            }
            column(Location_CodeCaption; Location_CodeCaptionLbl)
            {
            }
            column(Variant_CodeCaption; Variant_CodeCaptionLbl)
            {
            }
            column(Item_Location_Filter; "Location Filter")
            {
            }
            column(Item_Variant_Filter; "Variant Filter")
            {
            }
            dataitem(DataItem5605; Table5700)
            {
                CalcFields = Inventory;
                DataItemLink = Item No.=FIELD(No.),
                               Location Code=FIELD(Location Filter),
                               Variant Code=FIELD(Variant Filter);
                DataItemTableView = SORTING(Item No.,Location Code,Variant Code);
                column(sPrice;sPrice)
                {
                }
                column(Stockkeeping_Unit_Inventory;Inventory)
                {
                }
                column(Item__Base_Unit_of_Measure__Control39;Item."Base Unit of Measure")
                {
                }
                column(Stockkeeping_Unit_Description;Description)
                {
                }
                column(Item__No___Control42;Item."No.")
                {
                }
                column(Stockkeeping_Unit__Location_Code_;"Location Code")
                {
                }
                column(Stockkeeping_Unit__Variant_Code_;"Variant Code")
                {
                }
                column(sPrice_Control55;sPrice)
                {
                }
                column(Stockkeeping_Unit_Inventory_Control57;Inventory)
                {
                }
                column(Stockkeeping_Unit__Variant_Code__Control59;"Variant Code")
                {
                }
                column(Stockkeeping_Unit__Location_Code__Control60;"Location Code")
                {
                }
                column(Stockkeeping_Unit_Item_No_;"Item No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Stockkeeping Unit".CALCFIELDS("Stockkeeping Unit".Inventory);
                    ForgetZero := ("Stockkeeping Unit".Inventory=0) AND (NOT(ShowZeroInventory));
                    IF ForgetZero THEN CurrReport.SKIP;

                    SKUPrintLoop := SKUPrintLoop + 1;

                    InvtSetup.GET;
                    ItemRec.RESET;
                    IF ItemRec.GET("Stockkeeping Unit"."Item No.") THEN BEGIN
                      IF InvtSetup."Average Cost Calc. Type" = InvtSetup."Average Cost Calc. Type"::"Item & Location & Variant" THEN BEGIN
                        ItemRec.SETRANGE("Location Filter","Stockkeeping Unit"."Location Code");
                        ItemRec.SETRANGE("Variant Filter","Stockkeeping Unit"."Variant Code");
                      END;
                      ItemRec.SETFILTER("Date Filter",Item.GETFILTER("Date Filter"));
                      ItemCostMgt.CalculateAverageCost(ItemRec,AverageCostLCY,AverageCostACY);
                    END;

                    ProfitPct := PriceGrp.ProfitMarkupToOnCost(ItemRec."Profit %");
                    sPrice := AverageCostLCY*(100+ProfitPct)/100;
                end;

                trigger OnPreDataItem()
                begin
                    IF NOT UseStockkeepingUnit THEN
                      CurrReport.BREAK;

                    SKUPrintLoop := 0;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                ItemCostMgt.CalculateAverageCost(Item,AverageCost,AverageCostACY);
                AverageCost := ROUND(AverageCost,GLSetup."Unit-Amount Rounding Precision");
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Use Stockkeeping Unit";UseStockkeepingUnit)
                {
                }
                field("Show Zero Inventory";ShowZeroInventory)
                {
                }
            }
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
        ItemFilter := Item.GETFILTERS;
        GetGLSetup;
    end;

    var
        GLSetup: Record "98";
        ItemCostMgt: Codeunit "5804";
        ItemFilter: Text[250];
        AverageCost: Decimal;
        AverageCostACY: Decimal;
        GLSetupRead: Boolean;
        UseStockkeepingUnit: Boolean;
        SKUPrintLoop: Integer;
        "------------": Integer;
        InvtSetup: Record "313";
        AverageCostLCY: Decimal;
        ItemList: Page "31";
                      ItemRec: Record "27";
                      GPC: Codeunit "50004";
                      InvPGrpFilter: Code[100];
                      SKU: Record "5700";
                      ProfitPct: Decimal;
                      PriceGrp: Record "50094";
                      sPrice: Decimal;
                      ShowZeroInventory: Boolean;
                      ShowHeaderOnce: Boolean;
                      SKUOK: Boolean;
                      ForgetZero: Boolean;
                      Price_ListCaptionLbl: Label 'Price List';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        No_CaptionLbl: Label 'No.';
        DescriptionCaptionLbl: Label 'Description';
        Base_Unit_of_MeasureCaptionLbl: Label 'Base Unit of Measure';
        QuantityCaptionLbl: Label 'Quantity';
        Unit_PriceCaptionLbl: Label 'Unit Price';
        Unit_PriceCaption_Control47Lbl: Label 'Unit Price';
        QuantityCaption_Control48Lbl: Label 'Quantity';
        Base_Unit_of_MeasureCaption_Control50Lbl: Label 'Base Unit of Measure';
        DescriptionCaption_Control51Lbl: Label 'Description';
        No_Caption_Control52Lbl: Label 'No.';
        Location_CodeCaptionLbl: Label 'Location Code';
        Variant_CodeCaptionLbl: Label 'Variant Code';

    local procedure GetGLSetup()
    begin
        IF NOT GLSetupRead THEN
          GLSetup.GET;
        GLSetupRead := TRUE;
    end;
}

