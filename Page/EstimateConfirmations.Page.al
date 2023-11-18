page 50127 "Estimate Confirmations"
{
    CardPageID = "TNL-Work Order Card";
    PageType = List;
    SourceTable = Table70025;
    SourceTableView = WHERE (Send for Approval=CONST(Yes),
                            1st Approval Status=FILTER(Approved),
                            Send Estimate=FILTER(Yes),
                            2nd Approval Status=FILTER(' '|Rejected|On hold));

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
                field("Requester Name";"Requester Name")
                {
                }
                field("Global Dimension 1 code";"Global Dimension 1 code")
                {
                }
                field("Request Type";"Request Type")
                {
                    Caption = 'Pupose';
                }
            }
        }
    }

    actions
    {
    }
}

