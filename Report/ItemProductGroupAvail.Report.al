report 50607 "Item Product Group Avail."
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemProductGroupAvail.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            DataItemTableView = WHERE (Inventory Posting Group=FILTER(N_PARTS|ACCESSORY));
            column(ProductGroupCode_Item;Item."Product Group Code")
            {
            }
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

