report 50330 "Item Variant Air in Stock"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemVariantAirinStock.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5401)
        {
            DataItemTableView = WHERE (Code = FILTER (AIR),
                                      Inventory = FILTER (<> 0));
            RequestFilterFields = "Item No.";
            column(ItemNo_ItemVariant; "Item Variant"."Item No.")
            {
            }
            column(Description_ItemVariant; "Item Variant".Description)
            {
            }
            column(Inventory_ItemVariant; "Item Variant".Inventory)
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

