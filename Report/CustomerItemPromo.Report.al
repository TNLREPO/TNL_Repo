report 50422 "Customer/Item Promo"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerItemPromo.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            DataItemTableView = WHERE (Inventory Posting Group=CONST(N_PARTS));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.","No. 2","Search Description","Inventory Posting Group";
            dataitem(DataItem1000000001;Table5802)
            {
                DataItemLink = Item No.=FIELD(No.),
                               Variant Code=FIELD(Variant Filter),
                               Location Code=FIELD(Location Filter),
                               Global Dimension 1 Code=FIELD(Global Dimension 1 Code),
                               Global Dimension 2 Code=FIELD(Global Dimension 2 Code);
                DataItemTableView = SORTING(Source Type,Source No.,Item No.)
                                    WHERE(Source Type=CONST(Vendor),
                                          Invoiced Quantity=FILTER(>0));
                RequestFilterFields = "Posting Date","Source No.","Source Posting Group";
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

