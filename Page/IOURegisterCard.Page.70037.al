page 70037 "IOU Register Card."
{
    PageType = Card;
    SourceTable = Table50105;
    SourceTableView = SORTING (IOU No.)
                      WHERE (Posted = CONST (No),
                            Treated = CONST (No),
                            Final Apprv. Status=FILTER(<>Approved));

    layout
    {
        area(content)
        {
            group(General)
            {
                field("IOU No.";"IOU No.")
                {
                }
                field("Entry Date";"Entry Date")
                {
                }
                field(Description;Description)
                {
                }
                field(Amount;Amount)
                {
                }
                field("Payment Date";"Payment Date")
                {
                }
                field("Collected By";"Collected By")
                {
                }
                field("Staff Name";"Staff Name")
                {
                }
                field(Retired;Retired)
                {
                }
                field("Amount Retired";"Amount Retired")
                {
                }
                field(Paid;Paid)
                {
                }
                field("Paid By";"Paid By")
                {
                }
                field("Global Dimension 1 Code";"Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                }
            }
            group("1st Approval")
            {
                field("1st Approver";"1st Approver")
                {
                }
                field("1st Apprv. Status";"1st Apprv. Status")
                {
                }
                field("1st Approval Time";"1st Approval Time")
                {
                }
                field("1st Approver's Comment";"1st Approver's Comment")
                {
                }
                field("1st Approval to";"1st Approval to")
                {
                }
                field("Account Type";"Account Type")
                {
                }
                field("Account No.";"Account No.")
                {
                }
                field("Bal. Account Type";"Bal. Account Type")
                {
                }
                field("Bal. Account No.";"Bal. Account No.")
                {
                }
                field("No. Printed";"No. Printed")
                {
                }
                field("Retirement Date";"Retirement Date")
                {
                }
                field("Converted to Loan";"Converted to Loan")
                {
                }
                field(Approved;Approved)
                {
                }
            }
            group("2nd Approval")
            {
                field("Send for 2nd Apprv.";"Send for 2nd Apprv.")
                {
                }
                field("Approved By";"Approved By")
                {
                }
                field("Account Name";"Account Name")
                {
                }
                field("Send for Approval";"Send for Approval")
                {
                }
                field(Sender;Sender)
                {
                }
                field("Sent Time";"Sent Time")
                {
                }
                field("2nd Approval to";"2nd Approval to")
                {
                }
                field("2nd Apprv. Status";"2nd Apprv. Status")
                {
                }
                field("2nd Approver";"2nd Approver")
                {
                }
            }
            group("3rd Approval")
            {
                field("2nd Approval Time";"2nd Approval Time")
                {
                }
                field("2nd Approver's Comment";"2nd Approver's Comment")
                {
                }
                field("3rd Approval to";"3rd Approval to")
                {
                }
                field("3rd Approver";"3rd Approver")
                {
                }
                field("3rd Apprv.Status";"3rd Apprv.Status")
                {
                }
                field("Send for 3rd Apprv.";"Send for 3rd Apprv.")
                {
                }
                field("3rd Approval Time";"3rd Approval Time")
                {
                }
                field("3rd Approver's Comment";"3rd Approver's Comment")
                {
                }
            }
            group("Final Approval")
            {
                field("Final Approval to";"Final Approval to")
                {
                }
                field("Final Approver's Name";"Final Approver's Name")
                {
                }
                field("Final Apprv. Status";"Final Apprv. Status")
                {
                }
                field("Final Approval Time";"Final Approval Time")
                {
                }
                field("Final Approver's Comment";"Final Approver's Comment")
                {
                }
                field("General Comment";"General Comment")
                {
                }
                field("Mail Body";"Mail Body")
                {
                }
                field("Current pending Person";"Current pending Person")
                {
                }
                field(Attachment;Attachment)
                {
                }
                field(Comment;Comment)
                {
                }
                field(Treated;Treated)
                {
                }
                field("Expected Time of Payment";"Expected Time of Payment")
                {
                }
            }
        }
    }

    actions
    {
    }
}

