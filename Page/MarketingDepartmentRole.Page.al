page 50587 "Marketing Department Role"
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
            action("Sales Order Mkt")
            {
                Caption = 'Sales Order Mkt';
                RunObject = Page 50250;
            }
            action("&Customer - Labels")
            {
                Caption = '&Customer - Labels';
                Image = "Report";
                RunObject = Report 110;
            }
            action("Customer /Item Sales")
            {
                Caption = 'Customer /Item Sales';
                RunObject = Report 113;
            }
            action("Sales Credit Memos")
            {
                Caption = 'Sales Credit Memos';
                RunObject = Page 9302;
            }
            action("Inventory Customer Sales")
            {
                Caption = 'Inventory Customer Sales';
                RunObject = Report 713;
            }
            action("Cars Inventory")
            {
                Caption = 'Cars Inventory';
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 50321;
            }
            action("Customer Detail Trial Balance")
            {
                Caption = 'Customer Detail Trial Balance';
                RunObject = Report 104;
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
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
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
            group(Inventory)
            {
                Caption = 'Inventory';
                Image = ReferenceData;
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
                action("Posted IOU Retirement")
                {
                    RunObject = Page 70034;
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
            action("Sales Order")
            {
                Caption = 'Sales Order';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 9305;
            }
            action("Sales Cr. Memo")
            {
                Caption = 'Sales Cr. Memo';
                Image = document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 44;
            }
            separator()
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
        }
    }
}

