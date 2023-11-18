page 70180 "Request List"
{
    CardPageID = "Request Card";
    PageType = List;
    SourceTable = Table70011;
    SourceTableView = WHERE (Type of Call=CONST(Request));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field(Date; Date)
                {
                }
                field("Date Matter Occured"; "Date Matter Occured")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Customer Phone"; "Customer Phone")
                {
                }
                field("Customer Email"; "Customer Email")
                {
                }
                field("Dealer's Name"; "Dealer's Name")
                {
                }
                field("Type of Call"; "Type of Call")
                {
                }
                field("Dealer's No"; "Dealer's No")
                {
                }
            }
        }
    }

    actions
    {
    }
}

