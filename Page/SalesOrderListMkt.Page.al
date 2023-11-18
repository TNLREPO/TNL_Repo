page 50250 "Sales Order List Mkt"
{
    CardPageID = "Sales Order";
    PageType = List;
    SourceTable = Table36;
    SourceTableView = WHERE (Document Type=CONST(Order),
                            Shortcut Dimension 1 Code=FILTER(09MARKET));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type";"Document Type")
                {
                }
                field("Sell-to Customer No.";"Sell-to Customer No.")
                {
                }
                field("No.";"No.")
                {
                }
                field("Bill-to Customer No.";"Bill-to Customer No.")
                {
                }
                field("Bill-to Name";"Bill-to Name")
                {
                }
                field("Bill-to Name 2";"Bill-to Name 2")
                {
                }
                field("Bill-to Address";"Bill-to Address")
                {
                }
                field("Bill-to Address 2";"Bill-to Address 2")
                {
                }
                field("Bill-to City";"Bill-to City")
                {
                }
                field("Bill-to Contact";"Bill-to Contact")
                {
                }
                field("Your Reference";"Your Reference")
                {
                }
                field("Ship-to Code";"Ship-to Code")
                {
                }
                field("Ship-to Name";"Ship-to Name")
                {
                }
                field("Ship-to Name 2";"Ship-to Name 2")
                {
                }
                field("Ship-to Address";"Ship-to Address")
                {
                }
                field("Ship-to Address 2";"Ship-to Address 2")
                {
                }
                field("Ship-to City";"Ship-to City")
                {
                }
                field("Ship-to Contact";"Ship-to Contact")
                {
                }
                field("Order Date";"Order Date")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Shipment Date";"Shipment Date")
                {
                }
                field("Posting Description";"Posting Description")
                {
                }
                field("Payment Terms Code";"Payment Terms Code")
                {
                }
                field("Due Date";"Due Date")
                {
                }
                field("Payment Discount %";"Payment Discount %")
                {
                }
                field("Pmt. Discount Date";"Pmt. Discount Date")
                {
                }
                field("Shipment Method Code";"Shipment Method Code")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field("Shortcut Dimension 1 Code";"Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code";"Shortcut Dimension 2 Code")
                {
                }
                field("Customer Posting Group";"Customer Posting Group")
                {
                }
                field("Currency Code";"Currency Code")
                {
                }
                field("Currency Factor";"Currency Factor")
                {
                }
                field("Customer Price Group";"Customer Price Group")
                {
                }
                field("Prices Including VAT";"Prices Including VAT")
                {
                }
                field("Invoice Disc. Code";"Invoice Disc. Code")
                {
                }
                field("Customer Disc. Group";"Customer Disc. Group")
                {
                }
                field("Language Code";"Language Code")
                {
                }
                field("Salesperson Code";"Salesperson Code")
                {
                }
                field("Order Class";"Order Class")
                {
                }
                field(Comment;Comment)
                {
                }
                field("No. Printed";"No. Printed")
                {
                }
                field("On Hold";"On Hold")
                {
                }
                field("Applies-to Doc. Type";"Applies-to Doc. Type")
                {
                }
                field("Applies-to Doc. No.";"Applies-to Doc. No.")
                {
                }
                field("Bal. Account No.";"Bal. Account No.")
                {
                }
                field("Recalculate Invoice Disc.";"Recalculate Invoice Disc.")
                {
                }
                field(Ship;Ship)
                {
                }
                field(Invoice;Invoice)
                {
                }
                field("Print Posted Documents";"Print Posted Documents")
                {
                }
                field(Amount;Amount)
                {
                }
                field("Amount Including VAT";"Amount Including VAT")
                {
                }
                field("Shipping No.";"Shipping No.")
                {
                }
                field("Posting No.";"Posting No.")
                {
                }
                field("Last Shipping No.";"Last Shipping No.")
                {
                }
                field("Last Posting No.";"Last Posting No.")
                {
                }
                field("Prepayment No.";"Prepayment No.")
                {
                }
                field("Last Prepayment No.";"Last Prepayment No.")
                {
                }
                field("Prepmt. Cr. Memo No.";"Prepmt. Cr. Memo No.")
                {
                }
                field("Last Prepmt. Cr. Memo No.";"Last Prepmt. Cr. Memo No.")
                {
                }
                field("VAT Registration No.";"VAT Registration No.")
                {
                }
                field("Combine Shipments";"Combine Shipments")
                {
                }
                field("Reason Code";"Reason Code")
                {
                }
                field("Gen. Bus. Posting Group";"Gen. Bus. Posting Group")
                {
                }
                field("EU 3-Party Trade";"EU 3-Party Trade")
                {
                }
                field("Transaction Type";"Transaction Type")
                {
                }
                field("Transport Method";"Transport Method")
                {
                }
                field("VAT Country/Region Code";"VAT Country/Region Code")
                {
                }
                field("Sell-to Customer Name";"Sell-to Customer Name")
                {
                }
                field("Sell-to Customer Name 2";"Sell-to Customer Name 2")
                {
                }
                field("Sell-to Address";"Sell-to Address")
                {
                }
                field("Sell-to Address 2";"Sell-to Address 2")
                {
                }
                field("Sell-to City";"Sell-to City")
                {
                }
                field("Sell-to Contact";"Sell-to Contact")
                {
                }
                field("Bill-to Post Code";"Bill-to Post Code")
                {
                }
                field("Bill-to County";"Bill-to County")
                {
                }
                field("Bill-to Country/Region Code";"Bill-to Country/Region Code")
                {
                }
                field("Sell-to Post Code";"Sell-to Post Code")
                {
                }
                field("Sell-to County";"Sell-to County")
                {
                }
                field("Sell-to Country/Region Code";"Sell-to Country/Region Code")
                {
                }
                field("Ship-to Post Code";"Ship-to Post Code")
                {
                }
                field("Ship-to County";"Ship-to County")
                {
                }
                field("Ship-to Country/Region Code";"Ship-to Country/Region Code")
                {
                }
                field("Bal. Account Type";"Bal. Account Type")
                {
                }
                field("Exit Point";"Exit Point")
                {
                }
                field(Correction;Correction)
                {
                }
                field("Document Date";"Document Date")
                {
                }
                field("External Document No.";"External Document No.")
                {
                }
                field(Area;Area)
                {
                }
                field("Transaction Specification";"Transaction Specification")
                {
                }
                field("Payment Method Code";"Payment Method Code")
                {
                }
                field("Shipping Agent Code";"Shipping Agent Code")
                {
                }
                field("Package Tracking No.";"Package Tracking No.")
                {
                }
                field("No. Series";"No. Series")
                {
                }
                field("Posting No. Series";"Posting No. Series")
                {
                }
                field("Shipping No. Series";"Shipping No. Series")
                {
                }
                field("Tax Area Code";"Tax Area Code")
                {
                }
                field("Tax Liable";"Tax Liable")
                {
                }
                field("VAT Bus. Posting Group";"VAT Bus. Posting Group")
                {
                }
                field(Reserve;Reserve)
                {
                }
                field("Applies-to ID";"Applies-to ID")
                {
                }
                field("VAT Base Discount %";"VAT Base Discount %")
                {
                }
                field(Status;Status)
                {
                }
                field("Invoice Discount Calculation";"Invoice Discount Calculation")
                {
                }
                field("Invoice Discount Value";"Invoice Discount Value")
                {
                }
                field("Send IC Document";"Send IC Document")
                {
                }
                field("IC Status";"IC Status")
                {
                }
                field("Sell-to IC Partner Code";"Sell-to IC Partner Code")
                {
                }
                field("Bill-to IC Partner Code";"Bill-to IC Partner Code")
                {
                }
                field("IC Direction";"IC Direction")
                {
                }
                field("Prepayment %";"Prepayment %")
                {
                }
                field("Prepayment No. Series";"Prepayment No. Series")
                {
                }
                field("Compress Prepayment";"Compress Prepayment")
                {
                }
                field("Prepayment Due Date";"Prepayment Due Date")
                {
                }
                field("Prepmt. Cr. Memo No. Series";"Prepmt. Cr. Memo No. Series")
                {
                }
                field("Prepmt. Posting Description";"Prepmt. Posting Description")
                {
                }
                field("Prepmt. Pmt. Discount Date";"Prepmt. Pmt. Discount Date")
                {
                }
                field("Prepmt. Payment Terms Code";"Prepmt. Payment Terms Code")
                {
                }
                field("Prepmt. Payment Discount %";"Prepmt. Payment Discount %")
                {
                }
                field("Quote No.";"Quote No.")
                {
                }
                field("Quote Valid Until Date";"Quote Valid Until Date")
                {
                }
                field("Quote Sent to Customer";"Quote Sent to Customer")
                {
                }
                field("Quote Accepted";"Quote Accepted")
                {
                }
                field("Quote Accepted Date";"Quote Accepted Date")
                {
                }
                field("Job Queue Status";"Job Queue Status")
                {
                }
                field("Job Queue Entry ID";"Job Queue Entry ID")
                {
                }
                field("Incoming Document Entry No.";"Incoming Document Entry No.")
                {
                }
                field("Last Email Sent Time";"Last Email Sent Time")
                {
                }
                field("Last Email Sent Status";"Last Email Sent Status")
                {
                }
                field("Sent as Email";"Sent as Email")
                {
                }
                field("Last Email Notif Cleared";"Last Email Notif Cleared")
                {
                }
                field(IsTest;IsTest)
                {
                }
                field("Sell-to Phone No.";"Sell-to Phone No.")
                {
                }
                field("Sell-to E-Mail";"Sell-to E-Mail")
                {
                }
                field("Payment Instructions Id";"Payment Instructions Id")
                {
                }
                field("Work Description";"Work Description")
                {
                }
                field("Amt. Ship. Not Inv. (LCY)";"Amt. Ship. Not Inv. (LCY)")
                {
                }
                field("Amt. Ship. Not Inv. (LCY) Base";"Amt. Ship. Not Inv. (LCY) Base")
                {
                }
                field("Dimension Set ID";"Dimension Set ID")
                {
                }
                field("Payment Service Set ID";"Payment Service Set ID")
                {
                }
                field("Direct Debit Mandate ID";"Direct Debit Mandate ID")
                {
                }
                field("Invoice Discount Amount";"Invoice Discount Amount")
                {
                }
                field("No. of Archived Versions";"No. of Archived Versions")
                {
                }
                field("Doc. No. Occurrence";"Doc. No. Occurrence")
                {
                }
                field("Campaign No.";"Campaign No.")
                {
                }
                field("Sell-to Customer Template Code";"Sell-to Customer Template Code")
                {
                }
                field("Sell-to Contact No.";"Sell-to Contact No.")
                {
                }
                field("Bill-to Contact No.";"Bill-to Contact No.")
                {
                }
                field("Bill-to Customer Template Code";"Bill-to Customer Template Code")
                {
                }
                field("Opportunity No.";"Opportunity No.")
                {
                }
                field("Responsibility Center";"Responsibility Center")
                {
                }
                field("Shipping Advice";"Shipping Advice")
                {
                }
                field("Shipped Not Invoiced";"Shipped Not Invoiced")
                {
                }
                field("Completely Shipped";"Completely Shipped")
                {
                }
                field("Posting from Whse. Ref.";"Posting from Whse. Ref.")
                {
                }
                field("Location Filter";"Location Filter")
                {
                }
                field(Shipped;Shipped)
                {
                }
                field("Last Shipment Date";"Last Shipment Date")
                {
                }
                field("Requested Delivery Date";"Requested Delivery Date")
                {
                }
                field("Promised Delivery Date";"Promised Delivery Date")
                {
                }
                field("Shipping Time";"Shipping Time")
                {
                }
                field("Outbound Whse. Handling Time";"Outbound Whse. Handling Time")
                {
                }
                field("Shipping Agent Service Code";"Shipping Agent Service Code")
                {
                }
                field("Late Order Shipping";"Late Order Shipping")
                {
                }
                field("Date Filter";"Date Filter")
                {
                }
                field(Receive;Receive)
                {
                }
                field("Return Receipt No.";"Return Receipt No.")
                {
                }
                field("Return Receipt No. Series";"Return Receipt No. Series")
                {
                }
                field("Last Return Receipt No.";"Last Return Receipt No.")
                {
                }
                field("Allow Line Disc.";"Allow Line Disc.")
                {
                }
                field("Get Shipment Used";"Get Shipment Used")
                {
                }
                field(Id;Id)
                {
                }
                field("Assigned User ID";"Assigned User ID")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Order Type";"Order Type")
                {
                }
                field("First User ID";"First User ID")
                {
                }
                field("Last User ID";"Last User ID")
                {
                }
                field(Modified;Modified)
                {
                }
                field("Address 3";"Address 3")
                {
                }
                field("P.O.Box";"P.O.Box")
                {
                }
                field("Del.Add. 3";"Del.Add. 3")
                {
                }
                field("Del.P.O.Box";"Del.P.O.Box")
                {
                }
                field("Status(DOS)";"Status(DOS)")
                {
                }
                field("xForeign Currency";"xForeign Currency")
                {
                }
                field(xStatus;xStatus)
                {
                }
                field("Send for Approval";"Send for Approval")
                {
                }
                field(Sender;Sender)
                {
                }
                field("Send to";"Send to")
                {
                }
                field(Approved;Approved)
                {
                }
                field("Sent Time";"Sent Time")
                {
                }
                field("Approved Time";"Approved Time")
                {
                }
                field("Mail Body";"Mail Body")
                {
                }
                field("Approved By";"Approved By")
                {
                }
                field("User Department";"User Department")
                {
                }
                field("1st Approval to";"1st Approval to")
                {
                }
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
                field("2nd Approval to";"2nd Approval to")
                {
                }
                field("2nd Approver";"2nd Approver")
                {
                }
                field("2nd Apprv. Status";"2nd Apprv. Status")
                {
                }
                field("2nd Approval Time";"2nd Approval Time")
                {
                }
                field("2nd Approver's Comment";"2nd Approver's Comment")
                {
                }
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
                field("Current pending Person";"Current pending Person")
                {
                }
                field(Attachment;Attachment)
                {
                }
                field("Send for 2nd Apprv.";"Send for 2nd Apprv.")
                {
                }
                field("Send for 3rd Apprv.";"Send for 3rd Apprv.")
                {
                }
                field("Foreign Currency";"Foreign Currency")
                {
                }
                field("Tracker No.";"Tracker No.")
                {
                }
                field("Include Accessory";"Include Accessory")
                {
                }
                field("Shelf No.";"Shelf No.")
                {
                }
                field("Sales Time";"Sales Time")
                {
                }
                field(Posting_Time;Posting_Time)
                {
                }
                field("Online Order";"Online Order")
                {
                }
                field("Customer Line discount";"Customer Line discount")
                {
                }
                field("Serial No";"Serial No")
                {
                }
                field("Inventory Group";"Inventory Group")
                {
                }
                field("Finance Apprv Status";"Finance Apprv Status")
                {
                }
                field("Finance Send to";"Finance Send to")
                {
                }
                field("Marketing Send To";"Marketing Send To")
                {
                }
                field("Marketing Apprv Status";"Marketing Apprv Status")
                {
                }
                field("Logistics Send to";"Logistics Send to")
                {
                }
                field("Logistics Apprv Status";"Logistics Apprv Status")
                {
                }
                field("Logistics Sent Time";"Logistics Sent Time")
                {
                }
                field("Logistics Approved Time";"Logistics Approved Time")
                {
                }
                field("Logistics Approved By";"Logistics Approved By")
                {
                }
                field("Logistics Sender";"Logistics Sender")
                {
                }
                field("Logistic Sent Time";"Logistic Sent Time")
                {
                }
                field("Finance Approved By";"Finance Approved By")
                {
                }
                field("Marketing Sender";"Marketing Sender")
                {
                }
                field("Marketing Sent Time";"Marketing Sent Time")
                {
                }
                field("Finance Approved Time";"Finance Approved Time")
                {
                }
                field("Marketing Approved By";"Marketing Approved By")
                {
                }
                field("Marketing Approved Time";"Marketing Approved Time")
                {
                }
                field("Retail Cost";"Retail Cost")
                {
                }
                field("Original Profit";"Original Profit")
                {
                }
                field("Original Profit %";"Original Profit %")
                {
                }
                field("HOD Logistics Signature";"HOD Logistics Signature")
                {
                }
                field("HOD Finance Signature";"HOD Finance Signature")
                {
                }
                field("HOD Marketing Signature";"HOD Marketing Signature")
                {
                }
                field("Logistics Send for Approval";"Logistics Send for Approval")
                {
                }
                field("Customer Preferred Name";"Customer Preferred Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

