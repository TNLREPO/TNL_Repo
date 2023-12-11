report 50050 "Modify GL_2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ModifyGL2.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table17)
        {
            DataItemTableView = SORTING (Document No., Posting Date);
            RequestFilterFields = "Document No.";

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

