page 50591 "Warranty Processor Role"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control1)
            {
            }
            group(Control2)
            {
                part("Report Inbox Part"; 681)
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
                action("TNL Vehicle List")
                {
                    Caption = 'TNL Vehicle List';
                    RunObject = Page 70115;
                }
                action(Items)
                {
                    Caption = 'Items';
                    Image = Item;
                    RunObject = Page 31;
                }
                action("Item Journals")
                {
                    Caption = 'Item Journals';
                    RunObject = Page 262;
                    RunPageView = WHERE("Template Type" = FILTER(Item),
                                        Recurring = FILTER(false));
                }
                action("Phys. Inventory Journals")
                {
                    Caption = 'Phys. Inventory Journals';
                    RunObject = Page 262;
                    RunPageView = WHERE("Template Type" = FILTER("Phys. Inventory"),
                                        Recurring = FILTER(false));
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
            }
            group("Warranty Process")
            {
                Caption = 'Warranty Process';
                action("Warranty Coupon")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 50111;
                }
                action("Toyota Warranty Registration")
                {
                    Caption = 'Toyota Warranty Registration';
                    RunObject = Page 50111;
                }
            }
            group("Warranty Claims")
            {
                Caption = 'Warranty Claims';
                action("Warranty Claim List")
                {
                    RunObject = Page 50163;
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
            group(Sales)
            {
                Caption = 'Sales';
                action("Credit Memo")
                {
                    Caption = 'Credit Memo';
                    RunObject = Page 9302;
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
        }
    }
}

