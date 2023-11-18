page 70505 "Prospective Customer"
{
    CardPageID = "Takata Customer Card";
    PageType = List;
    SourceTable = Table70029;
    SourceTableView = WHERE (Email = CONST (<>''),
                            Not Reachable=FILTER(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field("Registration. No";"Registration. No")
                {
                }
                field("Chassis No";"Chassis No")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field(Address;Address)
                {
                }
                field("Mobile No";"Mobile No")
                {
                }
                field("Vehicle Make Name";"Vehicle Make Name")
                {
                }
                field(Email;Email)
                {
                }
                field(Comment;Comment)
                {
                }
                field(Name;Name)
                {
                }
                field("Date of Call";"Date of Call")
                {
                }
                field("Call Result";"Call Result")
                {
                }
                field("Call Purpose";"Call Purpose")
                {
                }
            }
        }
    }

    actions
    {
    }
}

