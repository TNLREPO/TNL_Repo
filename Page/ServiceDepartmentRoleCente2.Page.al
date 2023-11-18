page 50091 "Service Department Role Cente2"
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
            action("Kodawari COF Analysis")
            {
                Caption = 'Kodawari COF Analysis';
                RunObject = Report 50363;
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
                action("HR Work Oder")
                {
                    Caption = 'HR Work Oder';
                    RunObject = Page 50453;
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
            group("Parts Operation")
            {
                Caption = 'Parts Operation';
                Image = ExecuteBatch;
                action(Items)
                {
                    Caption = 'Items';
                    Image = Item;
                    RunObject = Page 31;
                }
                action("Fixed Asset List")
                {
                    Caption = 'Fixed Asset List';
                    RunObject = Page 5601;
                }
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
            group("Vehicle Receipt Inspection")
            {
                Caption = 'Vehicle Receipt Inspection';
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
                action("Pending Takata Calls")
                {
                    Caption = 'Pending Takata Calls';
                    RunObject = Page 70504;
                }
                action("Prospective Customer")
                {
                    Caption = 'Prospective Customer';
                    RunObject = Page 70505;
                }
                action("KIV Customer")
                {
                    Caption = 'KIV Customer';
                    RunObject = Page 70506;
                }
                action("VRI Administrator")
                {
                    Caption = 'VRI Administrator';
                    RunObject = Page 50324;
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
            separator()
            {
            }
            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
            action("Navi&gate")
            {
                Caption = 'Navi&gate';
                Image = Navigate;
                RunObject = Page 344;
            }
        }
    }
}

