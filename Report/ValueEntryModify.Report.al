report 50605 "Value Entry Modify"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ValueEntryModify.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5802)
        {
            RequestFilterFields = "Item No.", "Item Ledger Entry Quantity", "Cost Amount (Actual)";

            trigger OnAfterGetRecord()
            begin
                "Value Entry"."Cost Amount (Actual)" := "Value Entry"."Cost Amount (Actual)" * -1;
                "Value Entry"."Cost Posted to G/L" := "Value Entry"."Cost Posted to G/L" * -1;
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

