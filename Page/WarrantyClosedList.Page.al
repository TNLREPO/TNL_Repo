page 70051 "Warranty Closed List"
{
    CardPageID = "Closed Warranty Claim card";
    PageType = List;
    SourceTable = Table50038;
    SourceTableView = WHERE (Warranty Closed=CONST(Yes));

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
                field("Process Date"; "Process Date")
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
                field("Warranty Claim Exist"; "Warranty Claim Exist")
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
                field("No. Series"; "No. Series")
                {
                }
                field("Material Claim Approved"; "Material Claim Approved")
                {
                }
                field("Labour Claim Approved"; "Labour Claim Approved")
                {
                }
                field("Warranty Closed"; "Warranty Closed")
                {
                }
                field("Claim Charges Posted"; "Claim Charges Posted")
                {
                }
                field("Claim Materials Posted"; "Claim Materials Posted")
                {
                }
                field("Mat Amt Refunded by TMC(FCY)"; "Mat Amt Refunded by TMC(FCY)")
                {
                }
                field("Warranty Refund Account"; "Warranty Refund Account")
                {
                }
                field("Labor Amt Refunded by TMC(FCY)"; "Labor Amt Refunded by TMC(FCY)")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Branch Code"; "Branch Code")
                {
                }
                field("Settlement Report No."; "Settlement Report No.")
                {
                }
                field("SRN Date"; "SRN Date")
                {
                }
                field("Batch No."; "Batch No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("Material Posting Date"; "Material Posting Date")
                {
                }
                field("Labour Posting Date"; "Labour Posting Date")
                {
                }
                field("Line Item Count"; "Line Item Count")
                {
                }
                field("Claim Settled by TMC"; "Claim Settled by TMC")
                {
                }
                field("CLaim Refunded By TMC Date"; "CLaim Refunded By TMC Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

