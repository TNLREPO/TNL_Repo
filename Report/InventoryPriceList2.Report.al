report 50435 "Inventory  Price List2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './InventoryPriceList2.rdlc';
    Caption = 'Inventory Cost and Price List';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            RequestFilterFields = "No.", "Location Filter", "Variant Filter", "Search Description", "Assembly BOM", "Inventory Posting Group";
            column(TodayFormatted; FORMAT(TODAY, 0, 4))
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
            column(ItemFilterCopyCaption; TABLECAPTION + ': ' + ItemFilter)
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(InventPostingGr_Item; "Inventory Posting Group")
            {
            }
            column(No_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Desc_Item; Description)
            {
                IncludeCaption = true;
            }
            column(AssemblyBOM_Item; FORMAT("Assembly BOM"))
            {
            }
            column(BaseUOM_Item; "Base Unit of Measure")
            {
                IncludeCaption = true;
            }
            column(AverageCost; AverageCost)
            {
                AutoFormatType = 1;
            }
            column(StandardCost_Item; "Standard Cost")
            {
                IncludeCaption = true;
            }
            column(LastDirectCost_Item; "Last Direct Cost")
            {
                IncludeCaption = true;
            }
            column(UnitPrice_Item; "Unit Price")
            {
                IncludeCaption = true;
            }
            column(Profit_Item; "Profit %")
            {
                DecimalPlaces = 1 : 1;
                IncludeCaption = true;
            }
            column(UnitPriceUnitCost_Item; "Unit Price" - "Unit Cost")
            {
            }
            column(UseStockkeepingUnitBody; UseStockkeepingUnit)
            {
            }
            column(LocationFilter_Item; "Location Filter")
            {
            }
            column(VariantFilter_Item; "Variant Filter")
            {
            }
            column(InvCostAndPriceListCaption; InvCostAndPriceListCaptionLbl)
            {
            }
            column(PageNoCaption; PageNoCaptionLbl)
            {
            }
            column(BOMCaption; BOMCaptionLbl)
            {
            }
            column(AvgCostCaption; AvgCostCaptionLbl)
            {
            }
            column(ProfitCaption; ProfitCaptionLbl)
            {
            }
            column(LastDirCostCaption; LastDirCostCaptionLbl)
            {
            }
            column(LocationCodeCaption; LocationCodeCaptionLbl)
            {
            }
            column(VariantCodeCaption; VariantCodeCaptionLbl)
            {
            }
            dataitem(DataItem5605; Table5700)
            {
                DataItemLink = Item No.=FIELD(No.), Location Code=FIELD(Location Filter), Variant Code=FIELD(Variant Filter);
                DataItemTableView = SORTING(Item No.,Location Code,Variant Code);
                column(ItemUnitPriceUnitCostDiff;Item."Unit Price" - Item."Unit Cost")
                {
                }
                column(LastDirCost_StockKeepingUnit;"Last Direct Cost")
                {
                }
                column(StandardCost_StockKeepingUnit;"Standard Cost")
                {
                }
                column(AverageCost_StockKeepingUnit;AverageCost)
                {
                    AutoFormatType = 1;
                }
                column(ItemBaseUOM;Item."Base Unit of Measure")
                {
                }
                column(ItemAssemblyBOM;FORMAT(Item."Assembly BOM"))
                {
                }
                column(LocationCode_StockKeepingUnit;"Location Code")
                {
                }
                column(VariantCode_StockKeepingUnit;"Variant Code")
                {
                }
                column(UseStockkeepingUnit;UseStockkeepingUnit)
                {
                }
                column(SKUPrintLoop;SKUPrintLoop)
                {
                }

                trigger OnAfterGetRecord()
                var
                    Item2: Record "27";
                begin
                    SKUPrintLoop := SKUPrintLoop + 1;
                    IF Item2.GET("Item No.") THEN BEGIN
                      Item2.SETFILTER("Location Filter","Location Code");
                      Item2.SETFILTER("Variant Filter","Variant Code");
                      ItemCostMgt.CalculateAverageCost(Item2,AverageCost,AverageCostACY);
                      AverageCost := ROUND(AverageCost,GLSetup."Unit-Amount Rounding Precision");
                    END;

                    IF PrintToExcel AND UseStockkeepingUnit THEN
                      MakeExcelDataBody;
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

                IF PrintToExcel AND NOT UseStockkeepingUnit THEN
                  MakeExcelDataBody;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(UseStockkeepingUnit;UseStockkeepingUnit)
                    {
                        Caption = 'Use Stockkeeping Unit';
                    }
                    field(PrintToExcel;PrintToExcel)
                    {
                        Caption = 'Print to Excel';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            PrintToExcel := FALSE;
        end;
    }

    labels
    {
    }

    trigger OnPostReport()
    begin
        IF PrintToExcel THEN
          CreateExcelbook;
    end;

    trigger OnPreReport()
    begin
        ItemFilter := Item.GETFILTERS;
        GetGLSetup;

        IF PrintToExcel THEN
          MakeExcelInfo;
    end;

    var
        GLSetup: Record "98";
        ExcelBuf: Record "370" temporary;
        ItemCostMgt: Codeunit "5804";
        ItemFilter: Text;
        AverageCost: Decimal;
        AverageCostACY: Decimal;
        GLSetupRead: Boolean;
        UseStockkeepingUnit: Boolean;
        SKUPrintLoop: Integer;
        Text000: Label 'Data';
        Text001: Label 'Inventory Cost and Price List';
        Text002: Label 'Company Name';
        Text003: Label 'Report No.';
        Text004: Label 'Report Name';
        Text005: Label 'User ID';
        Text006: Label 'Date';
        Text007: Label 'Item Filters';
        Text008: Label 'Profit';
        PrintToExcel: Boolean;
        Text009: Label 'Stockkeeping Unit';
        Text010: Label 'Average Cost';
        InvCostAndPriceListCaptionLbl: Label 'Inventory Cost and Price List';
        PageNoCaptionLbl: Label 'Page';
        BOMCaptionLbl: Label 'BOM';
        AvgCostCaptionLbl: Label 'Average Cost';
        ProfitCaptionLbl: Label 'Profit';
        LastDirCostCaptionLbl: Label 'Last Direct Cost';
        LocationCodeCaptionLbl: Label 'Location Code';
        VariantCodeCaptionLbl: Label 'Variant Code';

    local procedure GetGLSetup()
    begin
        IF NOT GLSetupRead THEN
          GLSetup.GET;
        GLSetupRead := TRUE;
    end;

    [Scope('Internal')]
    procedure MakeExcelInfo()
    begin
        ExcelBuf.SetUseInfoSheet;
        ExcelBuf.AddInfoColumn(FORMAT(Text002),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddInfoColumn(COMPANYNAME,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text003),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddInfoColumn(FORMAT(Text001),FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text004),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddInfoColumn(REPORT::"Customer/Item Sales",FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Number);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text005),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddInfoColumn(USERID,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text006),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddInfoColumn(TODAY,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Date);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text007),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddInfoColumn(Item.GETFILTERS,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        IF UseStockkeepingUnit THEN BEGIN
          ExcelBuf.NewRow;
          ExcelBuf.AddInfoColumn(FORMAT(Text009),FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
          ExcelBuf.AddInfoColumn(UseStockkeepingUnit,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        END;
        ExcelBuf.ClearNewRow;
        MakeExcelDataHeader;
    end;

    local procedure MakeExcelDataHeader()
    begin
        ExcelBuf.AddColumn(Item.FIELDCAPTION("No."),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION(Description),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION("Assembly BOM"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION("Base Unit of Measure"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        IF UseStockkeepingUnit THEN BEGIN
          ExcelBuf.AddColumn("Stockkeeping Unit".FIELDCAPTION("Location Code"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
          ExcelBuf.AddColumn("Stockkeeping Unit".FIELDCAPTION("Variant Code"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        END;
        ExcelBuf.AddColumn(FORMAT(Text010),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION("Standard Cost"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION("Last Direct Cost"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION("Unit Price"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.FIELDCAPTION("Profit %"),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(FORMAT(Text008),FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
    end;

    [Scope('Internal')]
    procedure MakeExcelDataBody()
    begin
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn(Item."No.",FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item.Description,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item."Assembly BOM",FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Item."Base Unit of Measure",FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        IF UseStockkeepingUnit THEN BEGIN
          ExcelBuf.AddColumn("Stockkeeping Unit"."Location Code",FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
          ExcelBuf.AddColumn("Stockkeeping Unit"."Variant Code",FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        END;
        ExcelBuf.AddColumn(AverageCost,FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
        IF UseStockkeepingUnit THEN BEGIN
          ExcelBuf.AddColumn("Stockkeeping Unit"."Standard Cost",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
          ExcelBuf.AddColumn("Stockkeeping Unit"."Last Direct Cost",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
        END ELSE BEGIN
          ExcelBuf.AddColumn(Item."Standard Cost",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
          ExcelBuf.AddColumn(Item."Last Direct Cost",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
        END;
        ExcelBuf.AddColumn(Item."Unit Price",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
        ExcelBuf.AddColumn(Item."Profit %",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
        ExcelBuf.AddColumn(Item."Unit Price" - Item."Unit Cost",FALSE,'',FALSE,FALSE,FALSE,'#,##0.00',ExcelBuf."Cell Type"::Number);
    end;

    [Scope('Internal')]
    procedure CreateExcelbook()
    begin
        ExcelBuf.CreateBookAndOpenExcel(Text000,Text001,COMPANYNAME,USERID);
        ERROR('');
    end;

    [Scope('Internal')]
    procedure InitializeRequest(NewUseStockkeepingUnit: Boolean;NewPrintToExcel: Boolean)
    begin
        UseStockkeepingUnit := NewUseStockkeepingUnit;
        PrintToExcel := NewPrintToExcel;
    end;
}

