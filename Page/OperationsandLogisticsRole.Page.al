page 50590 "Operations and Logistics Role"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control1)
            {
                part("Purchase Agent Activities"; 9063)
                {
                }
                part("My Customers"; 9150)
                {
                }
            }
            group(Control2)
            {
                part("Audit Cue"; 70179)
                {
                }
                part("Trailing Sales Orders Chart"; 760)
                {
                    Visible = false;
                }
                part("Report Inbox"; 681)
                {
                }
                systempart(MyNotes; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            separator(Control3)
            {
            }
            action("&Customer - Labels")
            {
                Caption = '&Customer - Labels';
                Image = "Report";
                RunObject = Report 110;
            }
            action("Cars-Inventory")
            {
                Caption = 'Cars-Inventory';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50321;
            }
        }
        area(embedding)
        {
        }
        area(sections)
        {
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
                action("Transfer Order1")
                {
                    Caption = 'Transfer Order';
                    Image = Document;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 5742;
                }
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
                }
                action("Model List1")
                {
                    Caption = 'Model List';
                    RunObject = Page 50037;
                }
                action("Colour List")
                {
                    Caption = 'Colour List';
                    RunObject = Page 50131;
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
                    RunPageView = WHERE("Template Type" = CONST(Item),
                                        Recurring = filter(false));
                }
                action("Phys. Inventory Journals")
                {
                    Caption = 'Phys. Inventory Journals';
                    RunObject = Page 262;
                    RunPageView = WHERE("Template Type" = CONST("Phys. Inventory"),
                                        Recurring = filter(false));
                }
                action("Warranty Coupon")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 70018;
                }
                action("Periodic Maintenance")
                {
                    Caption = 'Periodic Maintenance';
                    RunObject = Page 50282;
                }
                action("Stock/Inventory")
                {
                    Caption = 'Stock/Inventory';
                    RunObject = Page 50283;
                }
                action("Warehouse Delivery")
                {
                    Caption = 'Warehouse Delivery';
                    RunObject = Page 50284;
                }
                action("Dealer Sales Cycle")
                {
                    Caption = 'Dealer Sales Cycle';
                    RunObject = Page 50625;
                }
            }
            group(Operations)
            {
                Caption = 'Operations';
                Image = Journals;
                action("Vehicle Receipt Inspection")
                {
                    RunObject = Page 50262;
                }
                action("In-Stock Problem Vehicle")
                {
                    RunObject = Page 50471;
                }
                action("Work Order")
                {
                    RunObject = Page 70004;
                }
                action("Processed Work Order")
                {
                    RunObject = Page 70006;
                }
            }
            group(Stores)
            {
                Caption = 'Stores';
                action("Store Requisition")
                {
                    Caption = 'Store Requisition';
                    RunObject = Page 50207;
                }
            }
            group(Purchase)
            {
                Caption = 'Purchase';
                Image = Journals;
                action("Purchase Order1")
                {
                    Caption = 'Order';
                    RunObject = Page 9307;
                }
                action("Purchase Invoice")
                {
                    Caption = 'Purchase Invoice';
                    Image = Document;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 9308;
                }
                action("Purchase Cr. Memo")
                {
                    Caption = 'Purchase Cr. Memo';
                    Image = document;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 9309;
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
                action("Managing Directors")
                {
                    RunObject = Page 70133;
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
                    Caption = 'Balance/Full Payment Appr. Opex';
                    RunObject = Page 70139;
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
                action("Move to LPO -Capex")
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
                    Caption = 'Advance payment Capex';
                    RunObject = Page 70159;
                }
                action("Awaiting Balance Payment-Capex")
                {
                    RunObject = Page 70167;
                }
                action("Full  Payment Appr.-Capex")
                {
                    Caption = 'Balance/Full  Payment Appr.-Capex';
                    RunObject = Page 70162;
                }
                action("Balance/Full Payment Approved-capex")
                {
                    RunObject = Page 70163;
                }
            }
            group("Leave Approval Request")
            {
                Caption = 'Leave Approval Request';
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
            group("Payment Process")
            {
                Caption = 'Payment Process';
                Image = Journals;
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
                action("Journal Voucher")
                {
                    Caption = 'Journal Voucher';
                    RunObject = Page 70011;
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
                action("Posted Purchase Credit Memos")
                {
                    Caption = 'Posted Purchase Credit Memos';
                    RunObject = Page 147;
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
                action("Closed Transactions1")
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
            group("Vehicle Delivery")
            {
                Caption = 'Vehicle Delivery';
                action("Vehicle Delivery Monitor")
                {
                    Caption = 'Vehicle Delivery Monitor';
                    RunObject = Page 50378;
                }
                action("Vehicle Delivered")
                {
                    Caption = 'Vehicle Delivered';
                    RunObject = Page 50380;
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
        }
        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action("VRI In Progress")
            {
                Caption = 'VRI In Progress';
                RunObject = Page 50397;
            }
            action("Transfer Order")
            {
                Caption = 'Transfer Order';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 5742;
            }
            action("Model List")
            {
                Caption = 'Model List';
                Promoted = false;
                RunObject = Page 50037;
            }
            action("Purchase Order")
            {
                Caption = 'Purchase Order';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 9307;
            }
            separator(Control4)
            {
            }
            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
            action("Item &Tracing")
            {
                Caption = 'Item &Tracing';
                Image = ItemTracing;
                RunObject = Page 6520;
            }
            action("Colour Code")
            {
                Caption = 'Colour Code';
                RunObject = Page 70170;
            }
        }
    }
}

