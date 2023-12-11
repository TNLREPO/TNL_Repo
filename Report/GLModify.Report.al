report 50023 "GL Modify"
{
    DefaultLayout = RDLC;
    RDLCLayout = './GLModify.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table17)
        {

            trigger OnAfterGetRecord()
            begin
                "G/L Entry"."Posting Date" := 311216D;
                "G/L Entry"."Document Date" := 311216D;
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

