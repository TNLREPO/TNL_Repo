report 50410 "Tracking Modify"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TrackingModify.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                "Item Tracking Code" := '';
                MODIFY;
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

