report 50029 "Date Correction"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DateCorrection.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5802)
        {
            RequestFilterFields = "Document No.", "Inventory Posting Group";

            trigger OnAfterGetRecord()
            begin
                "Value Entry"."Posting Date" := 010118D;
                "Value Entry"."Document Date" := 010118D;
                "Value Entry"."Valuation Date" := 010118D;
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

