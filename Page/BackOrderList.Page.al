page 70512 "Back Order List"
{
    PageType = List;
    SourceTable = Table70036;
    SourceTableView = WHERE (Stock Status=FILTER(Not Available|Not Established|Local Part Purch));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No.";"Document No.")
                {
                }
                field("No.";"No.")
                {
                }
                field(Description;Description)
                {
                }
                field("Quantity Received";"Quantity Received")
                {
                }
                field("Unit Price";"Unit Price")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field("Quantity Available";"Quantity Available")
                {
                }
                field("Stock Status";"Stock Status")
                {
                }
                field("Job Instruction No.";"Job Instruction No.")
                {
                }
                field("Quantity Requested";"Quantity Requested")
                {
                }
            }
        }
    }

    actions
    {
    }
}

