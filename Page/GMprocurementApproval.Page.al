page 70198 "GM procurement Approval"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (Procurement Approval=CONST(No),
                            GM Approval=CONST(Yes),
                            MD Approval=CONST(No),
                            Genarate LPO=CONST(No),
                            Total Purchase Value=FILTER(100,001..499,000.99),
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

