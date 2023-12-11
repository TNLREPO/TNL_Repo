report 50027 Cleanup
{
    DefaultLayout = RDLC;
    RDLCLayout = './Cleanup.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table17)
        {
            RequestFilterFields = "Posting Date", "G/L Account No.";

            trigger OnAfterGetRecord()
            begin
                "G/L Entry"."Debit Amount" := 0;
                "G/L Entry"."Credit Amount" := 0;
                "G/L Entry".Amount := 0;
                "G/L Entry".MODIFY;
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

