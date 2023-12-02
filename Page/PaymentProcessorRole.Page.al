page 50583 "Payment Processor Role"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
        }
    }

    actions
    {
        area(reporting)
        {
            action("Inventory Transaction Details")
            {
                Caption = 'Inventory Transaction Details';
                Image = "Report";
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Report 704;
            }
        }
        area(embedding)
        {
        }
        area(sections)
        {
            group("Payment Process")
            {
                Caption = 'Payment Process';
                Image = Journals;
                action("Journal Voucher")
                {
                    Caption = 'Journal Voucher';
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
                action("IOU Treated")
                {
                    RunObject = Page 50217;
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
            group(Order)
            {
                Caption = 'Order';
                action("Purchase Order")
                {
                    Caption = 'Purchse Order';
                    RunObject = Page 9307;
                }
                action("Purchase Invoice")
                {
                    Caption = 'Purchse Invoice';
                    RunObject = Page 9308;
                }
                action("Purchase Credit Memo")
                {
                    Caption = 'Purchase Credit Memo';
                    RunObject = Page 9309;
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
                action("Close Request")
                {
                    Caption = 'Close Request';
                    RunObject = Page 50601;
                }
            }
            group("Fixed Assets")
            {
                Caption = 'Fixed Assets';
                action("Fixed Asset List")
                {
                    RunObject = Page 5601;
                }
            }
            group(Opex1)
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
                separator(Control1)
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
            group(Capex1)
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
            group("Leave Request1")
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
            group(Fuel)
            {
                Caption = 'Fuel';
                action("Fuel Purchase")
                {
                    Caption = 'Fuel Purchase';
                    RunObject = Page 9307;
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
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
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
            }
        }
    }
}

