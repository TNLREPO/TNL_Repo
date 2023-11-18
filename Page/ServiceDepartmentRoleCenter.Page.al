page 50065 "Service Department Role Center"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                part(; 50066)
                {
                }
            }
            group()
            {
                part(; 760)
                {
                    Visible = false;
                }
                part(; 675)
                {
                    Visible = false;
                }
                part(; 681)
                {
                }
                systempart(; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("Opened COF")
            {
                Caption = 'Opened COF';
                Image = "Report";
                RunObject = Report 50023;
            }
            action("Paint Sale/Purchase by Location")
            {
                Caption = 'Paint Sale/Purchase by Location';
                RunObject = Report 50326;
            }
            action("Item Availability per Location")
            {
                Caption = 'Item Availability per Location';
                RunObject = Report 50333;
            }
            action("Purchase&Valuation Detail")
            {
                Caption = 'Purchase&Valuation Detail';
                RunObject = Report 50344;
            }
            action("Kodawari COF Analysis")
            {
                Caption = 'Kodawari COF Analysis';
                RunObject = Report 50363;
            }
            action("Customer Performance Report")
            {
                Caption = 'Customer Performance Report';
                RunObject = Report 113;
            }
            action("Vendor Performance Report")
            {
                Caption = 'Vendor Performance Report';
                RunObject = Report 313;
            }
        }
        area(embedding)
        {
            action(Resource)
            {
                Caption = 'Resource';
                RunObject = Page 77;
            }
        }
        area(sections)
        {
            group("Leave Request")
            {
                Caption = 'Leave Request';
                Image = ReferenceData;
                action("Leave Request")
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
            }
            group("Maintenance Reminder & Appointment")
            {
                Caption = 'Maintenance Reminder & Appointment';
                Image = Alerts;
                action("New Service Appointment")
                {
                    Caption = 'New Service Appointment';
                    RunObject = Page 50238;
                }
                action("Today's Service Appointment")
                {
                    Caption = 'Today''s Service Appointment';
                    RunObject = Page 70068;
                }
                action("Booked Service Appointment")
                {
                    Caption = 'Booked Service Appointment';
                    RunObject = Page 70067;
                }
                action("Estimate Preparation")
                {
                    Caption = 'Estimate Preparation';
                    RunObject = Page 50210;
                }
            }
            group("Appointment Preparation")
            {
                Caption = 'Appointment Preparation';
                Image = Journals;
                action("Appointment Preparation")
                {
                    Caption = 'Appointment Preparation';
                    RunObject = Page 70078;
                }
                action("General Repairs/Estimate")
                {
                    Caption = 'General Repairs/Estimate';
                    RunObject = Page 70081;
                }
                action("Estimate Preparation")
                {
                    Caption = 'Estimate Preparation';
                    RunObject = Page 50210;
                }
            }
            group(Reception)
            {
                Caption = 'Reception';
                Image = FiledPosted;
                action("Job Entry Walk In")
                {
                    Caption = 'Job Entry Walk In';
                    RunObject = Page 70083;
                }
                action("Customer Order Appt/WI")
                {
                    Caption = 'Customer Order Appt/WI';
                    RunObject = Page 70085;
                }
                action("General Repairs/Estimate")
                {
                    Caption = 'General Repairs/Estimate';
                    RunObject = Page 70081;
                }
                action("Diagnostic Questionnaire")
                {
                    Caption = 'Diagnostic Questionnaire';
                    RunObject = Page 50239;
                }
            }
            group(Production)
            {
                Caption = 'Production';
                Image = Capacities;
                action("Job Instruction")
                {
                    Caption = 'Job Instruction';
                    RunObject = Page 70088;
                }
                action("Labour and Operations")
                {
                    Caption = 'Labour and Operations';
                    RunObject = Page 70090;
                }
                action("Job Status")
                {
                    Caption = 'Job Status';
                    RunObject = Page 50374;
                }
            }
            group(Sales)
            {
                Caption = 'Sales';
                action(Items)
                {
                    Caption = 'Items';
                    Image = Item;
                    RunObject = Page 31;
                }
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
                }
                action("Sales Order")
                {
                    Caption = 'Sales Order';
                    RunObject = Page 48;
                }
                action("Credit Memo")
                {
                    Caption = 'Credit Memo';
                    RunObject = Page 9302;
                }
            }
            group(Delivery)
            {
                Caption = 'Delivery';
                Image = LotInfo;
                action(Delivery)
                {
                    Caption = 'Delivery';
                    RunObject = Page 70096;
                }
                action("Completed Job Instruction")
                {
                    Caption = 'Completed Job Instruction';
                    RunObject = Page 70076;
                }
            }
            group("Post Service Follow-up")
            {
                Caption = 'Post Service Follow-up';
                Image = ReferenceData;
                action("PSFU Questionnnaire")
                {
                    Caption = 'PSFU Questionnnaire';
                    RunObject = Page 70072;
                }
            }
            group("New Customer Order Form")
            {
                Image = Job;
                action("Waiting For Parts ")
                {
                    RunObject = Page 80035;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Waiting For Service ")
                {
                    RunObject = Page 80026;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Being Serviced")
                {
                    RunObject = Page 80028;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Awaiting Approval")
                {
                    RunObject = Page 80034;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Awaiting DAD")
                {
                    RunObject = Page 80060;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Awaiting Estimate")
                {
                    RunObject = Page 80061;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("New Service List")
                {
                    RunObject = Page 80043;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Awaiting Parts")
                {
                    Caption = 'Awaiting Parts';
                    RunObject = Page 80057;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Awaiting Delivery")
                {
                    Caption = 'Awaiting Delivery';
                    RunObject = Page 80059;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Parts Ordered")
                {
                    Caption = 'Parts Ordered';
                    RunObject = Page 80058;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
                action("Closed Job")
                {
                    RunObject = Page 80052;
                    RunPageView = WHERE (Service Location=CONST(113LEK));
                }
            }
            separator()
            {
            }
            group("Parts Operation")
            {
                Caption = 'Parts Operation';
                Image = ExecuteBatch;
                action("Pending Purchase Requests")
                {
                    Caption = 'Pending Purchase Requests';
                    RunObject = Page 50347;
                }
                action("Pending Estimate Requests")
                {
                    Caption = 'Pending Estimate Requests';
                    RunObject = Page 50323;
                }
                action("Bulk Issue")
                {
                    Caption = 'Bulk Issue';
                    RunObject = Page 50476;
                }
                action("Parts Order")
                {
                    Caption = 'Parts Order';
                    RunObject = Page 5901;
                }
                action("Sales Order")
                {
                    Caption = 'Sales Order';
                    RunObject = Page 70070;
                }
            }
            group(Procurement)
            {
                Caption = 'Procurement';
                Image = ReferenceData;
                action(Opex)
                {
                    Caption = 'Opex';
                    RunObject = Page 70125;
                }
                action("Head of Dept. Appr.")
                {
                    Caption = 'Head of Dept. Appr.Opex';
                    RunObject = Page 70131;
                }
                action("Approved Opex")
                {
                    Caption = 'Approved Opex';
                    RunObject = Page 70134;
                }
                action("Advance payment")
                {
                    Caption = 'Advance payment Opex';
                    RunObject = Page 70135;
                }
                action("Compliance Check")
                {
                    Caption = 'Compliance Check Opex';
                    RunObject = Page 70138;
                }
                action("Awaiting balance Payment")
                {
                    RunObject = Page 70148;
                }
                action("Balance Payment Appr.")
                {
                    Caption = 'Balance Payment Appr. Opex';
                    RunObject = Page 70139;
                }
                action("LPO-OPEX")
                {
                    Caption = 'LPO-OPEX';
                    RunObject = Page 70142;
                }
                action("Balance/Full Payment Approved")
                {
                    Caption = 'Balance/Full Payment Approved Opex';
                    RunObject = Page 70140;
                }
                action(Capex)
                {
                    Caption = 'Capex';
                    Image = Item;
                    RunObject = Page 70118;
                }
                action("Head of Dept. Appr.Capex")
                {
                    Caption = 'Head of Dept. Appr. Capex';
                    RunObject = Page 70155;
                }
                action("Approved Capex")
                {
                    Caption = 'Approved Capex';
                    RunObject = Page 70158;
                }
                action("Compliance Check-Capex")
                {
                    Caption = 'Compliance Check-Capex';
                    RunObject = Page 70161;
                }
                action("Advance Paymt Appr.-Capex")
                {
                    RunObject = Page 70159;
                }
                action("Awaiting Balance Payment-Capex")
                {
                    RunObject = Page 70167;
                }
                action("LPO-CAPEX")
                {
                    Caption = 'LPO-CAPEX';
                    RunObject = Page 70165;
                }
                action("Full  Payment Appr.-Capex")
                {
                    Caption = 'Full  Payment Appr.-Capex';
                    RunObject = Page 70162;
                }
            }
            group("Vehicle Receipt Inspection")
            {
                Caption = 'Vehicle Receipt Inspection';
                action("VRI Check List")
                {
                    Caption = 'VRI Check List';
                    RunObject = Page 50270;
                }
                action(VRI)
                {
                    Caption = 'VRI';
                    RunObject = Page 50262;
                }
                action("VRI Missing")
                {
                    Caption = 'VRI Missing';
                    RunObject = Page 50263;
                }
                action("Logistics VRI")
                {
                    Caption = 'Logistics VRI';
                    RunObject = Page 50471;
                }
                action("Periodic Maintenance List")
                {
                    Caption = 'Periodic Maintenance List';
                    RunObject = Page 50273;
                }
                separator(History)
                {
                    Caption = 'History';
                    IsHeader = true;
                }
            }
            group("HR Work Order")
            {
                Caption = 'HR Work Order';
                Image = FixedAssets;
                action("HR Work Oder")
                {
                    Caption = 'HR Work Oder';
                    RunObject = Page 50453;
                }
            }
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
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Bulk Issue")
                {
                    Caption = 'Posted Bulk Issue';
                    RunObject = Page 50477;
                }
                action("Posted Shipments")
                {
                    Caption = 'Posted Shipments';
                    RunObject = Page 5974;
                }
                action("Posted Invoice")
                {
                    Caption = 'Posted Invoice';
                    RunObject = Page 5977;
                }
                action("Posted Sales Invoice")
                {
                    Caption = 'Posted Sales Invoice';
                    RunObject = Page 143;
                }
                action("Posted Credit Memos")
                {
                    Caption = 'Posted Credit Memos';
                    RunObject = Page 5971;
                }
                action("Posted COF Maintenance")
                {
                    Caption = 'Posted COF Maintenance';
                    RunObject = Page 70065;
                }
                action("Posted Service Invoice")
                {
                    RunObject = Page 5977;
                }
                action("Posted Insurance Invoice")
                {
                    Caption = 'Posted Insurance Invoice';
                    RunObject = Page 50409;
                }
            }
            group("Branch Pool Car Repair")
            {
                Caption = 'Branch Pool Car Repair';
                action("TNL Work Order (Mgr)")
                {
                    Caption = 'TNL Work Order (Mgr)';
                    RunObject = Page 50620;
                }
                action("Approvals Request (Adim)")
                {
                    Caption = 'Approvals Request (Adim)';
                    RunObject = Page 50126;
                }
                action("Send Estimate Requests (Mgr)")
                {
                    Caption = 'Send Estimate Requests (Mgr)';
                    RunObject = Page 50148;
                }
                action("Awaitng Estimate Confirmations (Admin)")
                {
                    Caption = 'Awaitng Estimate Confirmations (Admin)';
                    RunObject = Page 50127;
                }
                action("Approved Estimate (Mgr)")
                {
                    Caption = 'Approved Estimate (Mgr)';
                    RunObject = Page 50135;
                }
                action("Awaiting Invoices (Admin)")
                {
                    Caption = 'Awaiting Invoices (Admin)';
                    RunObject = Page 50142;
                }
                action("Awaitig Payment Approvals (Admin)")
                {
                    Caption = 'Awaitig Payment Approvals (Admin)';
                    RunObject = Page 50145;
                }
                action("Awaiting Checks (Mgr)")
                {
                    Caption = 'Awaiting Checks (Mgr)';
                    RunObject = Page 50173;
                }
                action("Closed Transactions")
                {
                    Caption = 'Closed Transactions';
                    RunObject = Page 50212;
                }
            }
            group("Motor Show Repairs")
            {
                Caption = 'Motor Show Repairs';
                action("Motor Show Repair List")
                {
                    Caption = 'Motor Show Repair List';
                    RunObject = Page 50621;
                }
                action("Request Approvals (Event Mgr)")
                {
                    Caption = 'Request Approvals (Event Mgr)';
                    RunObject = Page 50213;
                }
                action(" Pending Estimate Appr (PDI)")
                {
                    Caption = ' Pending Estimate Appr (PDI)';
                    RunObject = Page 50144;
                }
                action("Approved Estimates (Event Mgr)")
                {
                    Caption = 'Approved Estimates (Event Mgr)';
                    RunObject = Page 50216;
                }
                action("Pending Payment (PDI)")
                {
                    Caption = 'Pending Payment (PDI)';
                    RunObject = Page 50244;
                }
                action("Closed Transactions")
                {
                    Caption = 'Closed Transactions';
                    RunObject = Page 50248;
                }
            }
            group(Administration)
            {
                Caption = 'Administration';
                Image = Setup;
                action(Resource)
                {
                    Caption = 'Resource';
                    RunObject = Page 77;
                }
                action("Service Menu Setup")
                {
                    Caption = 'Service Menu Setup';
                    RunObject = Page 50236;
                }
                action("SSC/SC Setup")
                {
                    Caption = 'SSC/SC Setup';
                    RunObject = Page 70080;
                }
                action("Flat Rate Setup")
                {
                    Caption = 'Flat Rate Setup';
                    RunObject = Page 5910;
                }
                action("DTC Setup")
                {
                    Caption = 'DTC Setup';
                    RunObject = Page 50361;
                }
                action("Service Item")
                {
                    Caption = 'Service Item';
                    RunObject = Page 5981;
                }
                action(Customer)
                {
                    Caption = 'Customer';
                    RunObject = Page 22;
                }
                action("Service Mgt. Setup")
                {
                    Caption = 'Service Mgt. Setup';
                }
                action("VRI Administrator")
                {
                    Caption = 'VRI Administrator';
                    RunObject = Page 50324;
                }
                action("Takata Customer")
                {
                    Caption = 'Takata Customer';
                    RunObject = Page 70504;
                }
                action("Warranty Claim")
                {
                    Caption = 'Warranty Claim';
                    Promoted = true;
                    PromotedIsBig = true;
                    RunObject = Page 50163;
                }
            }
            group("Payment Process")
            {
                Caption = 'Payment Process';
                action("IOU Request")
                {
                    Caption = 'IOU Request';
                    RunObject = Page 70030;
                }
                action("IOU Retirement")
                {
                    Caption = 'IOU Retirement';
                    RunObject = Page 50204;
                }
                action("Journal Voucher Card")
                {
                    Caption = 'Journal Voucher Card';
                    RunObject = Page 70011;
                }
            }
            group("Fixed Asset")
            {
                Caption = 'Fixed Asset';
                action("TNL Asset")
                {
                    Caption = 'TNL Asset';
                    RunObject = Page 5601;
                }
            }
        }
        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action("Vehicle Receipt Inspection")
            {
                Caption = 'Vehicle Receipt Inspection';
                Image = AnalysisView;
                RunObject = Page 50261;
            }
            action("VRI in Progress")
            {
                Caption = 'VRI in Progress';
                Image = Document;
                RunObject = Page 50397;
            }
            action("ISPV Folder")
            {
                Caption = 'ISPV Folder';
                Image = AllocatedCapacity;
                RunObject = Page 50459;
            }
            action("Manager Time Sheet by Job")
            {
                Caption = 'Manager Time Sheet by Job';
                Image = JobTimeSheet;
                RunObject = Page 954;
            }
            action("Transfer Order")
            {
                Image = TransferOrder;
                RunObject = Page 5742;
            }
            group(Warranty)
            {
                Caption = 'Warranty';
                action("Warranty Coupon")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 50111;
                }
                action("Warranty Claim List")
                {
                    RunObject = Page 50163;
                }
                action("Direct Warranty")
                {
                    Caption = 'Direct Warranty';
                    RunObject = Page 70185;
                }
                action("Used Part Lekki")
                {
                    RunObject = Report 50320;
                }
            }
        }
    }
}

