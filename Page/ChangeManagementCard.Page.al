page 50611 "Change Management Card"
{
    PageType = Card;
    SourceTable = Table70027;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    Visible = true;
                }
                field("Requester Code"; "Requester Code")
                {
                }
                field("Requesters Name"; "Requesters Name")
                {
                }
                field("Requesters Location"; "Requesters Location")
                {
                }
                field(Designation; Designation)
                {
                }
                field("Request Type"; "Request Type")
                {
                }
                field("Request Category"; "Request Category")
                {
                }
                field(Description; Description)
                {
                }
                field("Previous Mthd Used"; "Previous Mthd Used")
                {
                }
                field(Justififcation; Justififcation)
                {
                }
                field("Request Objective"; "Request Objective")
                {
                }
                field("Incoming Document Entry No."; "Incoming Document Entry No.")
                {

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IncomingDocument.SETRANGE("Entry No.", "Incoming Document Entry No.");
                        IF PAGE.RUNMODAL(0, IncomingDocument) = ACTION::LookupOK THEN
                            "Incoming Document Entry No." := IncomingDocument."Entry No.";
                    end;
                }
                field("Benefit to TNL"; "Benefit to TNL")
                {
                }
                field("Send To"; "Send To")
                {
                }
                field(Send; Send)
                {
                }
                field(SendTime; SendTime)
                {
                }
            }
            group("Requester HOD's Approval")
            {
                Caption = 'Requester HOD''s Approval';
                field(Status; Status)
                {
                }
                field("Requetsers Hod Name"; "Requetsers Hod Name")
                {
                }
                field("Date Hod"; "Date Hod")
                {
                }
            }
            group("AUDIT AND SYSTEMS' CHANGE APPROVAL")
            {
                Caption = 'AUDIT AND SYSTEMS'' CHANGE APPROVAL';
                field(Status1; Status1)
                {
                }
                field("HOD Audit Name"; "HOD Audit Name")
                {
                }
                field(Date1; Date1)
                {
                }
            }
            group("MD's CHANGE APPROVAL OR REJECTION")
            {
                Caption = 'MD''s CHANGE APPROVAL OR REJECTION';
                field("MDs Status"; "MDs Status")
                {
                }
                field("MDS Date"; "MDS Date")
                {
                }
            }
            part(; 50612)
            {
                SubPageLink = Document No.=FIELD(No.);
            }
            group("CHANGE IMPLEMENTATION")
            {
                Caption = 'CHANGE IMPLEMENTATION';
                field("Method of Implementation"; "Method of Implementation")
                {
                }
                field(Cost; Cost)
                {
                }
                field("Responsible TNL Staff"; "Responsible TNL Staff")
                {
                }
                field("Implemented By"; "Implemented By")
                {
                }
                field("Tested By"; "Tested By")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("No of Days"; "No of Days")
                {
                }
                field("Completion Date"; "Completion Date")
                {
                }
                field("Go live Date"; "Go live Date")
                {
                }
            }
            group("Requester Test & Sig-off")
            {
                Caption = 'Requester Test & Sig-off';
                field("Reqster Assessment"; "Reqster Assessment")
                {
                    Caption = 'Requester Assessment';
                }
                field("Reqster Test Date"; "Reqster Test Date")
                {
                    Caption = 'Requester Test Date';
                }
                field("Assessment  By"; "Assessment  By")
                {
                }
                field("Requester Sign-off Con."; "Requester Sign-off Con.")
                {
                    Caption = 'Sign-off Confirmation';
                }
                field("Requester Sign Date"; "Requester Sign Date")
                {
                }
                field("Sign-Off Name"; "Sign-Off Name")
                {
                }
            }
            group("POST IMPLEMENTATION REVIEW")
            {
                Caption = 'POST IMPLEMENTATION REVIEW';
                field("Reviewed Confirmation"; "Reviewed Confirmation")
                {
                }
                field("Reviewed By"; "Reviewed By")
                {
                }
                field("Post Date"; "Post Date")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        IncomingDocument: Record 130;
}

