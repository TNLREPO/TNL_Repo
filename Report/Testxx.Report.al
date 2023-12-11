report 50036 "Test xx"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Testxx.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {

            trigger OnAfterGetRecord()
            begin
                //Item."Item Tracking Code" := 'SNALL';
                //Item.MODIFY;
                Item.SETRANGE(Item.Blocked, Item.Blocked::"1");
                Item.Blocked := Item.Blocked::"0";
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

