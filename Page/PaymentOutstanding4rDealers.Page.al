page 70234 "Payment Outstanding 4r Dealers"
{
    PageType = List;
    SourceTable = Table21;
    SourceTableView = WHERE (Customer Posting Group=FILTER(TNL_A|TNL_B|TNL_C|TNL_D),
                            Posting Date=FILTER(01/01/22..31/12/22),
                            Document Type=FILTER(Invoice),
                            Global Dimension 1 Code=FILTER(05PARTS),
                            Remaining Amount=FILTER(<>0));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer No.";"Customer No.")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field(Description;Description)
                {
                }
                field(Amount;Amount)
                {
                }
                field("Remaining Amount";"Remaining Amount")
                {
                }
                field("Amount (LCY)";"Amount (LCY)")
                {
                }
                field("Sales (LCY)";"Sales (LCY)")
                {
                }
                field("Sell-to Customer No.";"Sell-to Customer No.")
                {
                }
                field("Debit Amount";"Debit Amount")
                {
                }
                field("Credit Amount";"Credit Amount")
                {
                }
            }
        }
        area(factboxes)
        {
            part(;9084)
            {
            }
        }
    }

    actions
    {
    }
}

