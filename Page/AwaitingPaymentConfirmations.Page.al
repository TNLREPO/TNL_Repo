page 50240 "Awaiting Payment Confirmations"
{
    CardPageID = "TNL-Work Order Card";
    PageType = List;
    SourceTable = Table70025;
    SourceTableView = WHERE (Invoice Received=FILTER(Yes),
                            Payment Confirmed=FILTER(Yes));

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

