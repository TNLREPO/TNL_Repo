page 70224 "Parts Sales and Transfers_lek"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Posting Date=FILTER(01/01/22..31/12/22),
                            Document Type=FILTER(Transfer Shipment|Sales Shipment|Sales Invoice|Sales Return Receipt|Sales Credit Memo),
                            Inventory Posting Group=FILTER(N_PARTS));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No.";"Item No.")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Entry Type";"Entry Type")
                {
                }
                field("Source No.";"Source No.")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field(Description;Description)
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
                field("Sales Amount (Actual)";"Sales Amount (Actual)")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("Unit of Measure Code";"Unit of Measure Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

