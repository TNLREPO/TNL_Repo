page 50123 "Service Adviser Role Center."
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                part(; 50124)
                {
                }
            }
            group()
            {
                part(; 675)
                {
                    Visible = false;
                }
                part(; 9150)
                {
                }
                part(; 681)
                {
                    Visible = false;
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
            action("Service &Order")
            {
                Caption = 'Service &Order';
                Image = Document;
                RunObject = Report 5900;
            }
            action("Service Item &Line Labels")
            {
                Caption = 'Service Item &Line Labels';
                Image = "Report";
                RunObject = Report 5901;
            }
            action("Service &Item Worksheet")
            {
                Caption = 'Service &Item Worksheet';
                Image = ServiceItemWorksheet;
                RunObject = Report 5936;
            }
        }
        area(embedding)
        {
            action(Inventory)
            {
                Caption = 'Inventory';
                Image = List;
                RunObject = Page 50236;
            }
            action("<Page50574>")
            {
                Caption = 'Maintenance Reminder Today';
            }
        }
        area(sections)
        {
        }
        area(creation)
        {
            action("Service &Order")
            {
                Caption = 'Service &Order';
                Image = Document;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 5900;
                RunPageMode = Create;
            }
            action("&Loaner")
            {
                Caption = '&Loaner';
                Image = Loaner;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 5922;
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
            action("Service Item &Worksheet")
            {
                Caption = 'Service Item &Worksheet';
                Image = ServiceItemWorksheet;
                RunObject = Page 5906;
            }
        }
    }
}

