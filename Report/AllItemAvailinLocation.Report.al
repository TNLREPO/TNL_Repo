report 50333 "All Item Avail in Location"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AllItemAvailinLocation.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            DataItemTableView = WHERE (Product Group Code=CONST(BODY&PAINT));
            RequestFilterFields = "Location Filter";
            column(Inventory_Item; Item.Inventory)
            {
            }
            column(No_Item; Item."No.")
            {
            }
            column(Description_Item; Item.Description)
            {
            }
            column(LocationFilter_Item; Item."Location Filter")
            {
            }
            column(BaseUnitofMeasure_Item; Item."Base Unit of Measure")
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

