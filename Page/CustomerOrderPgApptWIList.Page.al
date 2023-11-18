page 70085 "Customer Order Pg Appt/WI List"
{
    CardPageID = "Customer Order Pg Appt/WI Card";
    Editable = false;
    PageType = List;
    SourceTable = Table50119;
    SourceTableView = WHERE (Service Type=CONST(General Workshop),
                            Delivered=CONST(No),
                            For Part Arrival=CONST(Yes),
                            For Production=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer Order Form No.";"Customer Order Form No.")
                {
                }
                field("Reception Date";"Reception Date")
                {
                }
                field("Reception Time";"Reception Time")
                {
                }
                field("Reception Type";"Reception Type")
                {
                }
                field("Courtesy Vehicle";"Courtesy Vehicle")
                {
                }
                field("Delivery Type";"Delivery Type")
                {
                }
                field("Customer No.";"Customer No.")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field(Address;Address)
                {
                }
                field("Telephone No.";"Telephone No.")
                {
                }
                field(Address2;Address2)
                {
                }
                field("Customer Order Form Date";"Customer Order Form Date")
                {
                }
                field("Confirmation Date";"Confirmation Date")
                {
                }
                field("Confirmation Time";"Confirmation Time")
                {
                }
                field("Confirmation Staff Name";"Confirmation Staff Name")
                {
                }
                field("Parts Ordered Date";"Parts Ordered Date")
                {
                }
                field("Parts Ordered Time";"Parts Ordered Time")
                {
                }
                field("Parts Ordered Staff Name";"Parts Ordered Staff Name")
                {
                }
                field("Parts Arrived Date";"Parts Arrived Date")
                {
                }
                field("Parts Arrived Time";"Parts Arrived Time")
                {
                }
                field("Parts Arrived Staff Name";"Parts Arrived Staff Name")
                {
                }
                field("Model No";"Model No")
                {
                }
                field("Model Name";"Model Name")
                {
                }
                field("Vehicle Registration No.";"Vehicle Registration No.")
                {
                }
                field("Contact Telephone No.";"Contact Telephone No.")
                {
                }
                field("Contact Telephone No. Type";"Contact Telephone No. Type")
                {
                }
                field("Available Time From";"Available Time From")
                {
                }
                field("Available Time To";"Available Time To")
                {
                }
                field("Vehicle Driven By";"Vehicle Driven By")
                {
                }
                field("Vehicle Driven By Type";"Vehicle Driven By Type")
                {
                }
                field("If Other Type";"If Other Type")
                {
                }
                field("Odometer Reading At Appointmen";"Odometer Reading At Appointmen")
                {
                }
                field("Vehicle Registered Date";"Vehicle Registered Date")
                {
                }
                field("Frame No./VIN";"Frame No./VIN")
                {
                }
                field("(Engine No)";"(Engine No)")
                {
                }
                field("E-mail";"E-mail")
                {
                }
                field("Current Service Due Date";"Current Service Due Date")
                {
                }
                field("Current Service Kilometre";"Current Service Kilometre")
                {
                }
                field("Job Type";"Job Type")
                {
                }
                field("Odometer Reading";"Odometer Reading")
                {
                }
                field("Service History";"Service History")
                {
                }
                field("SSC/SC Information";"SSC/SC Information")
                {
                }
                field("Customer's Requests";"Customer's Requests")
                {
                }
                field(Maintenance;Maintenance)
                {
                }
                field("General Repair";"General Repair")
                {
                }
                field(Internal;Internal)
                {
                }
                field(Warranty;Warranty)
                {
                }
                field("Customer Waiting";"Customer Waiting")
                {
                }
                field("Repeat Repair";"Repeat Repair")
                {
                }
                field("Job Details";"Job Details")
                {
                }
                field("Appointment Date";"Appointment Date")
                {
                }
                field("Appointment Time";"Appointment Time")
                {
                }
                field("Appointment Staff Name";"Appointment Staff Name")
                {
                }
                field("Estimated Job Time";"Estimated Job Time")
                {
                }
                field("Time Changed";"Time Changed")
                {
                }
                field("Model Year";"Model Year")
                {
                }
                field("Cost Changed";"Cost Changed")
                {
                }
                field("Appointment Offering 1 Date";"Appointment Offering 1 Date")
                {
                }
                field("Appointment Offering 1 Time";"Appointment Offering 1 Time")
                {
                }
                field("Appointment Offering 2 Date";"Appointment Offering 2 Date")
                {
                }
                field("Appointment Offering 2 Time";"Appointment Offering 2 Time")
                {
                }
                field(Quantity1;Quantity1)
                {
                }
                field(Quantity2;Quantity2)
                {
                }
                field(Stock1;Stock1)
                {
                }
                field(Stock2;Stock2)
                {
                }
                field(ETA1;ETA1)
                {
                }
                field(ETA2;ETA2)
                {
                }
                field("Walk Around Check";"Walk Around Check")
                {
                }
                field("Additional Job Confirmation";"Additional Job Confirmation")
                {
                }
                field("Car Wash";"Car Wash")
                {
                }
                field(Valuables;Valuables)
                {
                }
                field("Present Estimate w/Explanation";"Present Estimate w/Explanation")
                {
                }
                field(Memo;Memo)
                {
                }
                field("Courtesy Items";"Courtesy Items")
                {
                }
                field("Payment Method";"Payment Method")
                {
                }
                field("If Other Method";"If Other Method")
                {
                }
                field("Odometer Reading At Reception";"Odometer Reading At Reception")
                {
                }
                field("Walk Around Reception Date";"Walk Around Reception Date")
                {
                }
                field("Walk Around Reception Time";"Walk Around Reception Time")
                {
                }
                field("Reception Staff Name";"Reception Staff Name")
                {
                }
                field("Customer Signature";"Customer Signature")
                {
                }
                field("Expected Delivery Date";"Expected Delivery Date")
                {
                }
                field("Expected Delivery Time";"Expected Delivery Time")
                {
                }
                field("If Other Customer's Requests";"If Other Customer's Requests")
                {
                }
                field(Estimation;Estimation)
                {
                }
                field("Replace Parts Keep";"Replace Parts Keep")
                {
                }
                field("No. Series";"No. Series")
                {
                }
                field(Maintenance2;Maintenance2)
                {
                }
                field("Customer Name2";"Customer Name2")
                {
                }
                field("Customer Address";"Customer Address")
                {
                }
                field("Customer Address2";"Customer Address2")
                {
                }
                field("Customer Telephone No.";"Customer Telephone No.")
                {
                }
                field("Model Name2";"Model Name2")
                {
                }
                field("Vehicle Registration No.2";"Vehicle Registration No.2")
                {
                }
                field("Update Customer Record";"Update Customer Record")
                {
                }
                field("Seat Cover";"Seat Cover")
                {
                }
                field("Floor Mat";"Floor Mat")
                {
                }
                field("Job No.1";"Job No.1")
                {
                }
                field("Job No.2";"Job No.2")
                {
                }
                field("Job No.3";"Job No.3")
                {
                }
                field(Odometer1;Odometer1)
                {
                }
                field(Odometer2;Odometer2)
                {
                }
                field(Odometer3;Odometer3)
                {
                }
                field(Date1;Date1)
                {
                }
                field(Date2;Date2)
                {
                }
                field(Date3;Date3)
                {
                }
                field("Item No.";"Item No.")
                {
                }
                field(Description;Description)
                {
                }
                field(Quantity;Quantity)
                {
                }
                field(Stock;Stock)
                {
                }
                field(EDA;EDA)
                {
                }
                field(Cheque;Cheque)
                {
                }
                field(Cash;Cash)
                {
                }
                field("Job Description1";"Job Description1")
                {
                }
                field("Job Description2";"Job Description2")
                {
                }
                field("Job Description3";"Job Description3")
                {
                }
                field(Maintenance1;Maintenance1)
                {
                }
                field("Job Type Description";"Job Type Description")
                {
                }
                field("Contact Home";"Contact Home")
                {
                }
                field("Contact Business";"Contact Business")
                {
                }
                field("Contact Mobile";"Contact Mobile")
                {
                }
                field(Home;Home)
                {
                }
                field(Business;Business)
                {
                }
                field(Mobile;Mobile)
                {
                }
                field("Estimate No.";"Estimate No.")
                {
                }
                field("Total Estimation";"Total Estimation")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field("Feeding Location";"Feeding Location")
                {
                }
                field("Estimate Factor";"Estimate Factor")
                {
                }
                field("Add. Jobs Estimation";"Add. Jobs Estimation")
                {
                }
                field(Total;Total)
                {
                }
                field("Service Location";"Service Location")
                {
                }
                field("Customer Type";"Customer Type")
                {
                }
                field(Other;Other)
                {
                }
                field("Walk-around Check";"Walk-around Check")
                {
                }
                field("If Other Delivery Type";"If Other Delivery Type")
                {
                }
                field("Job Instruction No.";"Job Instruction No.")
                {
                }
                field("Job Instruction Date";"Job Instruction Date")
                {
                }
                field("Estimated Completion Date";"Estimated Completion Date")
                {
                }
                field("Estimated Completion Time";"Estimated Completion Time")
                {
                }
                field("Key Assigned No.";"Key Assigned No.")
                {
                }
                field("Stall No.";"Stall No.")
                {
                }
                field("Job Start Date";"Job Start Date")
                {
                }
                field("Job Start Time";"Job Start Time")
                {
                }
                field("Completion Changed Date";"Completion Changed Date")
                {
                }
                field("Completion Changed Time";"Completion Changed Time")
                {
                }
                field("Delivery Changed Date";"Delivery Changed Date")
                {
                }
                field("Delivery Changed Time";"Delivery Changed Time")
                {
                }
                field("CC Date";"CC Date")
                {
                }
                field("CC Time";"CC Time")
                {
                }
                field("CC Staff Name";"CC Staff Name")
                {
                }
                field("JC Date";"JC Date")
                {
                }
                field("JC Time";"JC Time")
                {
                }
                field("Actual Hours Clocked";"Actual Hours Clocked")
                {
                }
                field("Other Findings/Advice";"Other Findings/Advice")
                {
                }
                field("QC Staff";"QC Staff")
                {
                }
                field("Pre-d C Staff Name";"Pre-d C Staff Name")
                {
                }
                field("Pre-d C Confirmed by";"Pre-d C Confirmed by")
                {
                }
                field(Cleanliness;Cleanliness)
                {
                }
                field("Cleanliness Type";"Cleanliness Type")
                {
                }
                field(Cleanliness2;Cleanliness2)
                {
                }
                field("Courtesy Items Removal";"Courtesy Items Removal")
                {
                }
                field("Courtesy Items Removal2";"Courtesy Items Removal2")
                {
                }
                field("Outer Minor P / Seat P";"Outer Minor P / Seat P")
                {
                }
                field("Outer Minor P / Seat P2";"Outer Minor P / Seat P2")
                {
                }
                field("Clock Adj / Radio Setting";"Clock Adj / Radio Setting")
                {
                }
                field("Clock Adj / Radio Setting2";"Clock Adj / Radio Setting2")
                {
                }
                field("Job CN Date";"Job CN Date")
                {
                }
                field("Job CN Time";"Job CN Time")
                {
                }
                field("Job CN Staff Name";"Job CN Staff Name")
                {
                }
                field("Job Details Explanation";"Job Details Explanation")
                {
                }
                field("Fee Explanation";"Fee Explanation")
                {
                }
                field("Results Confirmation w / Cust.";"Results Confirmation w / Cust.")
                {
                }
                field("P.S.F.U. (Plan)";"P.S.F.U. (Plan)")
                {
                }
                field("Level-up";"Level-up")
                {
                }
                field("JRE Staff Code";"JRE Staff Code")
                {
                }
                field("Actual Delivery Date";"Actual Delivery Date")
                {
                }
                field("Actual Delivery Time";"Actual Delivery Time")
                {
                }
                field("Delivery Customer";"Delivery Customer")
                {
                }
                field("If Other Customer";"If Other Customer")
                {
                }
                field("Delivery Staff Name";"Delivery Staff Name")
                {
                }
                field("P.S.F.U. Staff Name";"P.S.F.U. Staff Name")
                {
                }
                field("P.S.F.U. Confirmed by";"P.S.F.U. Confirmed by")
                {
                }
                field("Job Type2";"Job Type2")
                {
                }
                field("Parts Desciption";"Parts Desciption")
                {
                }
                field("Job Category";"Job Category")
                {
                }
                field("If Other Job Category";"If Other Job Category")
                {
                }
                field(Fixed;Fixed)
                {
                }
                field("No Fixed";"No Fixed")
                {
                }
                field("P.S.F.U. (Plan) Date";"P.S.F.U. (Plan) Date")
                {
                }
                field("P.S.F.U. (Plan) Time";"P.S.F.U. (Plan) Time")
                {
                }
                field("P.S.F.U Other";"P.S.F.U Other")
                {
                }
                field("P.S.F.U. (Actual) Date";"P.S.F.U. (Actual) Date")
                {
                }
                field("P.S.F.U. (Actual) Time";"P.S.F.U. (Actual) Time")
                {
                }
                field("CT Home";"CT Home")
                {
                }
                field("CT Mobile";"CT Mobile")
                {
                }
                field("CT Business";"CT Business")
                {
                }
                field("Contact Telephone";"Contact Telephone")
                {
                }
                field("JI E-mail";"JI E-mail")
                {
                }
                field("JI Other";"JI Other")
                {
                }
                field("JI Other II";"JI Other II")
                {
                }
                field("JI EMail2";"JI EMail2")
                {
                }
                field("Service Type";"Service Type")
                {
                }
                field("Other Payment Type";"Other Payment Type")
                {
                }
                field("Reception Date2";"Reception Date2")
                {
                }
                field("Reception Time2";"Reception Time2")
                {
                }
                field("Customer Intention/Job Details";"Customer Intention/Job Details")
                {
                }
                field("Customer and Vehicle Info";"Customer and Vehicle Info")
                {
                }
                field(Score;Score)
                {
                }
                field("Adjust Veh Reception DateTime";"Adjust Veh Reception DateTime")
                {
                }
                field("Confirm Contact Info/Driver";"Confirm Contact Info/Driver")
                {
                }
                field("Enter Recptn Appntmt DateTime";"Enter Recptn Appntmt DateTime")
                {
                }
                field("Print Customer and Veh. Info";"Print Customer and Veh. Info")
                {
                }
                field("Print Estimate I";"Print Estimate I")
                {
                }
                field("Parts Req./Completion DateTime";"Parts Req./Completion DateTime")
                {
                }
                field("Recptn Confirm/Payment Method";"Recptn Confirm/Payment Method")
                {
                }
                field("Parts Ordering/Completion Date";"Parts Ordering/Completion Date")
                {
                }
                field("Preparation Status Parts Req.";"Preparation Status Parts Req.")
                {
                }
                field("Confirm and Enter Odometer";"Confirm and Enter Odometer")
                {
                }
                field("Conduct/Entrer Walkaround Chec";"Conduct/Entrer Walkaround Chec")
                {
                }
                field("Add Job, Valuabes/ Courtesy It";"Add Job, Valuabes/ Courtesy It")
                {
                }
                field("Present Estimate I and Xplain";"Present Estimate I and Xplain")
                {
                }
                field("Enter Veh Delivery DateTime";"Enter Veh Delivery DateTime")
                {
                }
                field("Reconfirm Payment Method";"Reconfirm Payment Method")
                {
                }
                field("Confirm if Car wash is needed";"Confirm if Car wash is needed")
                {
                }
                field("Necessity of returnin Repl Par";"Necessity of returnin Repl Par")
                {
                }
                field("Recptn Detl/Completio DateTime";"Recptn Detl/Completio DateTime")
                {
                }
                field("Obtain Customer Signature";"Obtain Customer Signature")
                {
                }
                field("Technician Name";"Technician Name")
                {
                }
                field(Delivered;Delivered)
                {
                }
                field("Service Advisor";"Service Advisor")
                {
                }
                field("Create Service Order";"Create Service Order")
                {
                }
                field("Service Order No.";"Service Order No.")
                {
                }
                field("Post Service Invoice";"Post Service Invoice")
                {
                }
                field(Teams;Teams)
                {
                }
                field(Status;Status)
                {
                }
                field("Job Opened";"Job Opened")
                {
                }
                field("Service Advisor's Name";"Service Advisor's Name")
                {
                }
                field(Estimate;Estimate)
                {
                }
                field("Additional Job Details";"Additional Job Details")
                {
                }
                field("Next Job Type";"Next Job Type")
                {
                }
                field("Next Service Date";"Next Service Date")
                {
                }
                field(Technician;Technician)
                {
                }
                field("Quality Control Staff Code";"Quality Control Staff Code")
                {
                }
                field("Job Progress";"Job Progress")
                {
                }
                field("JRE Staff Name";"JRE Staff Name")
                {
                }
                field("Total Appointment Time";"Total Appointment Time")
                {
                }
                field("Total Rem Appt Time";"Total Rem Appt Time")
                {
                }
                field("Total Walk in Time";"Total Walk in Time")
                {
                }
                field("Total Rem W/I Time";"Total Rem W/I Time")
                {
                }
                field("Customer Complaint";"Customer Complaint")
                {
                }
                field("Service Duration";"Service Duration")
                {
                }
                field("Diag/Est";"Diag/Est")
                {
                }
                field("B & P";"B & P")
                {
                }
                field("Priority Class";"Priority Class")
                {
                }
                field(Memo2;Memo2)
                {
                }
                field(Rescheduling;Rescheduling)
                {
                }
                field("New Customer";"New Customer")
                {
                }
                field("For Delivery Preparation";"For Delivery Preparation")
                {
                }
                field("For Invoice";"For Invoice")
                {
                }
                field("Appt Confirmed";"Appt Confirmed")
                {
                }
                field("For Part Order";"For Part Order")
                {
                }
                field("For Part Arrival";"For Part Arrival")
                {
                }
                field("For Reception";"For Reception")
                {
                }
                field("For Production";"For Production")
                {
                }
                field("For Quality Control";"For Quality Control")
                {
                }
                field("For Payment";"For Payment")
                {
                }
                field("Transfer to TA";"Transfer to TA")
                {
                }
                field("TA Code";"TA Code")
                {
                }
                field("TA Name";"TA Name")
                {
                }
                field("Shortcut Dimension 1 Code";"Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code";"Shortcut Dimension 2 Code")
                {
                }
                field("Request Batch Name";"Request Batch Name")
                {
                }
                field("Parts Arrived";"Parts Arrived")
                {
                }
                field("For Appt Confirmation";"For Appt Confirmation")
                {
                }
                field("SSC Available";"SSC Available")
                {
                }
                field(DateDiff;DateDiff)
                {
                }
                field("Order Line Updated";"Order Line Updated")
                {
                }
                field("Est. Req. Batch Name";"Est. Req. Batch Name")
                {
                }
                field("FA No.";"FA No.")
                {
                }
                field("Labour Estimate";"Labour Estimate")
                {
                }
                field("Item Estimate";"Item Estimate")
                {
                }
                field("Date Delivered";"Date Delivered")
                {
                }
                field("Time Delivered";"Time Delivered")
                {
                }
                field(VDS;VDS)
                {
                }
                field(VIS;VIS)
                {
                }
                field(VMI;VMI)
                {
                }
                field("Customer Order Form Type";"Customer Order Form Type")
                {
                }
                field("Service Req. Code";"Service Req. Code")
                {
                }
                field("VRI Estimate Approved";"VRI Estimate Approved")
                {
                }
                field("COF Origin";"COF Origin")
                {
                }
                field("Fuel Level";"Fuel Level")
                {
                }
                field("No VAT";"No VAT")
                {
                }
            }
        }
    }

    actions
    {
    }
}

