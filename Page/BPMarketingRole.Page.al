page 50581 "B&P Marketing Role"
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
            group("Human Resources")
            {
                Caption = 'Human Resources';
                action("Pool Car New Request")
                {
                    Caption = 'Pool Car New Request';
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
                action("Leave Request")
                {
                    Caption = 'Leave Request';
                    RunObject = Page 50604;
                }
                action("Approval Leave Request")
                {
                    Caption = 'Approval Leave Request';
                    RunObject = Page 50609;
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
                action("Balance/Full Payment Approved Opex")
                {
                    Caption = 'Balance/Full Payment Approved Opex';
                    RunObject = Page 70140;
                }
                separator()
                {
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
                action("Head of Dept. Appr. Capex")
                {
                    Caption = 'Head of Dept. Appr. Capex';
                    RunObject = Page 70155;
                }
                action("Move to LPO -Capex")
                {
                    Caption = 'Move to LPO -Capex';
                    RunObject = Page 70158;
                }
                action("Compliance Check -Capex")
                {
                    Caption = 'Compliance Check -Capex';
                    RunObject = Page 70161;
                }
                action("Advance Payment Apprv. -Capex")
                {
                    Caption = 'Advance Payment Apprv. -Capex';
                    RunObject = Page 70159;
                }
                action("Awaiting Bal Payment -Capex")
                {
                    Caption = 'Awaiting Bal Payment -Capex';
                    RunObject = Page 70167;
                }
                action("Full Payment Appr.-Capex")
                {
                    Caption = 'Full Payment Appr.-Capex';
                    RunObject = Page 70162;
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                action(Item)
                {
                    Caption = 'Item';
                    RunObject = Page 31;
                }
                action(Vendor)
                {
                    Caption = 'Vendor';
                    RunObject = Page 27;
                }
                action(Customers)
                {
                    Caption = 'Customers';
                    Image = Customer;
                    RunObject = Page 22;
                }
                action("Purchase Order")
                {
                    Caption = 'Purchase Order';
                    RunObject = Page 9307;
                }
                action("Transfer Order")
                {
                    Caption = 'Transfer Order';
                    RunObject = Page 5742;
                }
                action("Sales Invoices")
                {
                    Caption = 'Sales Invoices';
                    RunObject = Page 143;
                }
            }
        }
        area(reporting)
        {
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
            action("Purchase & Valuation Details")
            {
                Caption = 'Purchase & Valuation Details';
                RunObject = Report 50344;
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
    }
}

