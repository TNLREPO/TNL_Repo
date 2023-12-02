page 50250 "Sales Order List Mkt"
{
    CardPageID = "Sales Order";
    PageType = List;
    SourceTable = "Sales Header";
    SourceTableView = WHERE("Document Type" = CONST(Order),
                            "Shortcut Dimension 1 Code" = FILTER('09MARKET'));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; Rec."Document Type")
                {
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                }
                field("Bill-to Name"; Rec."Bill-to Name")
                {
                }
                field("Bill-to Name 2"; Rec."Bill-to Name 2")
                {
                }
                field("Bill-to Address"; Rec."Bill-to Address")
                {
                }
                field("Bill-to Address 2"; Rec."Bill-to Address 2")
                {
                }
                field("Bill-to City"; Rec."Bill-to City")
                {
                }
                field("Bill-to Contact"; Rec."Bill-to Contact")
                {
                }
                field("Your Reference"; Rec."Your Reference")
                {
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                }
                field("Order Date"; Rec."Order Date")
                {
                }
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                }
                field("Posting Description"; Rec."Posting Description")
                {
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                }
                field("Due Date"; Rec."Due Date")
                {
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                }
                field("Location Code"; Rec."Location Code")
                {
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                }
                field("Currency Code"; Rec."Currency Code")
                {
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                }
                field("Prices Including VAT"; Rec."Prices Including VAT")
                {
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                }
                field("Customer Disc. Group"; Rec."Customer Disc. Group")
                {
                }
                field("Language Code"; Rec."Language Code")
                {
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                }
                field("Order Class"; Rec."Order Class")
                {
                }
                field(Comment; Rec.Comment)
                {
                }
                field("No. Printed"; Rec."No. Printed")
                {
                }
                field("On Hold"; Rec."On Hold")
                {
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                }
                field("Recalculate Invoice Disc."; Rec."Recalculate Invoice Disc.")
                {
                }
                field(Ship; Rec.Ship)
                {
                }
                field(Invoice; Rec.Invoice)
                {
                }
                field("Print Posted Documents"; Rec."Print Posted Documents")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                }
                field("Shipping No."; Rec."Shipping No.")
                {
                }
                field("Posting No."; Rec."Posting No.")
                {
                }
                field("Last Shipping No."; Rec."Last Shipping No.")
                {
                }
                field("Last Posting No."; Rec."Last Posting No.")
                {
                }
                field("Prepayment No."; Rec."Prepayment No.")
                {
                }
                field("Last Prepayment No."; Rec."Last Prepayment No.")
                {
                }
                field("Prepmt. Cr. Memo No."; Rec."Prepmt. Cr. Memo No.")
                {
                }
                field("Last Prepmt. Cr. Memo No."; Rec."Last Prepmt. Cr. Memo No.")
                {
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                }
                field("Combine Shipments"; Rec."Combine Shipments")
                {
                }
                field("Reason Code"; Rec."Reason Code")
                {
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                }
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                }
                field("Transport Method"; Rec."Transport Method")
                {
                }
                field("VAT Country/Region Code"; Rec."VAT Country/Region Code")
                {
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                }
                field("Sell-to Customer Name 2"; Rec."Sell-to Customer Name 2")
                {
                }
                field("Sell-to Address"; Rec."Sell-to Address")
                {
                }
                field("Sell-to Address 2"; Rec."Sell-to Address 2")
                {
                }
                field("Sell-to City"; Rec."Sell-to City")
                {
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                }
                field("Bill-to Post Code"; Rec."Bill-to Post Code")
                {
                }
                field("Bill-to County"; Rec."Bill-to County")
                {
                }
                field("Bill-to Country/Region Code"; Rec."Bill-to Country/Region Code")
                {
                }
                field("Sell-to Post Code"; Rec."Sell-to Post Code")
                {
                }
                field("Sell-to County"; Rec."Sell-to County")
                {
                }
                field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
                {
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                }
                field("Exit Point"; Rec."Exit Point")
                {
                }
                field(Correction; Rec.Correction)
                {
                }
                field("Document Date"; Rec."Document Date")
                {
                }
                field("External Document No."; Rec."External Document No.")
                {
                }
                field("Area"; Rec.Area)
                {
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                }
                field("Package Tracking No."; Rec."Package Tracking No.")
                {
                }
                field("No. Series"; Rec."No. Series")
                {
                }
                field("Posting No. Series"; Rec."Posting No. Series")
                {
                }
                field("Shipping No. Series"; Rec."Shipping No. Series")
                {
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                }
                field(Reserve; Rec.Reserve)
                {
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Invoice Discount Calculation"; Rec."Invoice Discount Calculation")
                {
                }
                field("Invoice Discount Value"; Rec."Invoice Discount Value")
                {
                }
                field("Send IC Document"; Rec."Send IC Document")
                {
                }
                field("IC Status"; Rec."IC Status")
                {
                }
                field("Sell-to IC Partner Code"; Rec."Sell-to IC Partner Code")
                {
                }
                field("Bill-to IC Partner Code"; Rec."Bill-to IC Partner Code")
                {
                }
                field("IC Direction"; Rec."IC Direction")
                {
                }
                field("Prepayment %"; Rec."Prepayment %")
                {
                }
                field("Prepayment No. Series"; Rec."Prepayment No. Series")
                {
                }
                field("Compress Prepayment"; Rec."Compress Prepayment")
                {
                }
                field("Prepayment Due Date"; Rec."Prepayment Due Date")
                {
                }
                field("Prepmt. Cr. Memo No. Series"; Rec."Prepmt. Cr. Memo No. Series")
                {
                }
                field("Prepmt. Posting Description"; Rec."Prepmt. Posting Description")
                {
                }
                field("Prepmt. Pmt. Discount Date"; Rec."Prepmt. Pmt. Discount Date")
                {
                }
                field("Prepmt. Payment Terms Code"; Rec."Prepmt. Payment Terms Code")
                {
                }
                field("Prepmt. Payment Discount %"; Rec."Prepmt. Payment Discount %")
                {
                }
                field("Quote No."; Rec."Quote No.")
                {
                }
                field("Quote Valid Until Date"; Rec."Quote Valid Until Date")
                {
                }
                field("Quote Sent to Customer"; Rec."Quote Sent to Customer")
                {
                }
                field("Quote Accepted"; Rec."Quote Accepted")
                {
                }
                field("Quote Accepted Date"; Rec."Quote Accepted Date")
                {
                }
                field("Job Queue Status"; Rec."Job Queue Status")
                {
                }
                field("Job Queue Entry ID"; Rec."Job Queue Entry ID")
                {
                }
                field("Incoming Document Entry No."; Rec."Incoming Document Entry No.")
                {
                }
                field("Last Email Sent Time"; Rec."Last Email Sent Time")
                {
                }
                field("Last Email Sent Status"; Rec."Last Email Sent Status")
                {
                }
                field("Sent as Email"; Rec."Sent as Email")
                {
                }
                field("Last Email Notif Cleared"; Rec."Last Email Notif Cleared")
                {
                }
                field(IsTest; Rec.IsTest)
                {
                }
                field("Sell-to Phone No."; Rec."Sell-to Phone No.")
                {
                }
                field("Sell-to E-Mail"; Rec."Sell-to E-Mail")
                {
                }
                field("Payment Instructions Id"; Rec."Payment Instructions Id")
                {
                }
                field("Work Description"; Rec."Work Description")
                {
                }
                field("Amt. Ship. Not Inv. (LCY)"; Rec."Amt. Ship. Not Inv. (LCY)")
                {
                }
                field("Amt. Ship. Not Inv. (LCY) Base"; Rec."Amt. Ship. Not Inv. (LCY) Base")
                {
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                }
                field("Payment Service Set ID"; Rec."Payment Service Set ID")
                {
                }
                field("Direct Debit Mandate ID"; Rec."Direct Debit Mandate ID")
                {
                }
                field("Invoice Discount Amount"; Rec."Invoice Discount Amount")
                {
                }
                field("No. of Archived Versions"; Rec."No. of Archived Versions")
                {
                }
                field("Doc. No. Occurrence"; Rec."Doc. No. Occurrence")
                {
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                }
                field("Sell-to Customer Template Code"; Rec."Sell-to Customer Template Code")
                {
                }
                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                }
                field("Bill-to Contact No."; Rec."Bill-to Contact No.")
                {
                }
                field("Bill-to Customer Template Code"; Rec."Bill-to Customer Template Code")
                {
                }
                field("Opportunity No."; Rec."Opportunity No.")
                {
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                }
                field("Shipping Advice"; Rec."Shipping Advice")
                {
                }
                field("Shipped Not Invoiced"; Rec."Shipped Not Invoiced")
                {
                }
                field("Completely Shipped"; Rec."Completely Shipped")
                {
                }
                field("Posting from Whse. Ref."; Rec."Posting from Whse. Ref.")
                {
                }
                field("Location Filter"; Rec."Location Filter")
                {
                }
                field(Shipped; Rec.Shipped)
                {
                }
                field("Last Shipment Date"; Rec."Last Shipment Date")
                {
                }
                field("Requested Delivery Date"; Rec."Requested Delivery Date")
                {
                }
                field("Promised Delivery Date"; Rec."Promised Delivery Date")
                {
                }
                field("Shipping Time"; Rec."Shipping Time")
                {
                }
                field("Outbound Whse. Handling Time"; Rec."Outbound Whse. Handling Time")
                {
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                }
                field("Late Order Shipping"; Rec."Late Order Shipping")
                {
                }
                field("Date Filter"; Rec."Date Filter")
                {
                }
                field(Receive; Rec.Receive)
                {
                }
                field("Return Receipt No."; Rec."Return Receipt No.")
                {
                }
                field("Return Receipt No. Series"; Rec."Return Receipt No. Series")
                {
                }
                field("Last Return Receipt No."; Rec."Last Return Receipt No.")
                {
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                }
                field("Get Shipment Used"; Rec."Get Shipment Used")
                {
                }
                field(Id; Rec.Id)
                {
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field("Order Type"; Rec."Order Type")
                {
                }
                field("First User ID"; Rec."First User ID")
                {
                }
                field("Last User ID"; Rec."Last User ID")
                {
                }
                field(Modified; Rec.Modified)
                {
                }
                field("Address 3"; Rec."Address 3")
                {
                }
                field("P.O.Box"; Rec."P.O.Box")
                {
                }
                field("Del.Add. 3"; Rec."Del.Add. 3")
                {
                }
                field("Del.P.O.Box"; Rec."Del.P.O.Box")
                {
                }
                field("Status(DOS)"; Rec."Status(DOS)")
                {
                }
                field("xForeign Currency"; Rec."xForeign Currency")
                {
                }
                field(xStatus; Rec.xStatus)
                {
                }
                field("Send for Approval"; Rec."Send for Approval")
                {
                }
                field(Sender; Rec.Sender)
                {
                }
                field("Send to"; Rec."Send to")
                {
                }
                field(Approved; Rec.Approved)
                {
                }
                field("Sent Time"; Rec."Sent Time")
                {
                }
                field("Approved Time"; Rec."Approved Time")
                {
                }
                field("Mail Body"; Rec."Mail Body")
                {
                }
                field("Approved By"; Rec."Approved By")
                {
                }
                field("User Department"; Rec."User Department")
                {
                }
                field("1st Approval to"; Rec."1st Approval to")
                {
                }
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
                field("2nd Approval to"; Rec."2nd Approval to")
                {
                }
                field("2nd Approver"; Rec."2nd Approver")
                {
                }
                field("2nd Apprv. Status"; Rec."2nd Apprv. Status")
                {
                }
                field("2nd Approval Time"; Rec."2nd Approval Time")
                {
                }
                field("2nd Approver's Comment"; Rec."2nd Approver's Comment")
                {
                }
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
                field("Current pending Person"; Rec."Current pending Person")
                {
                }
                field(Attachment; Rec.Attachment)
                {
                }
                field("Send for 2nd Apprv."; Rec."Send for 2nd Apprv.")
                {
                }
                field("Send for 3rd Apprv."; Rec."Send for 3rd Apprv.")
                {
                }
                field("Foreign Currency"; Rec."Foreign Currency")
                {
                }
                field("Tracker No."; Rec."Tracker No.")
                {
                }
                field("Include Accessory"; Rec."Include Accessory")
                {
                }
                field("Shelf No."; Rec."Shelf No.")
                {
                }
                field("Sales Time"; Rec."Sales Time")
                {
                }
                field(Posting_Time; Rec.Posting_Time)
                {
                }
                field("Online Order"; Rec."Online Order")
                {
                }
                field("Customer Line discount"; Rec."Customer Line discount")
                {
                }
                field("Serial No"; Rec."Serial No")
                {
                }
                field("Inventory Group"; Rec."Inventory Group")
                {
                }
                field("Finance Apprv Status"; Rec."Finance Apprv Status")
                {
                }
                field("Finance Send to"; Rec."Finance Send to")
                {
                }
                field("Marketing Send To"; Rec."Marketing Send To")
                {
                }
                field("Marketing Apprv Status"; Rec."Marketing Apprv Status")
                {
                }
                field("Logistics Send to"; Rec."Logistics Send to")
                {
                }
                field("Logistics Apprv Status"; Rec."Logistics Apprv Status")
                {
                }
                field("Logistics Sent Time"; Rec."Logistics Sent Time")
                {
                }
                field("Logistics Approved Time"; Rec."Logistics Approved Time")
                {
                }
                field("Logistics Approved By"; Rec."Logistics Approved By")
                {
                }
                field("Logistics Sender"; Rec."Logistics Sender")
                {
                }
                field("Logistic Sent Time"; Rec."Logistic Sent Time")
                {
                }
                field("Finance Approved By"; Rec."Finance Approved By")
                {
                }
                field("Marketing Sender"; Rec."Marketing Sender")
                {
                }
                field("Marketing Sent Time"; Rec."Marketing Sent Time")
                {
                }
                field("Finance Approved Time"; Rec."Finance Approved Time")
                {
                }
                field("Marketing Approved By"; Rec."Marketing Approved By")
                {
                }
                field("Marketing Approved Time"; Rec."Marketing Approved Time")
                {
                }
                field("Retail Cost"; Rec."Retail Cost")
                {
                }
                field("Original Profit"; Rec."Original Profit")
                {
                }
                field("Original Profit %"; Rec."Original Profit %")
                {
                }
                field("HOD Logistics Signature"; Rec."HOD Logistics Signature")
                {
                }
                field("HOD Finance Signature"; Rec."HOD Finance Signature")
                {
                }
                field("HOD Marketing Signature"; Rec."HOD Marketing Signature")
                {
                }
                field("Logistics Send for Approval"; Rec."Logistics Send for Approval")
                {
                }
                field("Customer Preferred Name"; Rec."Customer Preferred Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

