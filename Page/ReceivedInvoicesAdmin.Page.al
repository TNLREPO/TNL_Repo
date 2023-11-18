page 50145 "Received Invoices (Admin)"
{
    CardPageID = "TNL-Work Order Card";
    PageType = List;
    SourceTable = Table70025;
    SourceTableView = WHERE (Invoice Received=FILTER(Yes),
                            Payment Confirmed=FILTER(No));

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
                field("Incoming Document Entry No.";"Incoming Document Entry No.")
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
                field("TNL Service Centre";"TNL Service Centre")
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
                field("Responsible Driver";"Responsible Driver")
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
                field("Payment Approval Comment";"Payment Approval Comment")
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
                field("Payment Raised";"Payment Raised")
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
                field("Payment Confirmed";"Payment Confirmed")
                {
                }
                field("Invoice Received";"Invoice Received")
                {
                }
                field("Collector Id";"Collector Id")
                {
                }
                field("Collector Name";"Collector Name")
                {
                }
                field("Collection Time";"Collection Time")
                {
                }
                field("Transaction Close";"Transaction Close")
                {
                }
                field("Close User Id";"Close User Id")
                {
                }
                field("Close Time";"Close Time")
                {
                }
                field("Closer Name";"Closer Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

