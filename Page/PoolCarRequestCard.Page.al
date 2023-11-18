page 50593 "Pool Car Request Card"
{
    PageType = Card;
    SourceTable = Table70002;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Current Pending Person"; "Current Pending Person")
                {
                    Editable = false;
                }
                field("Request No."; "Request No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                    Editable = false;
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
                {
                    Caption = 'Department';
                    Editable = false;
                }
                field(Destination; Destination)
                {
                }
                field("Take-off Location"; "Take-off Location")
                {
                }
                field(Reason; Reason)
                {
                    ShowMandatory = true;
                }
                field("Request Type"; "Request Type")
                {
                }
                field("Pickup Date"; "Pickup Date")
                {
                }
                field("Pickup Time"; "Pickup Time")
                {
                }
                field("Return Date"; "Return Date")
                {
                }
                field("Return Time"; "Return Time")
                {
                }
                field(Hours; Hours)
                {
                }
            }
            group("Requester's Action")
            {
                field("1st Approval"; "1st Approval")
                {
                    Caption = 'Send To HOD';
                }
                field("1st Approver"; "1st Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("Send for Approval"; "Send for Approval")
                {
                    Caption = 'Send';
                }
                field("Sent Time"; "Sent Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("HOD's Action")
            {
                field("2nd Approval"; "2nd Approval")
                {
                    Caption = 'Send To ADMIN';
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("1st Approval Status"; "1st Approval Status")
                {
                    Caption = 'Action';
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("ADMIN's Action")
            {
                field("Final Approval"; "Final Approval")
                {
                    Caption = 'Send To Allocator';
                }
                field("Final Approver"; "Final Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("2nd Approval Status"; "2nd Approval Status")
                {
                    Caption = 'Action';
                }
                field(Time; "2nd Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group(Print)
            {
                action(Printing)
                {
                    Caption = 'P&rint';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                }
            }
        }
    }

    var
        Edit1: Boolean;
        Edit2: Boolean;
        Edit3: Boolean;
}

