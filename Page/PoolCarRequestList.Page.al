page 50592 "Pool Car Request List"
{
    CardPageID = "Pool Car Request Card";
    PageType = List;
    SourceTable = Table70002;
    SourceTableView = WHERE (2nd Approval Status=FILTER(<>Approved),
                            Reject=CONST(No));

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

