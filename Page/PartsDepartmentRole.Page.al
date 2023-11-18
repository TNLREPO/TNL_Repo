page 50588 "Parts Department Role"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                part(; 9060)
                {
                }
                part(; 9063)
                {
                }
            }
            group()
            {
                part(; 770)
                {
                }
                part(; 760)
                {
                }
                part("E-Procurement"; 70179)
                {
                    Caption = 'E-Procurement';
                }
                part(; 675)
                {
                    Visible = false;
                }
                part(; 9151)
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
            action("Isolo Part Report")
            {
                Caption = 'Isolo Part Report';
                RunObject = Page 80070;
            }
            action("Isolo Part Report Updated")
            {
                Caption = 'Isolo Part Report Updated';
                RunObject = Page 80072;
            }
            action("Part Sales To TCSC")
            {
                Caption = 'Part Sales To TCSC';
                Image = CreditCard;
                RunObject = Report 50626;
            }
            action("Stock Transfer Report")
            {
                Caption = 'Stock Transfer Report';
                RunObject = Report 50401;
            }
            action("Inventory List")
            {
                RunObject = Report 50622;
            }
            action("Part Inventory Valuation Report")
            {
                RunObject = Report 50500;
            }
            action("Bus. Operation Report_LPN/LPU")
            {
                Caption = 'Bus. Operation Report_LPN/LPU';
                RunObject = Report 50634;
            }
            action("Bus. Operation Report")
            {
                Caption = 'Bus. Operation Report';
                RunObject = Report 50635;
            }
            action("Details of Order Received from Dealers")
            {
                Caption = 'Details of Order Received from Dealers';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50621;
            }
            action("Report Item Sales & Purch History")
            {
                RunObject = Report 50322;
            }
            action("Flash Report")
            {
                Caption = 'Flash Report';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50618;
            }
            action("Inventory Analysis")
            {
                Caption = 'Inventory Analysis';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50447;
            }
            action("Vehicles Under Repair")
            {
                Caption = 'Vehicles Under Repair';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50613;
            }
            action("Create Item  Variant -Sea")
            {
                Caption = 'Create Item  Variant -Sea';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50120;
            }
            action("Dealers Outstanding Payment Statement")
            {
                Caption = 'Dealers Outstanding Payment Statement';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50610;
            }
            action("Daily Sales Invoice Summary- Part")
            {
                Caption = 'Daily Sales Invoice Summary- Part';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50612;
            }
            action("Customer Item Sale-Part")
            {
                Caption = 'Customer Item Sale-Part';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50608;
            }
            action("Vehicle Sales")
            {
                Caption = 'Vehicle Sales';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50603;
            }
            action("Inventory Valuation")
            {
                Image = "Report";
                RunObject = Report 1001;
            }
            action("<Report Inventory - Customer Sale")
            {
                RunObject = Report 713;
            }
            action("Daily Flash Report")
            {
                Caption = 'Daily Flash Report';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50405;
            }
            action("Inventory Availability")
            {
                Caption = 'Inventory Availability';
                Image = "report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 707;
            }
            action("Inventory Sales Statistics")
            {
                Caption = 'Inventory Sales Statistics';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 712;
            }
            action("Sales Statistics By Price Grp")
            {
                Caption = 'Sales Statistics By Price Grp';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50124;
            }
            action("Inventory Cost and price List")
            {
                Caption = 'Inventory Cost and price List';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 716;
            }
            action("Inventory Price List")
            {
                Caption = 'Inventory Price List';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50188;
            }
            action("Inventory Valuation New")
            {
                Caption = 'Inventory Valuation New';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50379;
            }
            action("Item Age Composition-Qty")
            {
                Caption = 'Item Age Composition-Qty';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 5807;
            }
            action("Item Age Composition-Vaue")
            {
                Caption = 'Item Age Composition-Vaue';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 5808;
            }
            action("Item History")
            {
                Caption = 'Item History';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50402;
            }
            action("Vehicle Sales Summary")
            {
                Caption = 'Vehicle Sales Summary';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50603;
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
            action("Customer Credit Limit Analysis")
            {
                Caption = 'Customer Credit Limit Analysis';
                RunObject = Report 50340;
            }
            action("Inventory Movement")
            {
                Caption = 'Inventory Movement';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 1001;
            }
            action("TNL Sales Contribution")
            {
                Caption = 'TNL Sales Contribution';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50184;
            }
            action("TNL Sales Cont.Part & Vehicle")
            {
                Caption = 'TNL Sales Cont.Part & Vehicle';
                RunObject = Report 50325;
            }
            action("Item Movement Monitor")
            {
                Caption = 'Item Movement Monitor';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50183;
            }
            action("Item Register-Qty")
            {
                Caption = 'Item Register-Qty';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 703;
            }
            action("Item Register-Value")
            {
                Caption = 'Item Register-Value';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 5805;
            }
            action("Stock Analysis")
            {
                Caption = 'Stock Analysis';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50116;
            }
            action("TNL Stock Analysis")
            {
                Caption = 'TNL Stock Analysis';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50116;
            }
            action("Stock Transfer")
            {
                Caption = 'Stock Transfer';
                Image = TransferOrder;
                RunObject = Report 50401;
            }
            action("Parts by Category")
            {
                Caption = 'Parts by Category';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50307;
            }
            action("Parts by Maintenenace")
            {
                Caption = 'Parts by Maintenenace';
                Image = "report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50354;
            }
            action("Lost Sales on Search Tracker")
            {
                Caption = 'Lost Sales on Search Tracker';
                Image = "Report ";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50221;
            }
            action("Inventory Picking List")
            {
                Caption = 'Inventory Picking List';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 813;
            }
            action("Inventory Posting - Test")
            {
                Caption = 'Inventory Posting - Test';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 702;
            }
            action("Inventory -Inbound Transfer")
            {
                Caption = 'Inventory -Inbound Transfer';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 5702;
            }
            action("Report Transfer-Transit Cost Analysis>")
            {
                Caption = 'Report Transfer-Transit Cost Analysis>';
                Image = "Report";
                RunObject = Report 50338;
            }
            action("Phys. Inv. List Difference Report")
            {
                Caption = 'Phys. Inv. List Difference Report';
                Image = "Report ";
                RunObject = Report 50099;
            }
            action("Registered Line Item List")
            {
                Caption = 'Registered Line Item List';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50082;
            }
            action("Inventory Valuation Group")
            {
                Caption = 'Inventory Valuation Group';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50233;
            }
            action("Service Rate Width By Depth")
            {
                Caption = 'Service Rate Width By Depth';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50042;
            }
            action("Service Rate Detail/Summary")
            {
                Caption = 'Service Rate Detail/Summary';
                Image = "Report";
                RunObject = Report 50162;
            }
            action("Zero Movement Report")
            {
                Caption = 'Zero Movement Report';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50108;
            }
            action("Phase In-Phase Out Report")
            {
                Caption = 'Phase In-Phase Out Report';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50109;
            }
            action("Transfer List")
            {
                Caption = 'Transfer List';
                Image = "Report";
                RunObject = Report 50276;
            }
            action("Parts By Model Sales/Loss Sale")
            {
                Caption = 'Parts By Model Sales/Loss Sale';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50228;
            }
            action("TNL Stock Analysis Report")
            {
                Caption = 'TNL Stock Analysis Report';
                Image = "Report";
                RunObject = Report 50116;
            }
            action("MVO Stock Per Model Code NET2")
            {
                Caption = 'MVO Stock Per Model Code NET2';
                Image = "Report";
                RunObject = Report 50234;
            }
            action("MVO Stock New")
            {
                Caption = 'MVO Stock New';
                Image = "Report";
                RunObject = Report 50273;
            }
            action("Service Rate Detailed and Summary")
            {
                Caption = 'Service Rate Detailed and Summary';
                Image = "Report";
                RunObject = Report 50162;
            }
            action("Purchase & Valuation details")
            {
                Caption = 'Purchase & Valuation details';
                Image = "Report";
                RunObject = Report 50344;
            }
            action("Sales Analysis Report")
            {
                Caption = 'Sales Analysis Report';
                Image = "Report";
                RunObject = Page 9376;
            }
            action("Warranty port")
            {
                Caption = 'Warranty port';
                RunObject = XMLport 50159;
            }
            action("TNL Sales Contribution-")
            {
                Caption = 'TNL Sales Contribution-';
                Image = "report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50324;
            }
            action("<Report Customer Acc. Sales Contribution")
            {
                Caption = 'Customer Acc. Sales Contribution';
                Image = "report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedIsBig = true;
                RunObject = Report 50445;
            }
            action("Customer Detail Trial Balance")
            {
                Caption = 'Customer Detail Trial Balance';
                RunObject = Report 104;
            }
            separator()
            {
            }
            action("&Customer - Labels")
            {
                Caption = '&Customer - Labels';
                Image = "Report";
                RunObject = Report 110;
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
                action("Customer Item Usage Lekki")
                {
                    RunObject = Report 50320;
                }
                action("Inventory valuation PARTS")
                {
                    RunObject = Report 70221;
                }
                action("Daily Sales Invoice Summary")
                {
                    RunObject = Report 50612;
                }
                action("Accessory  Sales to Dealers")
                {
                    RunObject = Report 50445;
                }
                action("Inventory Price List")
                {
                    RunObject = Report 50435;
                }
                action("Daily Sale Report")
                {
                    RunObject = Report 50418;
                }
                action("Item history")
                {
                    RunObject = Report 50402;
                }
                action("Stock per Location")
                {
                    RunObject = Report 50400;
                }
                action("Parts Used by Maintenance")
                {
                    RunObject = Report 50354;
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
                    RunPageView = WHERE (Template Type=CONST(Item),
                                        Recurring=CONST(No));
                }
                action("Phys. Inventory Journals")
                {
                    Caption = 'Phys. Inventory Journals';
                    RunObject = Page 262;
                    RunPageView = WHERE (Template Type=CONST(Phys. Inventory),
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
                Image = Journals;
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
                action("Transfer Order")
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
            group("Warranty Process")
            {
                Caption = 'Warranty Process';
                action("Warranty Coupon")
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
                action("Posted Service Shipments")
                {
                    Caption = 'Posted Service Shipments';
                    RunObject = Page 5974;
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
            group(VRI)
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
                action("Balance/Full Payment Opex-MD")
                {
                    Caption = 'Balance/Full Payment Opex-MD';
                    RunObject = Page 70186;
                }
                action("Balance/full Payment Opex- GM")
                {
                    Caption = 'Balance/Full Payment Opex GM';
                    RunObject = Page 70187;
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
                    RunPageView = WHERE (Template Type=CONST(Item),
                                        Recurring=CONST(No));
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
                RunObject = Page 5742;
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
            action("Worksho Parts Used")
            {
                Caption = '<Workshop Parts Used>';
                RunObject = Report 50092;
            }
            action("COF Pending Part Orders")
            {
                Caption = 'COF Pending Part Orders';
                RunObject = Page 80057;
            }
            action("COF Parts Ordered ")
            {
                Caption = 'COF Parts Ordered ';
                RunObject = Page 80058;
            }
            action("All COF")
            {
                RunObject = Page 80065;
            }
            action("Posted Service Shipments")
            {
                RunObject = Page 5974;
            }
            action("Transfer History")
            {
                RunObject = Page 70511;
            }
            action("Service Order List")
            {
                RunObject = Page 9318;
            }
            action("Stock Issue Voucher ")
            {
                RunObject = Report 50631;
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
            action("POS Receipt")
            {
                Caption = 'POS Receipt';
                RunObject = Page 70005;
            }
            action("Posted POS Receipt List")
            {
                RunObject = Page 80067;
            }
            separator()
            {
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
            action("Item &Tracing")
            {
                Caption = 'Item &Tracing';
                Image = ItemTracing;
                RunObject = Page 6520;
            }
        }
    }
}

