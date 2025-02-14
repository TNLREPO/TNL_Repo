table 50165 Test
{

    fields
    {
        field(1; "No."; Integer)
        {
        }
        field(2; "Take Action"; Option)
        {
            OptionCaption = ' ,Approved,On-hold,Rejected';
            OptionMembers = " ",Approved,"On-hold",Rejected;
            trigger OnValidate()
            begin
                ToAddresses := 'joshua@toyotanigeria.com';
                CcAddresses := 'albert@toyotanigeria.com' + ';' + 'onimisi@toyotanigeria.com';
                BccAddresses := '';
                PurchSetUp.Get();

                Subject := 'Test';
                //CreateEmailBody('', '', , 'PAA');
                SendEmail(ToAddresses, Subject, '', PurchSetUp."CC Account Dept. Approvers", '');

            end;

        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }

    }

    var
        PurchSetUp: Record "Purchases & Payables Setup";
        ToAddresses: Text;
        CcAddresses: Text;
        BccAddresses: Text;
        Subject: Text[70];

    procedure CreateEmailBody(DocType: Option; DocNo: Code[20]; BodyMsg: Text; RecipientInitials: Text);

    var

    begin



    end;

    procedure SendEmail(ToRecipients: Text; Subject: Text; Body: Text; CCRecipients: Text; BCCRecipients: Text)
    var

        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";

    begin

        EmailMessage.Create(ToRecipients, Subject, '', true);
        EmailMessage.AddRecipient(Enum::"Email Recipient Type"::Cc, CCRecipients);
        EmailMessage.AddRecipient(Enum::"Email Recipient Type"::Bcc, BCCRecipients);
        Email.OpenInEditorModally(EmailMessage, Enum::"Email Scenario"::Default)

    end;
}

