page 50614 "Parts Department Role2"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control6)
            {
                part("SO Processor Activities"; 9060)
                {
                }
                part("Purchase Agent Activities"; 9063)
                {
                }
            }
            group(Control5)
            {
                part("Sales Performance"; 770)
                {
                }
                part("Trailing Sales Order Chart"; 760)
                {
                }
                part("E-Procurement"; 70179)
                {
                    Caption = 'E-Procurement';
                }
                part("My Job Queue"; 675)
                {
                    Visible = false;
                }
                part("My Vendors"; 9151)
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
            action("Stock Statement")
            {
                Caption = 'Stock Statement';
                RunObject = Report 1001;
            }
            action("Dealer_Customer\Items Sales")
            {
                Caption = 'Dealer_Customer\Items Sales';
                RunObject = Report 113;
            }
            action("Part Sales To TCSC")
            {
                Caption = 'Part Sales To TCSC';
                RunObject = Report 50626;
            }
            action("Part Sales To Dealers")
            {
                Caption = 'Part Sales To Dealers';
                RunObject = Report 50627;
            }
            action("TNL Goods Return Note")
            {
                Caption = 'TNL Goods Return Note';
                RunObject = Report 50628;
            }
        }
        area(embedding)
        {
        }
        area(sections)
        {
            group(Reports)
            {
                Caption = 'Reports';
                Image = ReferenceData;
                action("Items Transfer Branches")
                {
                    Caption = 'Items Transfer to Branches';
                    RunObject = Page 70225;
                }
                action("Part Sales By TCSC")
                {
                    Caption = 'Part Sales By TCSC';
                    Image = CreditCard;
                    RunObject = Page 70222;
                }
                action("Part Sales To Dealer")
                {
                    Caption = 'Part Sales To Dealer';
                    RunObject = Page 70229;
                }
                action("Inventory valuation PARTS")
                {
                    RunObject = Page 70221;
                }
                action("Inventory List")
                {
                    RunObject = Page 70226;
                }
                action("Stock per Shelf No. Report")
                {
                    Caption = 'Stock per Shelf No. Report';
                    RunObject = Page 70227;
                }
                action("Accessory  Sales to Dealers")
                {
                    RunObject = Page 70228;
                }
                action("Inventory Price List")
                {
                    RunObject = Report 50435;
                }
                action("Purchase of parts Report")
                {
                    RunObject = Page 70231;
                }
                action("Payment received Report")
                {
                    RunObject = Page 70232;
                }
                action("Payment Outstanding 4r Dealers")
                {
                    Caption = 'Payment Outstanding 4r Dealers';
                    RunObject = Page 70234;
                }
                action("Return GRN Report")
                {
                    Caption = 'Return GRN Report';
                    RunObject = Page 70233;
                }
                action("Stock per Location")
                {
                    RunObject = Page 50412;
                }
                action("Parts Used by Maintenance")
                {
                    RunObject = Page 50413;
                }
                action("Purchase & Valuation details")
                {
                    RunObject = Report 50344;
                }
                action("Customer-Item Sales Report")
                {
                    RunObject = Report 50327;
                }
                action("Item Movement Monitor Report")
                {
                    RunObject = Report 50183;
                }
                action("Items Listing Per Bin Location")
                {
                    RunObject = Report 50104;
                }
                action("Customer/Item Sales")
                {
                    RunObject = Report 113;
                }
                action("Workshop Part Used")
                {
                    RunObject = Report 50090;
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
                action("Sales Order1")
                {
                    Caption = 'Sales Order';
                    RunObject = Page 48;
                }
                action("Sales Credit Memo")
                {
                    Caption = 'Sales Credit Memo';
                    RunObject = Page 9302;
                }
            }
            group(Purchase)
            {
                Caption = 'Purchase';
                action("Purchase Order")
                {
                    Caption = 'Purchase Order';
                    Image = Document;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
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
            group(Ordering)
            {
                Caption = 'Ordering';
                Image = CashFlow;
                action("Branch Stock Management")
                {
                    Caption = 'Branch Stock Management';
                    RunObject = Page 70036;
                }
                action("Dynamic Ordering System")
                {
                    Caption = 'Dynamic Ordering System';
                    RunObject = Page 50009;
                }
                action("Japan Order Update")
                {
                    Caption = 'Japan Order Update';
                    RunObject = Page 50155;
                }
                action("JPM List")
                {
                    Caption = 'JPM List';
                    RunObject = Page 70112;
                }
                action("Transfer Order1")
                {
                    Caption = 'Transfer Order';
                    RunObject = Page 5742;
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
            group("Warranty Process1")
            {
                Caption = 'Warranty Process';
                action("Warranty Coupon1")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 70048;
                }
            }
            group("Warranty Claims")
            {
                Caption = 'Warranty Claims';
                action("Warranty Claim List")
                {
                    RunObject = Page 50163;
                }
                action("Posted Material Claims")
                {
                    Caption = 'Posted Material Claims';
                    RunObject = Page 50202;
                }
                action("Closed Warranty Claims")
                {
                    Caption = 'Closed Warranty Claims';
                    RunObject = Page 70051;
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Sales Shipment")
                {
                    Caption = 'Posted Sales Shipment';
                    RunObject = Page 142;
                }
                action("Posted Sales Invoice")
                {
                    Caption = 'Posted Sales Invoice';
                    RunObject = Page 143;
                }
                action("<Page Posted Service invoice> ")
                {
                    Caption = 'Posted Service Invoice';
                    RunObject = Page 5977;
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
                action("Page Posted IOU Retirement List>")
                {
                    Caption = 'Page Posted IOU Retirement List>';
                    RunObject = Page 70034;
                }
                action("Page Posted Sales Credit Memo")
                {
                    Caption = 'Page Posted Sales Credit Memo';
                    RunObject = Page 144;
                }
                action("Page Posted Purchase Credit Memos>")
                {
                    Caption = 'Page Posted Purchase Credit Memos>';
                    RunObject = Page 147;
                }
            }
            group("DMS Kodawari Parts Operation")
            {
                Caption = 'DMS Kodawari Parts Operation';
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
                action("Service Credit Memo")
                {
                    Caption = 'Service Credit Memo';
                    RunObject = Page 9320;
                }
                action("Posted COF Maintenance")
                {
                    Caption = 'Posted COF Maintenance';
                    RunObject = Page 70065;
                }
            }
            group(VRI1)
            {
                Caption = 'VRI';
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
                action("Vehicle Receipt Inspection")
                {
                    Caption = 'Vehicle Receipt Inspection';
                    Image = AnalysisView;
                    RunObject = Page 50262;
                }
                action("VRI in Progress")
                {
                    Caption = 'VRI in Progress';
                    Image = Document;
                    RunObject = Page 50398;
                }
                action("ISPV Folder")
                {
                    Caption = 'ISPV Folder';
                    Image = AllocatedCapacity;
                    RunObject = Page 70035;
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
                action("Head of Audit  Appr.")
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
                action("Advanced Payment Approved-Opex")
                {
                    Caption = 'Advanced Payment Approved-Opex';
                    RunObject = Page 70145;
                }
                action("Compliance Check1")
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
                action("LPO-Opex")
                {
                    Caption = 'LPO-Opex';
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
                action("Gen. Manager Appr.-Capex")
                {
                    Caption = 'Gen. Manager Appr.-Capex';
                    RunObject = Page 70156;
                }
                action("Managing Dir. Appr.-Capex")
                {
                    Caption = 'Managing Dir. Appr.-Capex';
                    RunObject = Page 70157;
                }
                action("Move to LPO -Capex")
                {
                    Caption = 'Move to LPO -Capex';
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
                action("Full  Payment Appr.-Capex")
                {
                    Caption = 'Full  Payment Appr.-Capex';
                    RunObject = Page 70162;
                }
                action("LPO-Capex")
                {
                    Caption = 'LPO-Capex';
                    RunObject = Page 70165;
                }
            }
            group("Air Order1")
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
            group("Warranty Process")
            {
                Caption = 'Warranty Process';
                action("Warranty Coupon")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 70048;
                }
                action("Direct Warranty  Coupon")
                {
                    Caption = 'Direct Warranty  Coupon';
                    RunObject = Page 70185;
                }
                action("Toyota Warranty Registration")
                {
                    Caption = 'Toyota Warranty Registration';
                    RunObject = Page 70060;
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
            group("Vehicle Delivery")
            {
                Caption = 'Vehicle Delivery';
                action("Store Requisition")
                {
                    Caption = 'Store Requisition';
                    RunObject = Page 50207;
                }
                action("Posted Issue Journal")
                {
                    Caption = 'Posted Issue Journal';
                    RunObject = Page 50357;
                }
                action("Posted Store Requisition")
                {
                    Caption = 'Posted Store Requisition';
                    RunObject = Page 50208;
                }
                action("Item Journal")
                {
                    Caption = 'Item Journal';
                    RunObject = Page 262;
                    RunPageView = WHERE("Template Type" = CONST(Item),
                                        Recurring = filter(false));
                }
            }
        }
        area(creation)
        {
            action("&Transfer Order")
            {
                Caption = 'Transfer Order';
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
            action("Workshop Parts Used")
            {
                RunObject = Report 50092;
            }
        }
        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action("Vehicle Receipt Inspection1")
            {
                Caption = 'Vehicle Receipt Inspection';
                Image = AnalysisView;
                RunObject = Page 50261;
            }
            action("VRI in Progress1")
            {
                Caption = 'VRI in Progress';
                Image = Document;
                RunObject = Page 50397;
            }
            action("ISPV Folder1")
            {
                Caption = 'ISPV Folder';
                Image = AllocatedCapacity;
                RunObject = Page 50459;
            }
            separator(Control1)
            {
                IsHeader = true;
            }
            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
            action(Navigate)
            {
                Caption = 'Navigate';
                RunObject = Page 344;
            }
            action("Item & Tracing")
            {
                Caption = 'Item &Tracing';
                Image = ItemTracing;
                RunObject = Page 6520;
            }
        }
    }
}

