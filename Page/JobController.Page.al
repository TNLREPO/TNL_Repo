page 50360 "Job Controller"
{
    PageType = Card;
    SourceTable = Table50119;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                    Caption = 'COF No.';
                    TableRelation = "Customer Order Table."."Customer Order Form No.";
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                    Caption = 'Vehicle Reg No.';
                }
                field("Service Advisor's Name"; "Service Advisor's Name")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Reception Date"; "Reception Date")
                {
                }
                field("Reception Time"; "Reception Time")
                {
                }
                field("Expected Delivery Date"; "Expected Delivery Date")
                {
                }
                field("Expected Delivery Time"; "Expected Delivery Time")
                {
                }
                field("Priority Class"; "Priority Class")
                {
                }
                field(Status; Status)
                {
                }
                field("Job Start Date"; "Job Start Date")
                {
                }
                field("Job Start Time"; "Job Start Time")
                {
                }
                field("Service Duration"; "Service Duration")
                {
                }
                field("JC Date"; "JC Date")
                {
                }
                field("JC Time"; "JC Time")
                {
                }
                field("Job Progress"; "Job Progress")
                {
                }
                field("Frame No./VIN"; "Frame No./VIN")
                {
                }
                field("(Engine No)"; "(Engine No)")
                {
                }
                field("Vehicle Registered Date"; "Vehicle Registered Date")
                {
                }
                field("Odometer Reading At Reception"; "Odometer Reading At Reception")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Customer Order Form Date"; "Customer Order Form Date")
                {
                }
                field("Job Type"; "Job Type")
                {
                }
                field("General Repair"; "General Repair")
                {
                }
                field(Internal; Internal)
                {
                }
                field(Warranty; Warranty)
                {
                }
                field("Customer Waiting"; "Customer Waiting")
                {
                }
                field("Repeat Repair"; "Repeat Repair")
                {
                }
                field("Model No"; "Model No")
                {
                }
                field("Model Year"; "Model Year")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Customer Order Form")
            {
                Caption = 'Customer Order Form';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page 50251;
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }
}

