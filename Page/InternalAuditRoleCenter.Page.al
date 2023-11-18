page 70102 "Internal Audit Role Center"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                part(; 70179)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("Recei&vables-Payables")
            {
                Caption = 'Recei&vables-Payables';
                Image = ReceivablesPayables;
                RunObject = Report 5;
            }
            action("Detailed Trial Balance")
            {
                Caption = 'Detailed Trial Balance';
                RunObject = Report 4;
            }
            action("&Trial Balance/Budget")
            {
                Caption = '&Trial Balance/Budget';
                Image = "Report";
                RunObject = Report 9;
            }
            action("&Closing Trial Balance")
            {
                Caption = '&Closing Trial Balance';
                Image = "Report";
                RunObject = Report 10;
            }
            action("&Fiscal Year Balance")
            {
                Caption = '&Fiscal Year Balance';
                Image = "Report";
                RunObject = Report 36;
            }
            separator()
            {
            }
            action("Inventory Valuation New")
            {
                Caption = 'Inventory Valuation New';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50379;
            }
            action("TNL Sales Contribution")
            {
                Caption = 'TNL Sales Contribution';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50184;
            }
            action("Customer Item Sales")
            {
                Caption = 'Customer Item Sales';
                Image = Item;
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 113;
            }
            action("Item History")
            {
                Caption = 'Item History';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50402;
            }
            action("Customer - &Balance")
            {
                Caption = 'Customer - &Balance';
                Image = "Report";
                RunObject = Report 121;
            }
            action("Customer - T&op 10 List")
            {
                Caption = 'Customer - T&op 10 List';
                Image = "Report";
                RunObject = Report 111;
            }
            action("Customer - S&ales List")
            {
                Caption = 'Customer - S&ales List';
                Image = "Report";
                RunObject = Report 119;
            }
            action("Sales &Statistics")
            {
                Caption = 'Sales &Statistics';
                Image = "Report";
                RunObject = Report 112;
            }
            action("Pool Car")
            {
                Caption = 'Pool Car';
                Image = "Report";
                RunObject = Report 50442;
            }
            separator()
            {
            }
            action("Vendor - &Purchase List")
            {
                Caption = 'Vendor - &Purchase List';
                Image = "Report";
                RunObject = Report 309;
            }
            action("Delivered Customer Order List")
            {
                Caption = 'Closed Jobs';
                RunObject = Page 80052;
            }
            action("WIP Customer Order List")
            {
                Caption = 'Opened Jobs';
                RunObject = Page 80043;
            }
        }
        area(embedding)
        {
            action("Account Schedules")
            {
                Caption = 'Account Schedules';
                RunObject = Page 103;
            }
            action("Analysis by Dimensions")
            {
                Caption = 'Analysis by Dimensions';
                Image = AnalysisViewDimension;
                RunObject = Page 556;
            }
            action("Sales Analysis Report")
            {
                Caption = 'Sales Analysis Report';
                RunObject = Page 9376;
                RunPageView = WHERE (Analysis Area=FILTER(Sales));
            }
            action(Budgets)
            {
                Caption = 'Budgets';
                RunObject = Page 121;
            }
            action("Sales Budgets")
            {
                Caption = 'Sales Budgets';
                RunObject = Page 7132;
                                RunPageView = WHERE(Analysis Area=FILTER(Sales));
            }
            action("Sales Quotes")
            {
                Caption = 'Sales Quotes';
                Image = Quote;
                RunObject = Page 9300;
            }
            action("Sales Orders")
            {
                Caption = 'Sales Orders';
                Image = "Order";
                RunObject = Page 9305;
            }
            action("Sales Invoices")
            {
                Caption = 'Sales Invoices';
                Image = Invoice;
                RunObject = Page 9301;
            }
            action("Sales Credit Memos")
            {
                Caption = 'Sales Credit Memos';
                RunObject = Page 9302;
            }
            action(Customers)
            {
                Caption = 'Customers';
                Image = Customer;
                RunObject = Page 22;
            }
            action(Contacts)
            {
                Caption = 'Contacts';
                Image = CustomerContact;
                RunObject = Page 5052;
            }
        }
        area(sections)
        {
            group("Pool Car Administration")
            {
                Caption = 'Pool Car Administration';
                action("New Request")
                {
                    Caption = 'New Request';
                    RunObject = Page 50592;
                }
                action("Approved Request")
                {
                    Caption = 'Approved Request';
                    RunObject = Page 50594;
                }
                action("Pool Car Allocation")
                {
                    Caption = 'Pool Car Allocation';
                    RunObject = Page 50596;
                }
            }
            group("Rejected Folder")
            {
                Caption = 'Rejected Folder';
                action("Rejected Procurement")
                {
                    Caption = 'Rejected Procurement';
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = true;
                    RunObject = Page 70149;
                }
                action("Rejected IOU")
                {
                    Caption = 'Rejected IOU';
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = true;
                    RunObject = Page 50220;
                }
            }
            group(Opex)
            {
                Caption = 'Opex';
                action(Opex)
                {
                    Caption = 'Opex';
                    RunObject = Page 70125;
                }
                action("Head of Dep. Appr. Opex")
                {
                    Caption = 'Head of Dep. Appr. Opex';
                    RunObject = Page 70131;
                }
                action("Approved Opex")
                {
                    Caption = 'Approved Opex';
                    RunObject = Page 70134;
                }
                action("Advance Payment Opex")
                {
                    Caption = 'Advance Payment Opex';
                    RunObject = Page 70135;
                }
                action("Compliance Check Opex")
                {
                    Caption = 'Compliance Check Opex';
                    RunObject = Page 70138;
                }
                action("Awaiting Balance Payment")
                {
                    Caption = 'Awaiting Balance Payment';
                    RunObject = Page 70148;
                }
                action("Balance Payment Apprv. Opex")
                {
                    Caption = 'Balance Payment Apprv. Opex';
                    RunObject = Page 70139;
                }
                action(LPO)
                {
                    Caption = 'LPO';
                    RunObject = Page 70142;
                }
                action("Payment Voucher Opex")
                {
                    Caption = 'Payment Voucher Opex';
                    RunObject = Page 70136;
                }
                action("Balance/Full Payment Approved Opex")
                {
                    Caption = 'Balance/Full Payment Approved Opex';
                    RunObject = Page 70140;
                }
                separator()
                {
                }
                action("General Manager Opex")
                {
                    Caption = 'General Manager Opex';
                    RunObject = Page 70132;
                }
                action("Managing Dir. Appr")
                {
                    Caption = 'Managing Dir. Appr.-Opex';
                    RunObject = Page 70133;
                }
                action("Head of Audit Appr Opex")
                {
                    Caption = 'Head of Audit Appr Opex';
                    RunObject = Page 70129;
                }
                action("Advanced Payment Approved")
                {
                    Caption = 'Advanced Payment Approved';
                    RunObject = Page 70145;
                }
                action("Balance/Full Payment Approved")
                {
                    Caption = 'Balance/Full Payment Approved Opex';
                    RunObject = Page 70140;
                }
                action("Balance/Full Payment Opex GM")
                {
                    Caption = 'Balance/Full Payment Opex GM';
                    RunObject = Page 70187;
                }
                action("Balance/Full Payment Opex MD")
                {
                    Caption = 'Balance/Full Payment Opex MD';
                    RunObject = Page 70186;
                }
                action("Closed Opex")
                {
                    Caption = 'Closed Opex';
                    RunObject = Page 70141;
                }
            }
            group(Capex)
            {
                Caption = 'Capex';
                action(Capex)
                {
                    Caption = 'Capex';
                    RunObject = Page 70118;
                }
                action(" LPO -Capex")
                {
                    Caption = ' LPO -Capex';
                    RunObject = Page 70165;
                }
                action("Head of Dept. Appr. Capex")
                {
                    Caption = 'Head of Dept. Appr. Capex';
                    RunObject = Page 70155;
                }
                action("Head of Audit -Capex")
                {
                    Caption = 'Head of Audit -Capex';
                    RunObject = Page 70154;
                }
                action("GM Approval Capex")
                {
                    Caption = 'GM Approval Capex';
                    RunObject = Page 70156;
                }
                action("Managing Dir. Appr.-Capex")
                {
                    Caption = 'Managing Dir. Appr.-Capex';
                    RunObject = Page 70157;
                }
                action("Advance Payment Apprv. -Capex")
                {
                    Caption = 'Advance Payment Apprv. -Capex';
                    RunObject = Page 70159;
                }
                action("Bal/Full Payment Approval")
                {
                    Caption = 'Bal/Full Payment Approval';
                    RunObject = Page 70162;
                }
                action("Bal/Full Payment GM Appr. Capex")
                {
                    Caption = 'Bal/Full Payment GM Appr. Capex';
                    RunObject = Page 70124;
                }
                action("Bal/Full Payment MD Appr. Capex")
                {
                    Caption = 'Bal/Full Payment MD Appr. Capex';
                    RunObject = Page 70119;
                }
                action("Approved Capex")
                {
                    Caption = 'Approved Capex';
                    RunObject = Page 70158;
                }
                action("Payment Voucher -Capex")
                {
                    Caption = 'Payment Voucher -Capex';
                    RunObject = Page 70160;
                }
                action("Compliance Check -Capex")
                {
                    Caption = 'Compliance Check -Capex';
                    RunObject = Page 70161;
                }
                action("Advance Payment Capex")
                {
                    Caption = 'Advance Payment Capex';
                    RunObject = Page 70168;
                }
                action("Awaiting Bal Payment -Capex")
                {
                    Caption = 'Awaiting Bal Payment -Capex';
                    RunObject = Page 70167;
                }
                action("Balance/Full Payment")
                {
                    Caption = 'Balance/Full Payment';
                    RunObject = Page 70163;
                }
                action("Closed Capex")
                {
                    Caption = 'Closed Capex';
                    RunObject = Page 70164;
                }
            }
            group("Payment Process")
            {
                Caption = 'Payment Process';
                Image = Journals;
                action("Journal Voucher")
                {
                    Caption = 'Journal Voucher';
                    Image = "Journal voucher";
                    RunObject = Page 70011;
                }
                action("IOU Request")
                {
                    RunObject = Page 70030;
                }
                action("IOU Approved")
                {
                    RunObject = Page 70032;
                }
                action("Treated IOU")
                {
                    RunObject = Page 50376;
                }
                action("IOU Retirement")
                {
                    RunObject = Page 50204;
                }
                action("IOU Retirement Approved")
                {
                    RunObject = Page 70033;
                }
                action("Posted IOU Retirement")
                {
                    RunObject = Page 70034;
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Sales Invoice")
                {
                    Caption = 'Posted Sales Invoice';
                    RunObject = Page 143;
                }
                action("Posted Sales Shipment")
                {
                    Caption = 'Posted Sales Shipment';
                    RunObject = Page 142;
                }
                action("Posted Return Shipments")
                {
                    Caption = 'Posted Return Shipments';
                    RunObject = Page 6652;
                }
                action("Posted Sales Cr. Memo")
                {
                    Caption = 'Posted Sales Cr. Memo';
                    RunObject = Page 144;
                }
            }
            group("Vehicle Delivery")
            {
                Caption = 'Vehicle Delivery';
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
                }
                action("Warranty Coupon")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 70048;
                }
            }
            group("Human Resoures")
            {
                Caption = 'Human Resoures';
                Image = ReferenceData;
                action(Employee)
                {
                    Caption = 'Employee';
                    Image = Employee;
                    RunObject = Page 5201;
                }
                action("Blocked Employee")
                {
                    Caption = 'Blocked Employee';
                    RunObject = Page 70514;
                }
                action("Absence Registration")
                {
                    Caption = 'Absence Registration';
                    Image = "Absence Registration";
                    RunObject = Page 5212;
                }
                action("Junior Appraisal")
                {
                    Caption = 'Junior Appraisal';
                    Image = "Employee Appraisal ";
                    RunObject = Page 70053;
                }
                action("Medical Record")
                {
                    Caption = 'Medical Record';
                    Image = Medical;
                    RunObject = Page 50086;
                }
                action("Behavioural Assessment")
                {
                    Caption = 'Behavioural Assessment';
                    Image = Behaviour;
                    RunObject = Page 70054;
                }
                action("Planned Leave")
                {
                    Caption = 'Planned Leave';
                    Image = "Planned Leave";
                    RunObject = Page 50097;
                }
                action("Page Leave Request List")
                {
                    Caption = 'Leave Request';
                    Image = Item;
                    RunObject = Page 50604;
                }
                action("Page Approval Leave List")
                {
                    Caption = 'Leave Approval List';
                    RunObject = Page 50609;
                }
                action("HOD HR/Admin")
                {
                    Caption = 'HOD HR/Admin';
                    RunObject = Page 50610;
                }
                action("Page Approved Leave List")
                {
                    Caption = 'Leave Approved List';
                    RunObject = Page 50608;
                }
                action("MD Leave Approval List")
                {
                    Caption = 'MD Leave Approval List';
                    RunObject = Page 50607;
                }
                action("Actual Leave")
                {
                    Caption = 'Actual Leave';
                    Image = "Actual Leave";
                    RunObject = Page 70055;
                }
                action("Employee Leave Analysis")
                {
                    Caption = 'Employee Leave Analysis';
                    Image = "Leave Analysis";
                    RunObject = Page 70058;
                }
                action(Training)
                {
                    Caption = 'Training';
                    Image = Training;
                    RunObject = Page 50068;
                }
                action(Holidays)
                {
                    Caption = 'Holidays';
                    RunObject = Page 50317;
                }
                action(Purchase)
                {
                    Caption = 'Purchase';
                    RunObject = Page 9307;
                }
                action("Approved Leave Request")
                {
                    Caption = 'Approved Leave Request';
                    RunObject = Page 50605;
                }
            }
            group("Air Order")
            {
                Caption = 'Air Order';
                action("Air Order")
                {
                    Caption = 'Air Order';
                    RunObject = Page 70210;
                }
                action("HOD Part Approval-AOO")
                {
                    Caption = 'HOD Part Approval-AOO';
                    RunObject = Page 70211;
                }
                action("Compliance Check AOO")
                {
                    Caption = 'Compliance Check AOO';
                    RunObject = Page 70212;
                }
                action("HOD Audit AOO")
                {
                    Caption = 'HOD Audit AOO';
                    RunObject = Page 70213;
                }
                action("GM List AOO")
                {
                    Caption = 'GM List AOO';
                    RunObject = Page 70214;
                }
                action("MD List AOO")
                {
                    Caption = 'MD List AOO';
                    RunObject = Page 70215;
                }
                action("Approved AOO")
                {
                    Caption = 'Approved AOO';
                    RunObject = Page 70216;
                }
            }
            group("Local Parts Purchase")
            {
                Caption = 'Local Parts Purchase';
                action(LPP)
                {
                    Caption = 'LPP';
                    RunObject = Page 70193;
                }
                action("HOD Part Approval")
                {
                    Caption = 'HOD Part Approval';
                    RunObject = Page 70194;
                }
                action("Compliance Check")
                {
                    Caption = 'Compliance Check';
                    RunObject = Page 70195;
                }
                action("HOD Audit")
                {
                    Caption = 'HOD Audit';
                    RunObject = Page 70196;
                }
                action("HOD Procurement Approval")
                {
                    Caption = 'HOD Procurement Approval';
                    RunObject = Page 70197;
                }
                action(GM)
                {
                    Caption = 'GM';
                    RunObject = Page 70198;
                }
                action(MD)
                {
                    Caption = 'MD';
                    RunObject = Page 70199;
                }
                action("MD Isolo")
                {
                    Caption = 'MD Isolo';
                    RunObject = Page 70217;
                }
                action("Departmental Float")
                {
                    Caption = 'Departmental Float';
                    RunObject = Page 70201;
                }
                action("Generate LPO")
                {
                    Caption = 'Generate LPO';
                    RunObject = Page 70204;
                }
                action("Print LPP LPO")
                {
                    Caption = 'Print LPP LPO';
                    RunObject = Page 70206;
                }
                action("Payment Approved")
                {
                    Caption = 'Payment Approved';
                    RunObject = Page 70202;
                }
                action("Payment Voucher")
                {
                    Caption = 'Payment Voucher';
                    RunObject = Page 70203;
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Cash Receipts")
                {
                    Caption = 'Posted Cash Receipts';
                    RunObject = Page 70020;
                }
                action("Posted Cheque Receipts")
                {
                    Caption = 'Posted Cheque Receipts';
                    RunObject = Page 70021;
                }
                action("Posted e-Receipt")
                {
                    Caption = 'Posted e-Receipt';
                    RunObject = Page 70109;
                }
                action("Posted Cash Payment")
                {
                    Caption = 'Posted Cash Payment';
                    RunObject = Page 70022;
                }
                action("Posted Cheque Payment")
                {
                    Caption = 'Posted Cheque Payment';
                    RunObject = Page 70023;
                }
                action("Posted e-Payment")
                {
                    Caption = 'Posted e-Payment';
                    RunObject = Page 70099;
                }
                action("Posted Journal Vouchers")
                {
                    Caption = 'Posted Journal Vouchers';
                    RunObject = Page 70024;
                }
            }
            group("Payroll Administration")
            {
                Caption = 'Payroll Administration';
                action(Employees)
                {
                    RunObject = Page 5201;
                }
                action("Blocked Employees")
                {
                    RunObject = Page 70514;
                }
                action("Payroll Periods")
                {
                    RunObject = Page 50007;
                }
                action(Payslip)
                {
                    RunObject = Page 50023;
                }
                action("Monthly Variables")
                {
                    RunObject = Page 50028;
                }
                action("Monthly Variables Survey")
                {
                }
                action("Banks.")
                {
                    RunObject = Page 50021;
                }
                action("Payroll-E/D Codes")
                {
                    RunObject = Page 50003;
                }
                action(Loan)
                {
                    RunObject = Page 50025;
                }
                action("Payslip Survey")
                {
                    RunObject = Page 50033;
                }
                action("Tax Relief")
                {
                    RunObject = Page 50038;
                }
                action("Utilities Menu")
                {
                }
                action("Payroll-Employee Group")
                {
                    RunObject = Page 50002;
                }
                action("Creat Payroll Journal")
                {
                }
            }
            group(Inventory)
            {
                Caption = 'Inventory';
                Image = ReferenceData;
                action(Items)
                {
                    Caption = 'Items';
                    Image = Item;
                    RunObject = Page 31;
                }
                action("<Page ISOLOItem List>")
                {
                    Caption = 'Isolo Items';
                    RunObject = Page 70176;
                }
                action(Vendors)
                {
                    Caption = 'Vendors';
                    Image = Vendor;
                    RunObject = Page 27;
                }
                action("Transfer Order")
                {
                    Caption = 'Transfer Order';
                    Image = Transfer;
                    RunObject = Page 5742;
                }
                action("TCSC Customers")
                {
                    Caption = 'TCSC Customers';
                    RunObject = Page 70175;
                }
                action("TCSC Sales Orders")
                {
                    Caption = 'TCSC Sales Orders';
                    RunObject = Page 70178;
                }
                action("Search Tracker")
                {
                    Caption = 'Search Tracker';
                    RunObject = Page 50118;
                }
                action("Stockkeping Unit")
                {
                    Caption = 'Stockkeping Unit';
                    RunObject = Page 5701;
                }
                action("Cash Receipt")
                {
                    Caption = 'Cash Receipt';
                    RunObject = Page 70007;
                }
                action("Parts by Model")
                {
                    Caption = 'Parts by Model';
                    RunObject = Page 50037;
                }
                action(Variants)
                {
                    Caption = 'Variants';
                    RunObject = Page 5401;
                }
                action(Locations)
                {
                    Caption = 'Locations';
                    Image = Warehouse;
                    RunObject = Page 15;
                }
                action("Item Journals")
                {
                    Caption = 'Item Journals';
                    RunObject = Page 262;
                                    RunPageView = WHERE(Template Type=CONST(Item),
                                        Recurring=CONST(No));
                }
                action("Phys. Inventory Journals")
                {
                    Caption = 'Phys. Inventory Journals';
                    RunObject = Page 262;
                                    RunPageView = WHERE(Template Type=CONST(Phys. Inventory),
                                        Recurring=CONST(No));
                }
            }
            group(Sales)
            {
                Caption = 'Sales';
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
                }
                action("Sales Order")
                {
                    Caption = 'Sales Order';
                    RunObject = Page 9305;
                }
                action("Sales Credit Memo")
                {
                    Caption = 'Sales Credit Memo';
                    RunObject = Page 9302;
                }
                action("Sales Quotes")
                {
                    Caption = 'Sales Quotes';
                    RunObject = Page 9300;
                }
            }
            group(Cash)
            {
                Caption = 'Cash';
                action("Cash Receipt")
                {
                    Caption = 'Cash Receipt';
                    RunObject = Page 70007;
                }
                action("Cheque Receipt")
                {
                    Caption = 'Cheque Receipt';
                    RunObject = Page 70008;
                }
                action("e-Receipt")
                {
                    Caption = 'e-Receipt';
                    RunObject = Page 70107;
                }
                action("Cash Payment")
                {
                    Caption = 'Cash Payment';
                    RunObject = Page 70009;
                }
                action("Cheque Payment")
                {
                    Caption = 'Cheque Payment';
                    RunObject = Page 70010;
                }
                action("e-Payment")
                {
                    Caption = 'e-Payment';
                    RunObject = Page 70097;
                }
            }
            group("Job Card")
            {
                Caption = 'Job Card';
                action("Closed Job-Old")
                {
                    Caption = 'Closed Job-Old';
                    RunObject = Page 70076;
                }
                action("Closed Job-New")
                {
                    Caption = 'Closed Job-New';
                    RunObject = Page 80052;
                }
            }
        }
    }
}

