page 70238 "IOU Appr. Audit"
{
    CardPageID = "IOU Register Card";
    PageType = List;
    SourceTable = Table50105;
    SourceTableView = WHERE (2nd Approval to=FILTER(TOYOTANIGERIA\ADEWUMI),
                            2nd Apprv. Status=FILTER(' '|on Hold),
                            1st Apprv. Status=FILTER(Approved),
                            Reject=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("IOU No.";"IOU No.")
                {
                }
                field("Entry Date";"Entry Date")
                {
                }
                field(Description;Description)
                {
                }
                field(Amount;Amount)
                {
                }
                field("Payment Date";"Payment Date")
                {
                }
                field("Collected By";"Collected By")
                {
                }
                field("Staff Name";"Staff Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

