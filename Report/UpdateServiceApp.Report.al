report 50623 "Update Service App"
{
    DefaultLayout = RDLC;
    RDLCLayout = './UpdateServiceApp.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50114)
        {

            trigger OnAfterGetRecord()
            begin
                Sn += 1;

                "Appointment No." := FORMAT(Sn);

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

    var
        Sn: Integer;
}

