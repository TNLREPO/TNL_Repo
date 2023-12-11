report 50622 "Inventory2 - List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Inventory2List.rdlc';
    Caption = 'Inventory - List';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = WHERE (Type = CONST (Inventory));
            RequestFilterFields = "No.", "Search Description", "Assembly BOM", "Inventory Posting Group", "Shelf No.", "Statistics Group";
            column(CompanyName; COMPANYNAME)
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(No_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(AssemblyBOM_Item; FORMAT("Assembly BOM"))
            {
            }
            column(BaseUnitofMeasure_Item; "Base Unit of Measure")
            {
                IncludeCaption = true;
            }
            column(InventoryPostingGrp_Item; "Inventory Posting Group")
            {
                IncludeCaption = true;
            }
            column(ShelfNo_Item; "Shelf No.")
            {
                IncludeCaption = true;
            }
            column(VendorItemNo_Item; "Vendor Item No.")
            {
                IncludeCaption = true;
            }
            column(LeadTimeCalculation_Item; "Lead Time Calculation")
            {
                IncludeCaption = true;
            }
            column(ReorderPoint_Item; "Reorder Point")
            {
                IncludeCaption = true;
            }
            column(AlternativeItemNo_Item; "Alternative Item No.")
            {
                IncludeCaption = true;
            }
            column(Blocked_Item; FORMAT(Blocked))
            {
            }
            column(InventoryListCaption; InventoryListCaptionLbl)
            {
            }
            column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
            {
            }
            column(ItemAssemblyBOMCaption; ItemAssemblyBOMCaptionLbl)
            {
            }
            column(ItemBlockedCaption; ItemBlockedCaptionLbl)
            {
            }
            column(LastPurchaseDate; Item."Last Purchase Date")
            {
            }
            column(LastSalesDate; Item."Last Sales Date")
            {
            }
            column(NetChange; Item."Net Change")
            {
            }
            column(StockValue; Item."Stockvalue.")
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

    trigger OnPreReport()
    begin
        ItemFilter := Item.GETFILTERS;
    end;

    var
        ItemFilter: Text;
        InventoryListCaptionLbl: Label 'Inventory - List';
        CurrReportPageNoCaptionLbl: Label 'Page';
        ItemAssemblyBOMCaptionLbl: Label 'BOM';
        ItemBlockedCaptionLbl: Label 'Blocked';
}

