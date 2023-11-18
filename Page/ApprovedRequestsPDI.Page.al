page 50216 "Approved Requests (PDI)"
{
    CardPageID = "Motor Show Repair Card";
    PageType = List;
    SourceTable = Table70026;
    SourceTableView = WHERE (Send for Approval=CONST(Yes),
                            2nd Approval Status=FILTER(Approved),
                            Send Estimate=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No.";"Request No.")
                {
                }
                field("Entry Date";"Entry Date")
                {
                }
                field("Request Type";"Request Type")
                {
                }
                field(Requester;Requester)
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("User ID";"User ID")
                {
                }
                field("Global Dimension 1 code";"Global Dimension 1 code")
                {
                }
                field(Approved;Approved)
                {
                }
                field("Approved by";"Approved by")
                {
                }
                field("Send for Approval";"Send for Approval")
                {
                }
                field("1st Approval";"1st Approval")
                {
                }
                field("2nd Approval";"2nd Approval")
                {
                }
                field(Comment;Comment)
                {
                }
                field("1st Approver";"1st Approver")
                {
                }
                field("1st Approval Status";"1st Approval Status")
                {
                }
                field("1st Approval Time";"1st Approval Time")
                {
                }
                field("1st Approval's Comment";"1st Approval's Comment")
                {
                }
                field("2nd Approver";"2nd Approver")
                {
                }
                field("2nd Approval Status";"2nd Approval Status")
                {
                }
                field("2nd Approval Time";"2nd Approval Time")
                {
                }
                field("2nd Approval's Comment";"2nd Approval's Comment")
                {
                }
                field(Treated;Treated)
                {
                }
                field(Sender;Sender)
                {
                }
                field("Sent Time";"Sent Time")
                {
                }
                field("Current Pending Person";"Current Pending Person")
                {
                }
                field("Mail Body";"Mail Body")
                {
                }
                field(Hours;Hours)
                {
                }
                field(Days;Days)
                {
                }
                field(Employee;Employee)
                {
                }
                field("Final Approval";"Final Approval")
                {
                }
                field("Final Approver";"Final Approver")
                {
                }
                field("Pickup Time";"Pickup Time")
                {
                }
                field("Return Time";"Return Time")
                {
                }
                field(Reason;Reason)
                {
                }
                field("Take-off Location";"Take-off Location")
                {
                }
                field(Reject;Reject)
                {
                }
                field("Auto Show Location";"Auto Show Location")
                {
                }
                field(Make;Make)
                {
                }
                field(Model;Model)
                {
                }
                field("Registration No.";"Registration No.")
                {
                }
                field("KM Covered";"KM Covered")
                {
                }
                field("Reference No.";"Reference No.")
                {
                }
                field("Responsible Dealer";"Responsible Dealer")
                {
                }
                field("Job Done";"Job Done")
                {
                }
                field("Payment Approver";"Payment Approver")
                {
                }
                field("Payment Approval Status";"Payment Approval Status")
                {
                }
                field("Payment Approval Time";"Payment Approval Time")
                {
                }
                field("Payment Approval";"Payment Approval")
                {
                }
                field("Send for Payment Approval";"Send for Payment Approval")
                {
                }
                field("Sent Payment Approval Time";"Sent Payment Approval Time")
                {
                }
                field("Payment Confirmed";"Payment Confirmed")
                {
                }
                field("Related Job";"Related Job")
                {
                }
                field("3rd Approval";"3rd Approval")
                {
                }
                field("3rd Approver";"3rd Approver")
                {
                }
                field("3rd Approval Status";"3rd Approval Status")
                {
                }
                field("3rd Approval Time";"3rd Approval Time")
                {
                }
                field("3rd Approval Comment";"3rd Approval Comment")
                {
                }
                field("Job Done Time";"Job Done Time")
                {
                }
                field("Job Done Id";"Job Done Id")
                {
                }
                field("Job Done Name";"Job Done Name")
                {
                }
                field(Close;Close)
                {
                }
                field("Job Closing Officer";"Job Closing Officer")
                {
                }
                field("Close Date";"Close Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

