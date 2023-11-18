page 70237 "Leave Req. Approval"
{
    CardPageID = "Leave Request Card";
    PageType = List;
    SourceTable = Table70009;
    SourceTableView = WHERE (Global Dimension 1 code=CONST(08AUDSYS),
                            Send for Approval=CONST(Yes),
                            1st Approval Status=FILTER(' '|On hold));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No.";"Request No.")
                {
                }
                field("Entry Date";"Entry Date")
                {
                }
                field("Request Type";"Request Type")
                {
                }
                field(Requester;Requester)
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("User ID";"User ID")
                {
                }
                field("Global Dimension 1 code";"Global Dimension 1 code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

