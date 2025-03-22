report 50500 "Part Invt. Valu. Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PartInvtValuReport.rdlc';

    dataset
    {
        dataitem(DataItem100000000; Table27)
        {
            RequestFilterFields = "No.", "Inventory Posting Group", "Location Filter", "Date Filter";
            column(No_Item; Item."No.")
            {
            }
            column(Description_Item; Item.Description)
            {
            }
            column(Inventory_Item; Item.Inventory)
            {
            }
            column(ItemCategoryCode_Item; Item."Item Category Code")
            {
            }
            column(UnitCost_Item; Item."Unit Cost")
            {
            }
            column(StockValuePostedtoGL_Item; Item."Stock Value Posted to G/L")
            {
            }
            column(UnitPrice_Item; Item."Unit Price")
            {
            }
            column(InventoryPostingGroup_Item; Item."Inventory Posting Group")
            {
            }
            column(LastPurchaseDate_Item; Item."Last Purchase Date")
            {
            }
            column(LastDateSold_Item; Item."Last Date Sold")
            {
            }
            column(ModelNo_Item; Item."Model No.")
            {
            }
            column(ModelName_Item; Item."Model Name")
            {
            }
            column(ShelfNo_Item; Item."Shelf No.")
            {
            }
            column(LocationFilter_Item; Item."Location Filter")
            {
            }
            column(AbujaInventory_Item; Item."Abuja Inventory")
            {
            }
            column(PortharcourtInventory_Item; Item."Portharcourt Inventory")
            {
            }
            column(DojoInventory_Item; Item."Dojo Inventory")
            {
            }
            column(DojoOregunInventory_Item; Item."Dojo Oregun  Inventory")
            {
            }
            column(IsoloInventory_Item; Item."Isolo Inventory")
            {
            }
            column(ProductCode_Item; Item."Product Code")
            {
            }
            column(ItemNoCategory_Item; Item."Item No Category")
            {
            }
            column(SubstitutesExist_Item; Item."Substitutes Exist")
            {
            }
            column(SubItem_Item; Item."Sub Item")
            {
            }
            column(SubName_Item; Item."Sub Name")
            {
            }
            column(LastSalesDate_Item; Item."Last Sales Date")
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
        ItemSubstitution: Record "5715";
}

