page 70171 "Complaint List"
{
    CardPageID = "Compaint Card";
    PageType = List;
    SourceTable = Table70011;
    SourceTableView = WHERE (Type of Call=CONST(Complain));

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
                field("Nature of Complain"; "Nature of Complain")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Customer Email"; "Customer Email")
                {
                }
                field("Customer Phone"; "Customer Phone")
                {
                }
                field(Status; Status)
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

