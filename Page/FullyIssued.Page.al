page 70184 "Fully Issued"
{
    CardPageID = "Warranty Claim card";
    SourceTable = Table50038;
    SourceTableView = WHERE (Issued Option=FILTER(Fully Issued),
                            Replace Dealer Material Claim=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Claim No.";"Claim No.")
                {
                }
                field("Invoice No.";"Invoice No.")
                {
                }
                field("TWC No.";"TWC No.")
                {
                }
                field("Settlement Report No.";"Settlement Report No.")
                {
                }
                field("Dealer Code";"Dealer Code")
                {
                }
                field("Dealer Name";"Dealer Name")
                {
                }
                field("Process Date";"Process Date")
                {
                }
                field("Total Material Claim cost";"Total Material Claim cost")
                {
                }
                field("Total Labour Claim";"Total Labour Claim")
                {
                }
                field("Part Refunded by TMC(LCY)";"Mat Amt Refunded by TMC(LCY)")
                {
                }
                field("LaborAmt  Refunded by TMC(LCY)";"LaborAmt  Refunded by TMC(LCY)")
                {
                }
                field("Vehicle Identification No.";"Vehicle Identification No.")
                {
                }
                field("Model Year";"Model Year")
                {
                }
                field("Delivery Date";"Delivery Date")
                {
                }
                field("Odometer Reading";"Odometer Reading")
                {
                }
                field("Part Refunded by TMC(FCY)";"Mat Amt Refunded by TMC(FCY)")
                {
                }
                field("Labor Amt Refunded by TMC(FCY)";"Labor Amt Refunded by TMC(FCY)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

