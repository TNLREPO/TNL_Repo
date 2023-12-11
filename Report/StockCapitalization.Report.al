report 50550 "Stock Capitalization"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockCapitalization.rdlc';

    dataset
    {
        dataitem(DataItem100000000; Table50135)
        {
            RequestFilterFields = "Code";
            column(Code_StockCapitalisation; "Stock Capitalisation".Code)
            {
            }
            column(TransactionDate_StockCapitalisation; "Stock Capitalisation"."Transaction Date")
            {
            }
            column(GlobalDimension1_StockCapitalisation; "Stock Capitalisation"."Global Dimension 1")
            {
            }
            column(GlobalDimension2_StockCapitalisation; "Stock Capitalisation"."Global Dimension 2")
            {
            }
            column(ItemNo_StockCapitalisation; "Stock Capitalisation"."Item No.")
            {
            }
            column(ItemDescription_StockCapitalisation; "Stock Capitalisation"."Item Description")
            {
            }
            column(Location_StockCapitalisation; "Stock Capitalisation".Location)
            {
            }
            column(VariantCode_StockCapitalisation; "Stock Capitalisation"."Variant Code")
            {
            }
            column(AssetNo_StockCapitalisation; "Stock Capitalisation"."Asset No.")
            {
            }
            column(AssetDescription_StockCapitalisation; "Stock Capitalisation"."Asset Description")
            {
            }
            column(AssetAquisitionDate_StockCapitalisation; "Stock Capitalisation"."Asset Aquisition Date")
            {
            }
            column(Processed_StockCapitalisation; "Stock Capitalisation".Processed)
            {
            }
            column(Quantity_StockCapitalisation; "Stock Capitalisation".Quantity)
            {
            }
            column(Processdate_StockCapitalisation; "Stock Capitalisation"."Process date")
            {
            }
            column(ProcessTime_StockCapitalisation; "Stock Capitalisation"."Process Time")
            {
            }
            column(ProcessBy_StockCapitalisation; "Stock Capitalisation"."Process By")
            {
            }
            column(StockCapitalisationAccount_StockCapitalisation; "Stock Capitalisation"."Stock Capitalisation Account")
            {
            }
            column(NoSeries_StockCapitalisation; "Stock Capitalisation"."No. Series")
            {
            }
            column(StockCapitalisationApproval_StockCapitalisation; "Stock Capitalisation"."Stock Capitalisation Approval")
            {
            }
            column(CapitalisationApprovedBy_StockCapitalisation; "Stock Capitalisation"."Capitalisation Approved By")
            {
            }
            column(CapitalisationApprovedTime_StockCapitalisation; "Stock Capitalisation"."Capitalisation Approved Time")
            {
            }
            column(CapitalisationApprovedDate_StockCapitalisation; "Stock Capitalisation"."Capitalisation Approved Date")
            {
            }
            column(ChasisNo_StockCapitalisation; "Stock Capitalisation"."Chasis No.")
            {
            }
            column(Color_StockCapitalisation; "Stock Capitalisation".Color)
            {
            }
            column(EngineNo_StockCapitalisation; "Stock Capitalisation"."Engine No.")
            {
            }
            column(KeyNo_StockCapitalisation; "Stock Capitalisation"."Key No.")
            {
            }
            column(EntryNo_StockCapitalisation; "Stock Capitalisation"."Entry No")
            {
            }
            column(ItemCostLCY_StockCapitalisation; "Stock Capitalisation"."Item Cost (LCY)")
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
}

