page 70065 "Posted COF List"
{
    CardPageID = "Posted Service Order COF";
    Editable = false;
    PageType = List;
    SourceTable = Table5900;
    SourceTableView = WHERE (Document Type=FILTER(Order),
                            Posted=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type";"Document Type")
                {
                }
                field("Customer No.";"Customer No.")
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
                field(Comment;Comment)
                {
                }
                field("No. Printed";"No. Printed")
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
                field("VAT Registration No.";"VAT Registration No.")
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
                field(Name;Name)
                {
                }
                field("Name 2";"Name 2")
                {
                }
                field(Address;Address)
                {
                }
                field("Address 2";"Address 2")
                {
                }
                field(City;City)
                {
                }
                field("Contact Name";"Contact Name")
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
                field("Post Code";"Post Code")
                {
                }
                field(County;County)
                {
                }
                field("Country/Region Code";"Country/Region Code")
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
                field("Release Status";"Release Status")
                {
                }
                field("Dimension Set ID";"Dimension Set ID")
                {
                }
                field("Contact No.";"Contact No.")
                {
                }
                field("Bill-to Contact No.";"Bill-to Contact No.")
                {
                }
                field("Responsibility Center";"Responsibility Center")
                {
                }
                field("Shipping Advice";"Shipping Advice")
                {
                }
                field("Completely Shipped";"Completely Shipped")
                {
                }
                field("Location Filter";"Location Filter")
                {
                }
                field("Shipping Time";"Shipping Time")
                {
                }
                field("Shipping Agent Service Code";"Shipping Agent Service Code")
                {
                }
                field("Date Filter";"Date Filter")
                {
                }
                field(Description;Description)
                {
                }
                field("Service Order Type";"Service Order Type")
                {
                }
                field("Link Service to Service Item";"Link Service to Service Item")
                {
                }
                field(Priority;Priority)
                {
                }
                field("Allocated Hours";"Allocated Hours")
                {
                }
                field("Phone No.";"Phone No.")
                {
                }
                field("E-Mail";"E-Mail")
                {
                }
                field("Phone No. 2";"Phone No. 2")
                {
                }
                field("Fax No.";"Fax No.")
                {
                }
                field("No. of Unallocated Items";"No. of Unallocated Items")
                {
                }
                field("Order Time";"Order Time")
                {
                }
                field("Default Response Time (Hours)";"Default Response Time (Hours)")
                {
                }
                field("Actual Response Time (Hours)";"Actual Response Time (Hours)")
                {
                }
                field("Service Time (Hours)";"Service Time (Hours)")
                {
                }
                field("Response Date";"Response Date")
                {
                }
                field("Response Time";"Response Time")
                {
                }
                field("Starting Date";"Starting Date")
                {
                }
                field("Starting Time";"Starting Time")
                {
                }
                field("Finishing Date";"Finishing Date")
                {
                }
                field("Finishing Time";"Finishing Time")
                {
                }
                field("Contract Serv. Hours Exist";"Contract Serv. Hours Exist")
                {
                }
                field("Reallocation Needed";"Reallocation Needed")
                {
                }
                field("Notify Customer";"Notify Customer")
                {
                }
                field("Max. Labor Unit Price";"Max. Labor Unit Price")
                {
                }
                field("Warning Status";"Warning Status")
                {
                }
                field("No. of Allocations";"No. of Allocations")
                {
                }
                field("Contract No.";"Contract No.")
                {
                }
                field("Type Filter";"Type Filter")
                {
                }
                field("Customer Filter";"Customer Filter")
                {
                }
                field("Resource Filter";"Resource Filter")
                {
                }
                field("Contract Filter";"Contract Filter")
                {
                }
                field("Ship-to Fax No.";"Ship-to Fax No.")
                {
                }
                field("Ship-to E-Mail";"Ship-to E-Mail")
                {
                }
                field("Resource Group Filter";"Resource Group Filter")
                {
                }
                field("Ship-to Phone";"Ship-to Phone")
                {
                }
                field("Ship-to Phone 2";"Ship-to Phone 2")
                {
                }
                field("Service Zone Filter";"Service Zone Filter")
                {
                }
                field("Service Zone Code";"Service Zone Code")
                {
                }
                field("Expected Finishing Date";"Expected Finishing Date")
                {
                }
                field("Allow Line Disc.";"Allow Line Disc.")
                {
                }
                field("Assigned User ID";"Assigned User ID")
                {
                }
                field("Quote No.";"Quote No.")
                {
                }
                field("Open Job Card";"Open Job Card")
                {
                }
                field("Estimate Reference";"Estimate Reference")
                {
                }
                field("Job Posting Group";"Job Posting Group")
                {
                }
                field("FA No.";"FA No.")
                {
                }
                field("Spare Usage(Price)";"Spare Usage(Price)")
                {
                }
                field(Mileage;Mileage)
                {
                }
                field("Appointment No.";"Appointment No.")
                {
                }
                field("Reception No.";"Reception No.")
                {
                }
                field("Appointment Date";"Appointment Date")
                {
                }
                field("User ID";"User ID")
                {
                }
                field("Vehicle Registration No.";"Vehicle Registration No.")
                {
                }
                field(Model;Model)
                {
                }
                field(Chassis;Chassis)
                {
                }
                field("Engine No.";"Engine No.")
                {
                }
                field("Odometer Reading Reception";"Odometer Reading Reception")
                {
                }
                field("Workshop Store Rq. No";"Workshop Store Rq. No")
                {
                }
                field("Job Details";"Job Details")
                {
                }
                field(Make;Make)
                {
                }
                field("Service Advisor";"Service Advisor")
                {
                }
                field("Service Advisor's Name";"Service Advisor's Name")
                {
                }
                field("External Document No";"External Document No")
                {
                }
                field("Job No.";"Job No.")
                {
                }
                field("Model Year";"Model Year")
                {
                }
                field("Job Type";"Job Type")
                {
                }
                field(Department;Department)
                {
                }
                field(Released;Released)
                {
                }
                field(Confirmed;Confirmed)
                {
                }
                field("Reception Date";"Reception Date")
                {
                }
                field("Reception Time";"Reception Time")
                {
                }
                field("Delivery Date";"Delivery Date")
                {
                }
                field("Delivery Time";"Delivery Time")
                {
                }
                field("Customer's Requests";"Customer's Requests")
                {
                }
                field("FA Reg. No.";"FA Reg. No.")
                {
                }
                field("Maintenance Code";"Maintenance Code")
                {
                }
                field(Posted;Posted)
                {
                }
                field(Confirmation;Confirmation)
                {
                }
                field("Labour(Hrs)";"Labour(Hrs)")
                {
                }
                field(Parts;Parts)
                {
                }
                field("Labour Cost";"Labour Cost")
                {
                }
                field(PM;PM)
                {
                }
                field(GR;GR)
                {
                }
                field(Others;Others)
                {
                }
                field(Warranty;Warranty)
                {
                }
                field(Internal;Internal)
                {
                }
                field("D/Estimate";"D/Estimate")
                {
                }
                field("B&P";"B&P")
                {
                }
                field("B&P Estimate";"B&P Estimate")
                {
                }
                field(Painting;Painting)
                {
                }
                field("Additional Job Details";"Additional Job Details")
                {
                }
            }
        }
    }

    actions
    {
    }
}

