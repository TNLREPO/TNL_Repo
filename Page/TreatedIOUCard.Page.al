page 50375 "Treated IOU Card"
{
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50105;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("IOU No."; "IOU No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(Purpose; Description)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Account Type"; "Account Type")
                {
                }
                field("Staff No."; "Account No.")
                {
                }
                field("Staff Name"; "Account Name")
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
            }
            group(Sender)
            {
                field("1st Approval to"; "1st Approval to")
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
                field("Sent By"; Sender)
                {
                    Caption = 'Sent By';
                    Editable = false;
                }
                field("Sent Time"; "Sent Time")
                {
                }
            }
            group("Level 1")
            {
                Caption = 'Level 1';
                field("2nd Approval to"; "2nd Approval to")
                {
                    Caption = 'To';
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                }
                field("1st Apprv. Status"; "1st Apprv. Status")
                {
                    Caption = 'Action';
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                }
                field("1st Approver's Comment"; "1st Approver's Comment")
                {
                    Caption = 'Comment';
                }
            }
            group("Level 2")
            {
                Caption = 'Level 2';
                field("3rd Approval to"; "3rd Approval to")
                {
                    Caption = 'To';
                }
                field("3rd Approver"; "3rd Approver")
                {
                    Caption = 'Name';
                }
                field("2nd Apprv. Status"; "2nd Apprv. Status")
                {
                    Caption = 'Action';
                }
                field("2nd Approval Time"; "2nd Approval Time")
                {
                    Caption = 'Time';
                }
                field("2nd Approver's Comment"; "2nd Approver's Comment")
                {
                    Caption = 'Comment';
                }
            }
            group("Level 3")
            {
                Caption = 'Level 3';
                field("Final Apprv. Status"; "Final Apprv. Status")
                {
                    Caption = 'Action';
                }
                field("Final Approval Time"; "Final Approval Time")
                {
                    Caption = 'Time';
                }
                field("Final Approver's Comment"; "Final Approver's Comment")
                {
                    Caption = 'Comment';
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("&Print")
            {
                Caption = '&Print';
                Image = Print;
                Promoted = true;

                trigger OnAction()
                begin
                    IOURec.SETRANGE(IOURec."IOU No.", "IOU No.");
                    IF IOURec.FINDFIRST THEN BEGIN
                        IOUReport.SETTABLEVIEW(IOURec);
                        IOUReport.RUN;
                    END;
                end;
            }
        }
    }

    var
        IOURec: Record 50105;
        IOUReport: Report "50299";
        GPC: Codeunit "50004";
}

