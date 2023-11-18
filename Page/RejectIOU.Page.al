page 50220 "Reject IOU"
{
    PageType = List;
    SourceTable = Table50105;
    SourceTableView = WHERE (Reject = FILTER (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("IOU No."; "IOU No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(Description; Description)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Collected By"; "Collected By")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

