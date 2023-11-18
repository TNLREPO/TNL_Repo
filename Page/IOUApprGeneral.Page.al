page 70239 "IOU Appr. General"
{
    PageType = List;
    SourceTable = Table50105;
    SourceTableView = WHERE (Send for Approval=CONST(Yes),
                            Global Dimension 1 Code=FILTER(<>08AUDSYS),
                            2nd Apprv. Status=FILTER(' '),
                            2nd Approval to=FILTER(TOYOTANIGERIA\ADEWUMI));

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

