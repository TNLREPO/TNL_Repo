report 50317 "Serial No. Update"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SerialNoUpdate.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5802)
        {
            RequestFilterFields = Chassis;

            trigger OnAfterGetRecord()
            begin
                "Value Entry".CALCFIELDS(Chassis);
                "Value Entry"."Serial No." := "Value Entry".Chassis;
                "Value Entry".MODIFY;
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

