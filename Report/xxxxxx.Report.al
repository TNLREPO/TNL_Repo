report 50420 xxxxxx
{
    DefaultLayout = RDLC;
    RDLCLayout = './xxxxxx.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5404)
        {

            trigger OnAfterGetRecord()
            begin
                IF "Item Unit of Measure".Code = '' THEN
                    "Item Unit of Measure".DELETE;
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

