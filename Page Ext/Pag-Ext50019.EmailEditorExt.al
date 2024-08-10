pageextension 50019 "Email Editor Ext" extends "Email Editor"
{
    layout
    {
        addafter(CcField)
        {
            field(AddCc; AddCc)
            {
                Caption = 'Add Cc';
                ApplicationArea = All;
                ToolTip = 'Specifies the email addresses of people who should receive a copy of the email.';
                Importance = Additional;
                Lookup = true;

                trigger OnLookup(var Text: Text): Boolean
                var
                    EmailUsersList: page "Email Users List";
                    EmailUsers: Record "Email Users";
                    EmailEditor: Record "Email Address Lookup";

                begin
                    if EmailUsersList.RunModal = Action::OK then begin
                        EmailUsers.SetRange(Select, true);
                        if EmailUsers.FindFirst() then begin
                            repeat
                                AddCc += EmailUsers."Email" + ';';
                                CcRecipient += EmailUsers."Email" + ';';
                                EmailEditor."E-Mail Address" += EmailUsers.Email;
                                EmailEditor.Name := EmailUsers.User;
                                EmailEditor."Entity type" := EmailEditor."Entity type"::User;
                                EmailEditor.Insert();

                            until EmailUsers.Next() = 0;
                        end
                    end;

                end;
            }
        }

        /*  modify(CcField)
         {

             trigger OnLookup(var Text: Text): Boolean
             var
                 EmailUsersList: page "Email Users List";
                 EmailUsers: Record "Email Users";

             begin
                 EmailUsersList.LookupMode(true);
                 if EmailUsersList.RunModal = Action::LookupOK then begin
                     EmailUsers.SetRange(Select, true);
                     if EmailUsers.FindFirst() then begin
                         repeat
                             CcRecipient += EmailUsers."Email" + ';';
                         until EmailUsers.Next() = 0;
                     end
                 end;

             end;
         } */
    }
    var
        AddCc: Text;
}
