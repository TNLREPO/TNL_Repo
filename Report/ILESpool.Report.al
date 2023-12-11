report 50432 "ILE Spool"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ILESpool.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50181)
        {

            trigger OnAfterGetRecord()
            begin
                ItemLedgerEntry.SETRANGE("Serial No.", "Item Ledger Nos."."SerialNo.");
                IF ItemLedgerEntry.FINDLAST THEN BEGIN
                    ItemLedgerEntry.Pick := TRUE;
                    ItemLedgerEntry.MODIFY;
                END;
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
        ItemLedgerEntry: Record 32;
}

