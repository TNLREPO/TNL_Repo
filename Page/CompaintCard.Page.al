page 70172 "Compaint Card"
{
    PageType = Card;
    SourceTable = Table70011;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                }
                field(Date; Date)
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("User name"; "User name")
                {
                }
                field("Type of Call"; "Type of Call")
                {

                    trigger OnValidate()
                    begin
                        IF Enquiry = TRUE THEN
                            VisbleEnquiry := TRUE ELSE
                            VisbleEnquiry := FALSE;

                        IF Complaint = TRUE THEN
                            VisibleComplaint := TRUE ELSE
                            VisibleComplaint := FALSE;
                    end;
                }
            }
            group("Dealer's Details")
            {
                field("Dealer's Name"; "Dealer's Name")
                {
                }
                field("Dealer's Location"; "Dealer's Location")
                {
                }
            }
            group("Customer Details")
            {
                field("Mode of Contact"; "Mode of Contact")
                {
                }
                field(Title; Title)
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Customer Phone"; "Customer Phone")
                {
                }
                field("Customer Email"; "Customer Email")
                {
                }
                field("Company Name"; "Company Name")
                {
                }
                field(Location; Location)
                {
                }
                field(City; City)
                {
                }
            }
            group("Vehicle Details")
            {
                field(Vin; Vin)
                {
                }
                field("Registration No"; "Registration No")
                {
                }
                field("Mode Type"; "Mode Type")
                {
                }
                field("Model Code"; "Model Code")
                {
                }
                field("Date of delivery"; "Date of delivery")
                {
                }
                field("Date of Purchase"; "Date of Purchase")
                {
                }
                field(Milage; Milage)
                {
                }
            }
            group(Complaint)
            {
                field("Date Matter Occured"; "Date Matter Occured")
                {
                    Caption = 'Date of  Complaint';
                }
                field("Type of complaint"; "Type of complaint")
                {
                }
                field("Classification of Complaint"; "Classification of Complaint")
                {
                }
                field("Complaint Details"; "Complaint Details")
                {
                }
                field("Action Taken Compliant"; "Action Taken Compliant")
                {
                    Caption = 'Action Taken';
                }
                field(Priority; Priority)
                {
                }
            }
            group(Escalate)
            {
                Visible = VisibleEscalate;
                field("User ID Escalate"; "User ID Escalate")
                {
                }
                field("Escalate Send"; "Escalate Send")
                {

                    trigger OnValidate()
                    begin

                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;


                        UserSetup.GET("User ID Escalate");
                        ToAddresses := UserSetup."E-Mail";
                        Addressee := UserSetup.Initials;
                        CcAddresses := '';
                        BccAddresses := '';
                        // Subject := STRSUBSTNO(Text007,,"No.");
                        Body := Text025 + Addressee + ',' +
                        // CRLF + CRLF + STRSUBSTNO(Text026,"Document Type","No.") +
                        CRLF + CRLF + CRLF + Text027 + CRLF + CRLF;
                        IF CURRENTCLIENTTYPE = CLIENTTYPE::Windows THEN
                            Mail.NewMessage(ToAddresses, CcAddresses, BccAddresses, Subject, Body, '', TRUE);
                    end;
                }
                field("User Name Escalate"; "User Name Escalate")
                {
                }
            }
            group("Resolution ")
            {
                Editable = VisibleComplaint;
                Visible = VisibleComplaint;
                field("User ID Resolution"; "User ID Resolution")
                {
                }
                field("User Name Resolution"; "User Name Resolution")
                {
                }
                field("Date of Resolution"; "Date of Resolution")
                {
                }
                field("Resolution Details"; "Resolution Details")
                {
                }
                field(Remark; Remark)
                {
                }
                field(Status; Status)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action(Escalate)
            {
                Caption = 'Escalate';
                Image = CheckRulesSyntax;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    "Escalate Visible" := TRUE;

                    IF "Escalate Visible" = TRUE THEN
                        VisibleEscalate := TRUE ELSE
                        VisibleEscalate := FALSE;

                    //MESSAGE('');
                end;
            }
            action(Resolution)
            {
                Caption = 'Resolution';
                Image = CheckRulesSyntax;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    "Resolution Visible" := TRUE;
                    IF "Resolution Visible" = TRUE THEN
                        VisibleResolution := TRUE ELSE
                        VisibleResolution := FALSE;

                    //MESSAGE('');
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        IF Enquiry = TRUE THEN
            VisbleEnquiry := TRUE ELSE
            VisbleEnquiry := FALSE;

        IF Complaint = TRUE THEN
            VisibleComplaint := TRUE ELSE
            VisibleComplaint := FALSE;


        IF "Escalate Visible" = TRUE THEN
            VisibleEscalate := TRUE ELSE
            VisibleEscalate := FALSE;

        IF "Resolution Visible" = TRUE THEN
            VisibleResolution := TRUE ELSE
            VisibleResolution := FALSE;
    end;

    var
        NoSeriesMgt: Codeunit 396;
        PurchSetup: Record 312;
        UserSetup: Record 91;
        ToAddresses: Text;
        CcAddresses: Text[200];
        BccAddresses: Text[100];
        Subject: Text[70];
        Body: Text[500];
        AttachFilename: Text;
        ShowNewMailDialogOnSend: Boolean;
        VisibleEscalate: Boolean;
        VisibleResolution: Boolean;
        VisbleEnquiry: Boolean;
        VisibleComplaint: Boolean;
        CusRelationEntry: Record "70011";
        Mail: Codeunit 397;
        Addressee: Text;
        Text007: ;
        Text025: ;
        CRLF: Text[2];
        SMTPMail: Codeunit "400";
        Text026: ;
        Text027: ;
}

