page 80020 Delivered
{
    CardPageID = "Customer Order Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70034;
    SourceTableView = WHERE (Delivered = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    Editable = false;
                }
                field("Date Delivered"; "Date Delivered")
                {
                }
                field("Time Delivered"; "Time Delivered")
                {
                }
                field("Expected Delivery Date"; "Expected Delivery Date")
                {
                }
                field("Expected Delivery Time"; "Expected Delivery Time")
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
                field("Repeat Repair"; "Repeat Repair")
                {
                }
                field("Payment for Estimate"; "Payment for Estimate")
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

