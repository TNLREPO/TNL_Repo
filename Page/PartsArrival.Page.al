page 80024 "Parts Arrival"
{
    Caption = 'Parts Arrived';
    CardPageID = "Customer Order Card";
    PageType = List;
    SourceTable = Table70034;
    SourceTableView = WHERE (Stage = CONST (Parts Arrived));

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
                field("Parts Arrived Date"; "Parts Arrived Date")
                {
                }
                field("Parts Arrived Time"; "Parts Arrived Time")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Model Name"; "Model Name")
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

