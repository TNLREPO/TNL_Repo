report 50256 "Correct Value Entry"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CorrectValueEntry.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5802)
        {
            RequestFilterFields = "Inventory Posting Group";
            column(ItemNo; "Value Entry"."Item No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ValueEntry.GET("Entry No.");
                IF ValueEntry."Item Ledger Entry Quantity" = -1 THEN BEGIN
                    ValueEntry."Cost Amount (Actual)" := -1 * "Cost Amount (Actual)";
                    ValueEntry."Cost Posted to G/L" := -1 * "Cost Posted to G/L";
                    ValueEntry.MODIFY;
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
        ValueEntry: Record 5802;
}

