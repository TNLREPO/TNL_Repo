page 50584 "Human Resource Role"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                part(; 760)
                {
                    Visible = false;
                }
                part("<HR-Admin Cue>"; 70179)
                {
                    Caption = '<HR-Admin Cue>';
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
            separator()
            {
            }
            action("&Customer - Labels")
            {
                Caption = '&Customer - Labels';
                Image = "Report";
                RunObject = Report 110;
            }
            action("Employee Label")
            {
                Caption = 'Employee Label';
                RunObject = Report 5200;
            }
            action(" Employee Training History")
            {
                Caption = ' Employee Training History';
                RunObject = Report 50133;
            }
            action("Employee List")
            {
                Caption = 'Employee List';
                RunObject = Report 5201;
            }
            action("Employee Misc. Article")
            {
                Caption = 'Employee Misc. Article';
                RunObject = Report 5202;
            }
            action("Employee Confidential Info")
            {
                Caption = 'Employee Confidential Info';
                RunObject = Report 5203;
            }
            action("Employee Staff Absence")
            {
                Caption = 'Employee Staff Absence';
                RunObject = Report 5204;
            }
            action("Employee-Absence By Causes")
            {
                Caption = 'Employee-Absence By Causes';
                RunObject = Report 5205;
            }
            action("Employee Qualification")
            {
                Caption = 'Employee Qualification';
                RunObject = Report 5206;
            }
            action("Employee Birthday")
            {
                Caption = 'Employee Birthday';
                RunObject = Report 5209;
            }
            action("Employee Contract")
            {
                Caption = 'Employee Contract';
                RunObject = Report 5212;
            }
            action("Employee Alt. Address")
            {
                Caption = 'Employee Alt. Address';
                RunObject = Report 5213;
            }
            action("Pool Car Report")
            {
                Caption = 'Pool Car Report';
                RunObject = Report 50434;
            }
        }
        area(sections)
        {
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
            group(Fuel)
            {
                Caption = 'Fuel';
                action("Fuel Purchase")
                {
                    Caption = 'Fuel Purchase';
                    RunObject = Page 9307;
                }
                action("Purchase Credit Memo")
                {
                    Caption = 'Purchase Credit Memo';
                    RunObject = Page 9309;
                }
                action("New Vehicle")
                {
                    Caption = 'New Vehicle';
                    RunObject = Page 50166;
                }
                action("Fixed Asset")
                {
                    Caption = 'Fixed Asset';
                    RunObject = Page 70001;
                }
                action(Staff)
                {
                    Caption = 'Staff';
                    RunObject = Page 70002;
                }
                action(Vendors)
                {
                    Caption = 'Vendors';
                    Image = Vendor;
                    RunObject = Page 27;
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
                    RunPageView = WHERE (Template Type=CONST(Item),
                                        Recurring=CONST(No));
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
                action("Head of Audit Appr.")
                {
                    Caption = 'Head of Audit Appr.Opex';
                    RunObject = Page 70129;
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
                action("Advance Payment-Opex")
                {
                    Caption = 'Advance Payment-Opex';
                    RunObject = Page 70145;
                }
                action(LPO)
                {
                    Caption = 'LPO';
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
                action("Head of Audit Appr.-Capex")
                {
                    Caption = 'Head of Audit Appr.-Capex';
                    RunObject = Page 70154;
                }
                action("Move to LPO -Capex")
                {
                    Caption = 'Approved Capex';
                    RunObject = Page 70158;
                }
                action("LPO-Capex")
                {
                    Caption = 'LPO-Capex';
                    RunObject = Page 70165;
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
                action("Advance Payment Capex")
                {
                    Caption = 'Advance Payment Capex';
                    RunObject = Page 70168;
                }
                action("Awaiting Balance Payment-Capex")
                {
                    RunObject = Page 70167;
                }
                action("Full  Payment Appr.-Capex")
                {
                    Caption = 'Full  Payment Appr.-Capex';
                    RunObject = Page 70162;
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
                action("IOU Retirement")
                {
                    RunObject = Page 50204;
                }
                action("IOU Retirement Approved")
                {
                    RunObject = Page 70033;
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
                action("Closed Request")
                {
                    Caption = 'Closed Request';
                    RunObject = Page 50601;
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Employee Leave Analysis")
                {
                    Caption = 'Employee Leave Analysis';
                    Image = "Employee Leave Analysis";
                    RunObject = Page 70058;
                }
                action("Posted Purchase Receipts")
                {
                    Caption = 'Posted Purchase Receipts';
                    RunObject = Page 145;
                }
                action("Posted Purchase Invoices")
                {
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page 146;
                }
                action("Posted Return Receipts")
                {
                    Caption = 'Posted Return Receipts';
                    Image = PostedReturnReceipt;
                    RunObject = Page 6662;
                }
                action("Posted IOU Retirement")
                {
                    RunObject = Page 70034;
                }
                action("Posted Fuel Voucher")
                {
                    Caption = 'Posted Fuel Voucher';
                    RunObject = Page 70003;
                }
            }
            group("HR Administration")
            {
                Caption = 'HR Administration';
                action("Human Resources Unit of Measure")
                {
                    Caption = 'Human Resources Unit of Measure';
                    RunObject = Page 5236;
                }
                action("Causes of Absence")
                {
                    Caption = 'Causes of Absence';
                    RunObject = Page 5210;
                }
                action("Causes of Inactivity")
                {
                    Caption = 'Causes of Inactivity';
                    RunObject = Page 5214;
                }
                action("Grounds of Termination")
                {
                    Caption = 'Grounds of Termination';
                    RunObject = Page 5215;
                }
                action("Employment Contracts")
                {
                    Caption = 'Employment Contracts';
                    RunObject = Page 5217;
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
        }
        area(creation)
        {
            action("&Purchase Order")
            {
                Caption = '&Purchase Order';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 50;
                RunPageMode = Create;
            }
            action("&Purchase Invoices")
            {
                Caption = '&Purchase Invoices';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 9308;
                RunPageMode = Create;
            }
        }
        area(processing)
        {
            action("Human Resources Setup")
            {
                Caption = 'Human Resources Setup';
                Image = "HR Setup";
                RunObject = Page 5233;
            }
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action(Employee)
            {
                Caption = 'Employee';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 5200;
            }
            action("Leave Plan")
            {
                Caption = 'Leave Plan';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 50092;
            }
            separator()
            {
            }
            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
        }
    }
}

