page 70037 "IOU Register Card."
{
    PageType = Card;
    SourceTable = "IOU Register";
    SourceTableView = SORTING("IOU No.")
                      WHERE(Posted = FILTER(false),
                            Treated = FILTER(false),
                            "Final Apprv. Status" = FILTER(<> 'Approved'));

    layout
    {
        area(content)
        {
            group(General)
            {
                field("IOU No."; Rec."IOU No.")
                {
                }
                field("Entry Date"; Rec."Entry Date")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Payment Date"; Rec."Payment Date")
                {
                }
                field("Collected By"; Rec."Collected By")
                {
                }
                field("Staff Name"; Rec."Staff Name")
                {
                }
                field(Retired; Rec.Retired)
                {
                }
                field("Amount Retired"; Rec."Amount Retired")
                {
                }
                field(Paid; Rec.Paid)
                {
                }
                field("Paid By"; Rec."Paid By")
                {
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                }
            }
            group("1st Approval")
            {
                field("1st Approver"; Rec."1st Approver")
                {
                }
                field("1st Apprv. Status"; Rec."1st Apprv. Status")
                {
                }
                field("1st Approval Time"; Rec."1st Approval Time")
                {
                }
                field("1st Approver's Comment"; Rec."1st Approver's Comment")
                {
                }
                field("1st Approval to"; Rec."1st Approval to")
                {
                }
                field("Account Type"; Rec."Account Type")
                {
                }
                field("Account No."; Rec."Account No.")
                {
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                }
                field("No. Printed"; Rec."No. Printed")
                {
                }
                field("Retirement Date"; Rec."Retirement Date")
                {
                }
                field("Converted to Loan"; Rec."Converted to Loan")
                {
                }
                field(Approved; Rec.Approved)
                {
                }
            }
            group("2nd Approval")
            {
                field("Send for 2nd Apprv."; Rec."Send for 2nd Apprv.")
                {
                }
                field("Approved By"; Rec."Approved By")
                {
                }
                field("Account Name"; Rec."Account Name")
                {
                }
                field("Send for Approval"; Rec."Send for Approval")
                {
                }
                field(Sender; Rec.Sender)
                {
                }
                field("Sent Time"; Rec."Sent Time")
                {
                }
                field("2nd Approval to"; Rec."2nd Approval to")
                {
                }
                field("2nd Apprv. Status"; Rec."2nd Apprv. Status")
                {
                }
                field("2nd Approver"; Rec."2nd Approver")
                {
                }
            }
            group("3rd Approval")
            {
                field("2nd Approval Time"; Rec."2nd Approval Time")
                {
                }
                field("2nd Approver's Comment"; Rec."2nd Approver's Comment")
                {
                }
                field("3rd Approval to"; Rec."3rd Approval to")
                {
                }
                field("3rd Approver"; Rec."3rd Approver")
                {
                }
                field("3rd Apprv.Status"; Rec."3rd Apprv.Status")
                {
                }
                field("Send for 3rd Apprv."; Rec."Send for 3rd Apprv.")
                {
                }
                field("3rd Approval Time"; Rec."3rd Approval Time")
                {
                }
                field("3rd Approver's Comment"; Rec."3rd Approver's Comment")
                {
                }
            }
            group("Final Approval")
            {
                field("Final Approval to"; Rec."Final Approval to")
                {
                }
                field("Final Approver's Name"; Rec."Final Approver's Name")
                {
                }
                field("Final Apprv. Status"; Rec."Final Apprv. Status")
                {
                }
                field("Final Approval Time"; Rec."Final Approval Time")
                {
                }
                field("Final Approver's Comment"; Rec."Final Approver's Comment")
                {
                }
                field("General Comment"; Rec."General Comment")
                {
                }
                field("Mail Body"; Rec."Mail Body")
                {
                }
                field("Current pending Person"; Rec."Current pending Person")
                {
                }
                field(Attachment; Rec.Attachment)
                {
                }
                field(Comment; Rec.Comment)
                {
                }
                field(Treated; Rec.Treated)
                {
                }
                field("Expected Time of Payment"; Rec."Expected Time of Payment")
                {
                }
            }
        }
    }

    actions
    {
    }
}

