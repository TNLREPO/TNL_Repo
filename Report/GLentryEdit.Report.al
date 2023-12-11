report 50600 "GLentry Edit"
{
    DefaultLayout = RDLC;
    RDLCLayout = './GLentryEdit.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50103)
        {

            trigger OnAfterGetRecord()
            begin
                GLentry.SETCURRENTKEY(GLentry."Document No.");
                GLentry.SETRANGE(GLentry."Document No.", "Payment/Receipt."."No.");
                IF GLentry.FINDFIRST THEN
                    REPEAT
                        GLentry."Procument No." := "Payment/Receipt."."Procurement No.";
                        GLentry.MODIFY;
                    UNTIL GLentry.NEXT = 0;
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
        GLentry: Record 17;
}

