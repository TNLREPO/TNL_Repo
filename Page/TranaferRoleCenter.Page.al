page 50407 "Tranafer Role Center"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
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
            action("Open Jobs")
            {
                RunObject = Page 80065;
            }
            action("Delivered Jobs")
            {
                RunObject = Page 80020;
            }
        }
        area(embedding)
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
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
                }
                action("Item List")
                {
                    RunObject = Page 31;
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
                action("Logistics VRI")
                {
                    Caption = 'Logistics VRI';
                    RunObject = Page 50471;
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
                action("Posted Insurance Invoice")
                {
                    Caption = 'Posted Insurance Invoice';
                    RunObject = Page 50409;
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
            action("Leave Request")
            {
                RunObject = Page 50604;
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
                action("Transfer Order")
                {
                    Caption = 'Transfer Order';
                    Image = Transfer;
                    RunObject = Page 5742;
                }
                action("Stockkeping Unit")
                {
                    Caption = 'Stockkeping Unit';
                    RunObject = Page 5701;
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
            }
            group(Ordering)
            {
                Caption = 'Ordering';
                Image = Journals;
                action("Transfer Order")
                {
                    Caption = 'Transfer Order';
                    RunObject = Page 5742;
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Transfer Shipments")
                {
                    Caption = 'Posted Transfer Shipments';
                    RunObject = Page 5752;
                }
                action("Posted Return Shipments")
                {
                    Caption = 'Posted Return Shipments';
                    RunObject = Page 6652;
                }
                action("Posted Transfer Receipts")
                {
                    Caption = 'Posted Transfer Receipts';
                    RunObject = Page 5753;
                }
                action("Posted Return Receipts")
                {
                    Caption = 'Posted Return Receipts';
                    Image = PostedReturnReceipt;
                    RunObject = Page 6662;
                }
            }
        }
        area(creation)
        {
            action("T&ransfer Order")
            {
                Caption = 'T&ransfer Order';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 5740;
                RunPageMode = Create;
            }
        }
    }
}

