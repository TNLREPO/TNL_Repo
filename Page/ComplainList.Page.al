page 50369 "Complain List"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50052;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Complain Code"; "Complain Code")
                {
                }
                field("Date of Complaint"; "Date of Complaint")
                {
                }
                field("Vendor Code"; "Vendor Code")
                {
                }
                field("Vendor Name"; "Vendor Name")
                {
                }
                field("Purchase Date"; "Purchase Date")
                {
                }
                field("Model Category"; "Model Category")
                {
                }
                field(Complaint; Complaint)
                {
                }
                field(Complaint1; Complaint1)
                {
                }
                field("Date of Request to TNL"; "Date of Request to TNL")
                {
                }
                field("Date of TNL Reply to Dealer"; "Date of TNL Reply to Dealer")
                {
                }
                field("Vehicle Category"; "Vehicle Category")
                {
                }
                field("Customer's Satisfaction"; "Customer's Satisfaction")
                {
                }
                field(Reason; Reason)
                {
                }
                field("Date Closed"; "Date Closed")
                {
                }
                field("Operation Area Problem"; "Operation Area Problem")
                {
                }
                field("Preventive Measures"; "Preventive Measures")
                {
                }
                field("Preventive Measures 2"; "Preventive Measures 2")
                {
                }
                field("COF No."; "COF No.")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Job Details"; "Job Details")
                {
                }
                field("Job Details1"; "Job Details1")
                {
                }
                field("COF Date"; "COF Date")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Model Year"; "Model Year")
                {
                }
                field("Registered Date"; "Registered Date")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Customer Complain")
            {
                Caption = 'Customer Complain';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page 50368;
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }
}

