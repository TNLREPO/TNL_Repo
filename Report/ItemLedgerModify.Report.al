report 50441 "Item Ledger Modify"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemLedgerModify.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {

            trigger OnAfterGetRecord()
            begin
                "Item Ledger Entry".Pick := FALSE;
                "Item Ledger Entry".MODIFY;
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

