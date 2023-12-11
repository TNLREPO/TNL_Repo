report 50431 "GL Purchases"
{
    DefaultLayout = RDLC;
    RDLCLayout = './GLPurchases.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50180)
        {
            column(DocumentNo_GLPurchases; "GL Purchases"."Document No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ValueEntry.SETRANGE("Document No.", "Document No.");
                IF ValueEntry.FINDFIRST THEN BEGIN
                    REPEAT
                        ValueEntry.Pick := TRUE;
                        ValueEntry.MODIFY;
                    UNTIL ValueEntry.NEXT = 0;
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

