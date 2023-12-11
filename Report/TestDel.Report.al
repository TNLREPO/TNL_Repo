report 50602 TestDel
{
    DefaultLayout = RDLC;
    RDLCLayout = './TestDel.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50107)
        {

            trigger OnAfterGetRecord()
            begin
                DELETEALL
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

