report 50078 "Additional Cost"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AdditionalCost.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5805)
        {
            RequestFilterFields = "Document No.";

            trigger OnAfterGetRecord()
            begin
                "Item Charge Assignment (Purch)"."Amount to Assign" := 1500000;
                "Item Charge Assignment (Purch)".MODIFY;
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

