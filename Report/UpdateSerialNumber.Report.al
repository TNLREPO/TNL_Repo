report 50433 "Update Serial Number"
{
    DefaultLayout = RDLC;
    RDLCLayout = './UpdateSerialNumber.rdlc';

    dataset
    {
        dataitem(DataItem1000000001; Table5802)
        {
            column(Extract_ValueEntry; "Value Entry".Extract)
            {
            }
            column(SerialNo_ValueEntry; "Value Entry"."Serial No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItemLedgEntry.GET("Value Entry"."Item Ledger Entry No.");
                "Value Entry"."Serial No." := ItemLedgEntry."Serial No.";
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

    var
        ItemLedgEntry: Record 32;
}

