page 50586 "Dealer Development Role"
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
                part(; 681)
                {
                }
                part(; 70235)
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
        }
        area(sections)
        {
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
                action("Warranty Data Uploaded")
                {
                    Caption = 'Warranty Data Uploaded';
                    RunObject = Page 50624;
                }
                action("Dealer Sales Cycles")
                {
                    Caption = 'Dealer Sales Cycles';
                    RunObject = Page 50625;
                }
            }
            group("Warranty Claims")
            {
                Caption = 'Warranty Claims';
                action("Warrantee Claim")
                {
                    RunObject = Page 50163;
                }
                action("Posted Material Claims")
                {
                }
                action("Posted Labour Claims")
                {
                }
                action("Closed Warranty Claims")
                {
                }
            }
            group(CRM)
            {
                Caption = 'CRM';
                Image = ReferenceData;
                action(Complain)
                {
                    Caption = 'Complain';
                    RunObject = Page 70171;
                }
                action(Enquiry)
                {
                    Caption = 'Enquiry';
                    RunObject = Page 70173;
                }
                action(Request)
                {
                    Caption = 'Request';
                    RunObject = Page 70180;
                }
            }
            group(Kodawari)
            {
                Caption = 'Kodawari';
                action("Open Job")
                {
                    Caption = 'Open Job';
                    RunObject = Page 80043;
                }
                action("Delivered Job")
                {
                    Caption = 'Delivered Job';
                    RunObject = Page 80020;
                }
                action("PSFU List - Open")
                {
                    Caption = 'PSFU - Open';
                    RunObject = Page 80048;
                }
                action("PSFU List - Treated")
                {
                    Caption = 'PSFU List - Treated';
                    RunObject = Page 80008;
                }
                action("PSFU List - Today")
                {
                    RunObject = Page 80063;
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
                action("Awaiting Balance Payment-Capex")
                {
                    RunObject = Page 70167;
                }
                action("Advance Paymt Appr.-Capex")
                {
                    RunObject = Page 70159;
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
            group("Payment Process")
            {
                Caption = 'Payment Process';
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
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted IOU Retirement")
                {
                    RunObject = Page 70034;
                }
            }
        }
        area(creation)
        {
        }
        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
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

