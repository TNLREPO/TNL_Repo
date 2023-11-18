page 70132 "Gen. Manager Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (ListGM = FILTER (Yes),
                            Head of Audit=CONST(Approved),
                            General Manager=FILTER(<>Approved|Rejected),
                            Managing Director=CONST(" "),
                            Reject=CONST(No),
                            Document Type=CONST(Opex));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                }
                field("No.";"No.")
                {
                    Caption = 'Opex No.';
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Purchase Justification";"Purchase Justification")
                {
                }
                field("Proposed Purchase Amount";"Proposed Purchase Amount")
                {
                }
                field(Vendor;Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }
}

