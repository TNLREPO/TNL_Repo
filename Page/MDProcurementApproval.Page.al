page 70199 "MD Procurement Approval"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (Procurement Approved=CONST(No),
                            GM Approval=CONST(No),
                            MD Approval=CONST(Yes),
                            Genarate LPO=CONST(No),
                            Rejected=CONST(No),
                            Compliance check=CONST(Satisfactory),
                            Head of Audit=CONST(Approved),
                            Total Purchase Value=FILTER(>499,999.99));

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

    var
        ProcurementHeader: Record "70008";
}

