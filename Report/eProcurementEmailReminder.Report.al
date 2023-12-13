report 50167 "e-Procurement Email Reminder"
{
    DefaultLayout = RDLC;
    RDLCLayout = './eProcurementEmailReminder.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70008)
        {
            DataItemTableView = WHERE (Send = FILTER (Yes),
                                      Payment Approval Only=CONST(Yes));

            trigger OnAfterGetRecord()
            begin
                //Send email to HOD
                IF "Head of Department" = "Head of Department"::" " THEN
                    VALIDATE(Send, TRUE);

                //Send email to Audit
                IF ("Head of Audit" = "Head of Audit"::" ") AND ("Head of Department" = "Head of Department"::Approved) THEN
                    VALIDATE("Head of Department", "Head of Department"::Approved);

                //Send email to GM
                IF ("General Manager" = "General Manager"::" ") AND ("Managing Director" = "Managing Director"::" ") AND ("Head of Audit" = "Head of Audit"::Approved) THEN
                    VALIDATE("Head of Audit", "Head of Audit"::Approved);
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

