page 50136 "TNL Work Order M_S"
{
    CardPageID = "TNL-Work Order M_S Card";
    PageType = List;
    SourceTable = Table70025;
    SourceTableView = WHERE (2nd Approval Status=FILTER(<>Approved),
                            Reject=CONST(No),
                            Send for Approval=CONST(No));

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

