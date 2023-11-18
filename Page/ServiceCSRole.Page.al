page 50576 "Service CS Role"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
            }
            group()
            {
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
            group("Warranty Process")
            {
                Caption = 'Warranty Process';
                action("Warranty Coupon")
                {
                    Caption = 'Warranty Coupon';
                    RunObject = Page 70018;
                }
                action("Pending Takata  Calls")
                {
                    Caption = 'Pending Takata  Calls';
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
                action("Not Reachable Customers")
                {
                    Caption = 'Not Reachable Customers';
                    RunObject = Page 70510;
                }
                action("TCSC Customer List")
                {
                    Caption = 'TCSC Customer List';
                    RunObject = Page 70175;
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
            }
        }
    }
}

