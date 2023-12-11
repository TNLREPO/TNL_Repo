report 50049 "Validate Qty."
{
    DefaultLayout = RDLC;
    RDLCLayout = './ValidateQty.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table83)
        {
            RequestFilterFields = "Journal Template Name", "Journal Batch Name";

            trigger OnAfterGetRecord()
            begin
                VALIDATE(Quantity);
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

