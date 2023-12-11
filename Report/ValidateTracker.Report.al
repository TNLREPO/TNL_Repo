report 50428 "Validate Tracker"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ValidateTracker.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50095)
        {

            trigger OnAfterGetRecord()
            begin
                "Parts Enquiry".VALIDATE("Part No");
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

