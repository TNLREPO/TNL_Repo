page 50595 "Approved Pool Car Request Card"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    SourceTable = Table70002;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Request No."; "Request No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(Destination; Destination)
                {
                }
                field("Request Type"; "Request Type")
                {
                    Caption = 'Purpose';
                }
                field(Requester; Requester)
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
                {
                    Caption = 'Department';
                }
                field("Pickup Date"; "Pickup Date")
                {
                }
                field("Return Date"; "Return Date")
                {
                }
                field("Pickup Time"; "Pickup Time")
                {
                }
                field("Return Time"; "Return Time")
                {
                }
                field(Reason; Reason)
                {
                }
                field(Hours; Hours)
                {
                }
            }
            group(Send)
            {
                field("1st Approval"; "1st Approval")
                {
                    Caption = 'To';
                }
                field("1st Approver"; "1st Approver")
                {
                    Caption = 'Name';
                }
                field("Send for Approval"; "Send for Approval")
                {
                    Caption = 'Send';
                }
                field(Sender; Sender)
                {
                    Caption = 'Sent by';
                }
                field("Sent Time"; "Sent Time")
                {
                    Caption = 'Time';
                }
            }
            group("Level 1")
            {
                Caption = 'Level 1';
                field("2nd Approval"; "2nd Approval")
                {
                    Caption = 'To';
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                }
                field("1st Approval Status"; "1st Approval Status")
                {
                    Caption = 'Action';
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                }
            }
            group("Level 2")
            {
                field("Final Approval"; "Final Approval")
                {
                    Caption = 'To';
                }
                field("Final Approver"; "Final Approver")
                {
                    Caption = 'Name';
                }
                field("2nd Approval Status"; "2nd Approval Status")
                {
                    Caption = 'Action';
                }
                field(Time; "2nd Approval Time")
                {
                    Caption = 'Time';
                }
            }
        }
    }

    actions
    {
    }
}

