page 50596 "Pool Car Allocation List"
{
    CardPageID = "Pool Car Allocation Card";
    PageType = List;
    SourceTable = Table70003;
    SourceTableView = WHERE (Reject = FILTER (No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Allocation No."; "Allocation No.")
                {
                }
                field("Request No."; "Request No.")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Pickup Date"; "Pickup Date")
                {
                }
                field("Return Date"; "Return Date")
                {
                }
                field("Expected Hours"; "Expected Hours")
                {
                }
                field("Driver Name"; "Driver Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

