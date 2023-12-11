page 70065 "Posted COF List"
{
    CardPageID = "Posted Service Order COF";
    Editable = false;
    PageType = List;
    SourceTable = "Service Header";
    SourceTableView = WHERE("Document Type" = FILTER(Order),
                            Posted = filter(true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; Rec."Document Type")
                {
                }
                field("Customer No."; Rec."Customer No.")
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
                field(Comment; Rec.Comment)
                {
                }
                field("No. Printed"; Rec."No. Printed")
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
                field("VAT Registration No."; Rec."VAT Registration No.")
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
                field(Name; Rec.Name)
                {
                }
                field("Name 2"; Rec."Name 2")
                {
                }
                field(Address; Rec.Address)
                {
                }
                field("Address 2"; Rec."Address 2")
                {
                }
                field(City; Rec.City)
                {
                }
                field("Contact Name"; Rec."Contact Name")
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
                field("Post Code"; Rec."Post Code")
                {
                }
                field(County; Rec.County)
                {
                }
                field("Country/Region Code"; Rec."Country/Region Code")
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
                field(Area1; Rec.Area) { }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
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
                field("Release Status"; Rec."Release Status")
                {
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                }
                field("Contact No."; Rec."Contact No.")
                {
                }
                field("Bill-to Contact No."; Rec."Bill-to Contact No.")
                {
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                }
                field("Shipping Advice"; Rec."Shipping Advice")
                {
                }
                field("Completely Shipped"; Rec."Completely Shipped")
                {
                }
                field("Location Filter"; Rec."Location Filter")
                {
                }
                field("Shipping Time"; Rec."Shipping Time")
                {
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                }
                field("Date Filter"; Rec."Date Filter")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Service Order Type"; Rec."Service Order Type")
                {
                }
                field("Link Service to Service Item"; Rec."Link Service to Service Item")
                {
                }
                field(Priority; Rec.Priority)
                {
                }
                field("Allocated Hours"; Rec."Allocated Hours")
                {
                }
                field("Phone No."; Rec."Phone No.")
                {
                }
                field("E-Mail"; Rec."E-Mail")
                {
                }
                field("Phone No. 2"; Rec."Phone No. 2")
                {
                }
                field("Fax No."; Rec."Fax No.")
                {
                }
                field("No. of Unallocated Items"; Rec."No. of Unallocated Items")
                {
                }
                field("Order Time"; Rec."Order Time")
                {
                }
                field("Default Response Time (Hours)"; Rec."Default Response Time (Hours)")
                {
                }
                field("Actual Response Time (Hours)"; Rec."Actual Response Time (Hours)")
                {
                }
                field("Service Time (Hours)"; Rec."Service Time (Hours)")
                {
                }
                field("Response Date"; Rec."Response Date")
                {
                }
                field("Response Time"; Rec."Response Time")
                {
                }
                field("Starting Date"; Rec."Starting Date")
                {
                }
                field("Starting Time"; Rec."Starting Time")
                {
                }
                field("Finishing Date"; Rec."Finishing Date")
                {
                }
                field("Finishing Time"; Rec."Finishing Time")
                {
                }
                field("Contract Serv. Hours Exist"; Rec."Contract Serv. Hours Exist")
                {
                }
                field("Reallocation Needed"; Rec."Reallocation Needed")
                {
                }
                field("Notify Customer"; Rec."Notify Customer")
                {
                }
                field("Max. Labor Unit Price"; Rec."Max. Labor Unit Price")
                {
                }
                field("Warning Status"; Rec."Warning Status")
                {
                }
                field("No. of Allocations"; Rec."No. of Allocations")
                {
                }
                field("Contract No."; Rec."Contract No.")
                {
                }
                field("Type Filter"; Rec."Type Filter")
                {
                }
                field("Customer Filter"; Rec."Customer Filter")
                {
                }
                field("Resource Filter"; Rec."Resource Filter")
                {
                }
                field("Contract Filter"; Rec."Contract Filter")
                {
                }
                field("Ship-to Fax No."; Rec."Ship-to Fax No.")
                {
                }
                field("Ship-to E-Mail"; Rec."Ship-to E-Mail")
                {
                }
                field("Resource Group Filter"; Rec."Resource Group Filter")
                {
                }
                field("Ship-to Phone"; Rec."Ship-to Phone")
                {
                }
                field("Ship-to Phone 2"; Rec."Ship-to Phone 2")
                {
                }
                field("Service Zone Filter"; Rec."Service Zone Filter")
                {
                }
                field("Service Zone Code"; Rec."Service Zone Code")
                {
                }
                field("Expected Finishing Date"; Rec."Expected Finishing Date")
                {
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                }
                field("Quote No."; Rec."Quote No.")
                {
                }
                field("Open Job Card"; Rec."Open Job Card")
                {
                }
                field("Estimate Reference"; Rec."Estimate Reference")
                {
                }
                field("Job Posting Group"; Rec."Job Posting Group")
                {
                }
                field("FA No."; Rec."FA No.")
                {
                }
                field("Spare Usage(Price)"; Rec."Spare Usage(Price)")
                {
                }
                field(Mileage; Rec.Mileage)
                {
                }
                field("Appointment No."; Rec."Appointment No.")
                {
                }
                field("Reception No."; Rec."Reception No.")
                {
                }
                field("Appointment Date"; Rec."Appointment Date")
                {
                }
                field("User ID"; Rec."User ID")
                {
                }
                field("Vehicle Registration No."; Rec."Vehicle Registration No.")
                {
                }
                field(Model; Rec.Model)
                {
                }
                field(Chassis; Rec.Chassis)
                {
                }
                field("Engine No."; Rec."Engine No.")
                {
                }
                field("Odometer Reading Reception"; Rec."Odometer Reading Reception")
                {
                }
                field("Workshop Store Rq. No"; Rec."Workshop Store Rq. No")
                {
                }
                field("Job Details"; Rec."Job Details")
                {
                }
                field(Make; Rec.Make)
                {
                }
                field("Service Advisor"; Rec."Service Advisor")
                {
                }
                field("Service Advisor's Name"; Rec."Service Advisor's Name")
                {
                }
                field("External Document No"; Rec."External Document No")
                {
                }
                field("Job No."; Rec."Job No.")
                {
                }
                field("Model Year"; Rec."Model Year")
                {
                }
                field("Job Type"; Rec."Job Type")
                {
                }
                field(Department; Rec.Department)
                {
                }
                field(Released; Rec.Released)
                {
                }
                field(Confirmed; Rec.Confirmed)
                {
                }
                field("Reception Date"; Rec."Reception Date")
                {
                }
                field("Reception Time"; Rec."Reception Time")
                {
                }
                field("Delivery Date"; Rec."Delivery Date")
                {
                }
                field("Delivery Time"; Rec."Delivery Time")
                {
                }
                field("Customer's Requests"; Rec."Customer's Requests")
                {
                }
                field("FA Reg. No."; Rec."FA Reg. No.")
                {
                }
                field("Maintenance Code"; Rec."Maintenance Code")
                {
                }
                field(Posted; Rec.Posted)
                {
                }
                field(Confirmation; Rec.Confirmation)
                {
                }
                field("Labour(Hrs)"; Rec."Labour(Hrs)")
                {
                }
                field(Parts; Rec.Parts)
                {
                }
                field("Labour Cost"; Rec."Labour Cost")
                {
                }
                field(PM; Rec.PM)
                {
                }
                field(GR; Rec.GR)
                {
                }
                field(Others; Rec.Others)
                {
                }
                field(Warranty; Rec.Warranty)
                {
                }
                field(Internal; Rec.Internal)
                {
                }
                field("D/Estimate"; Rec."D/Estimate")
                {
                }
                field("B&P"; Rec."B&P")
                {
                }
                field("B&P Estimate"; Rec."B&P Estimate")
                {
                }
                field(Painting; Rec.Painting)
                {
                }
                field("Additional Job Details"; Rec."Additional Job Details")
                {
                }
            }
        }
    }

    actions
    {
    }
}

