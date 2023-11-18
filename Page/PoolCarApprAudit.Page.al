page 70249 "Pool Car Appr. Audit"
{
    CardPageID = "Pool Car Request Card";
    PageType = List;
    SourceTable = Table70002;
    SourceTableView = WHERE (Global Dimension 1 code=CONST(08AUDSYS),
                            1st Approval Status=FILTER(' '),
                            Send for Approval=FILTER(Yes));

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
                field(Approved;Approved)
                {
                }
                field("Approved by";"Approved by")
                {
                }
            }
        }
    }

    actions
    {
    }
}

