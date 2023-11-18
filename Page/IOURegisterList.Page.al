page 70030 "IOU Register List"
{
    CardPageID = "IOU Register Card";
    PageType = List;
    SourceTable = Table50105;
    SourceTableView = SORTING (IOU No.)
                      WHERE (Posted = CONST (No),
                            Treated = CONST (No),
                            Final Apprv. Status=FILTER(<>Approved),
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
                field("Account Name";"Account Name")
                {
                    Caption = 'Staff  Name';
                }
                field(Retired;Retired)
                {
                }
                field("Manual Voucher No.";"Manual Voucher No.")
                {
                }
                field("Global Dimension 1 Code";"Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

