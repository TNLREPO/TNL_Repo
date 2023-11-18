page 70203 "Payment Voucher"
{
    CardPageID = "LPP Card";
    PageType = List;
    SourceTable = Table70018;
    SourceTableView = WHERE (GenaratePayment = CONST (Yes),
                            Voucher Raised=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPP No."; "LPP No.")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Supplier's Name"; "Supplier's Name")
                {
                }
                field("Justification for purchase"; "Justification for purchase")
                {
                }
                field("Total Purchase Value"; "Total Purchase Value")
                {
                }
                field(Date; Date)
                {
                }
            }
        }
    }

    actions
    {
    }
}

