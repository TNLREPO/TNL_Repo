page 80065 "Open COF"
{
    CardPageID = "Parts Customer Order";
    Editable = false;
    PageType = List;
    SourceTable = Table70034;
    SourceTableView = WHERE (Delivered = CONST (No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field("Reception Date"; "Reception Date")
                {
                }
                field("Reception Time"; "Reception Time")
                {
                }
                field("Reception Type"; "Reception Type")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Parts Ordered Date"; "Parts Ordered Date")
                {
                }
                field("Parts Ordered Time"; "Parts Ordered Time")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field(Stage; Stage)
                {
                }
            }
        }
        area(factboxes)
        {
            systempart(; Notes)
            {
            }
            systempart(; Links)
            {
            }
        }
    }

    actions
    {
    }
}

