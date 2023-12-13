report 50168 "e-Procurement Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './eProcurementReport.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70008)
        {
            column(LPONo_ProcurementHeader; "Procurement Header"."LPO No.")
            {
            }
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
        UserSetup: Record 91;
        approvalmessage: Codeunit 397;
        mailsent: Boolean;
        ToName: Text[80];
        CCName: Text[80];
        Subject: Text[50];
        Body: Text[100];
        attachement: Text[260];
        text001: Label 'Document  ''%1''  requires your approval.';
}

