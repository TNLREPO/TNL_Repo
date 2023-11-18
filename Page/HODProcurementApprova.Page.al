page 70197 "HOD Procurement Approva"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (Procurement Approval=CONST(Yes),
                            GM Approval=CONST(No),
                            MD Approval=CONST(No),
                            Float=CONST(No),
                            Total Purchase Value=FILTER(<100,001),
                            Rejected=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPP No.";"LPP No.")
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Requester Department";"Requester Department")
                {
                }
                field("Supplier's Name";"Supplier's Name")
                {
                }
                field("Justification for purchase";"Justification for purchase")
                {
                }
                field("Total Purchase Value";"Total Purchase Value")
                {
                }
            }
        }
    }

    actions
    {
    }
}

