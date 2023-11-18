page 50453 "HR Work Oder List"
{
    CardPageID = "HR Work Order";
    PageType = List;
    SourceTable = Table50169;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Order No."; "Order No.")
                {
                }
                field("Issued Date"; "Issued Date")
                {
                }
                field(Approval; Approval)
                {
                }
                field("COF Ref Code"; "COF Ref Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

