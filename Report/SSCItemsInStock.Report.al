report 50332 "SSC Items In Stock"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SSCItemsInStock.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            DataItemTableView = WHERE (Product Group Code=FILTER(SSC PARTS),
                                      Inventory=FILTER(<>0));
            RequestFilterFields = "No.";
            column(No_Item;Item."No.")
            {
            }
            column(Description_Item;Item.Description)
            {
            }
            column(Inventory_Item;Item.Inventory)
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

