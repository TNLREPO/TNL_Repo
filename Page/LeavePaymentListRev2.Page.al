page 50096 "Leave Payment List Rev2"
{
    CardPageID = "Actual Leave Card";
    PageType = List;
    SourceTable = Table50076;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Leave Period"; "Leave Period")
                {
                    Visible = false;
                }
                field("Employee No."; "Employee No.")
                {
                    Visible = false;
                }
                field("Document No"; "Document No")
                {
                }
                field("Amount Paid"; "Amount Paid")
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

