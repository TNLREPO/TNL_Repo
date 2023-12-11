report 50389 "Modify Costing Method"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ModifyCostingMethod.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            RequestFilterFields = "Inventory Posting Group";

            trigger OnAfterGetRecord()
            begin
                Item."Costing Method" := Item."Costing Method"::Average;
                Item.MODIFY;
            end;
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

