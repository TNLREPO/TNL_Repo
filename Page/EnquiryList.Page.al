page 70173 "Enquiry List"
{
    CardPageID = "Enquiry Card";
    PageType = List;
    SourceTable = Table70011;
    SourceTableView = WHERE (Type of Call=CONST(Enquiry));

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
                field("Enquiry Date"; "Enquiry Date")
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
                field("Enquiry Type"; "Enquiry Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

