page 50096 "Leave Payment List Rev2"
{
    CardPageID = "Actual Leave Card";
    PageType = List;
    SourceTable = "Holidays";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Leave Period";Rec."Leave Period")
                {
                    Visible = false;
                }
                field("Employee No.";Rec."Employee No.")
                {
                    Visible = false;
                }
                field("Document No"; "Document No")
                {
                }
                field("Amount Paid";Rec. "Amount Paid")
                {
                }
                field("Payment Date";Rec. "Payment Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

