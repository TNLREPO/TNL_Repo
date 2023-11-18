page 50217 "IOU Request"
{
    CardPageID = "IOU Register Card";
    PageType = List;
    SourceTable = Table50105;
    SourceTableView = SORTING (IOU No.)
                      WHERE (Posted = CONST (No),
                            Treated = FILTER (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("IOU No."; "IOU No.")
                {
                    Editable = false;
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(Description; Description)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Staff Name"; "Account Name")
                {
                }
                field("Manual Voucher No."; "Manual Voucher No.")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

