page 70050 "Warranty Claim Posted List"
{
    Editable = true;
    PageType = List;
    SourceTable = Table50038;
    SourceTableView = WHERE (Warranty Closed=CONST(No),
                            Claim Materials Posted=CONST(Yes),
                            Claim Charges Posted=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Claim No."; "Claim No.")
                {
                }
                field("Dealer Code"; "Dealer Code")
                {
                }
                field("Dealer Name"; "Dealer Name")
                {
                }
                field("Line Item Count"; "Line Item Count")
                {
                }
                field("Process Date"; "Process Date")
                {
                }
                field("Warranty Claim Exist"; "Warranty Claim Exist")
                {
                }
                field("Vehicle Identification No."; "Vehicle Identification No.")
                {
                }
                field("Vehicle Engine No."; "Vehicle Engine No.")
                {
                }
                field("Vehicle Model"; "Vehicle Model")
                {
                }
                field("Model Year"; "Model Year")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Odometer Reading"; "Odometer Reading")
                {
                }
                field("Owners Name"; "Owners Name")
                {
                }
                field("Under Warranty"; "Under Warranty")
                {
                }
                field("Warranty Expired"; "Warranty Expired")
                {
                }
                field("Warranty Expired Date"; "Warranty Expired Date")
                {
                }
                field("Claim Approved by TNL"; "Claim Approved by TNL")
                {
                }
                field("Total Material Claim cost"; "Total Material Claim cost")
                {
                }
                field("Total Labour Claim"; "Total Labour Claim")
                {
                }
                field("Date Approved by TNL"; "Date Approved by TNL")
                {
                }
                field("TWC No."; "TWC No.")
                {
                }
                field("Claim Refund by TMC"; "Claim Refund by TMC")
                {
                }
                field("Labour Charge accepted by TMC"; "Labour Charge accepted by TMC")
                {
                }
                field("Replace Dealer Material Claim"; "Replace Dealer Material Claim")
                {
                }
                field("Refund Dealer Labour Claim"; "Refund Dealer Labour Claim")
                {
                }
                field("Material Claim Approved"; "Material Claim Approved")
                {
                    Editable = false;
                }
                field("Labour Claim Approved"; "Labour Claim Approved")
                {
                }
                label("Warranty Claims")
                {
                }
            }
        }
    }

    actions
    {
    }
}

