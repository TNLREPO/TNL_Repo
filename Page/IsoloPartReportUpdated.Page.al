page 80072 "Isolo Part Report Updated"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Source No.=FILTER(TCSC*),
                            Inventory Posting Group=FILTER(N_PARTCONS|N_PARTS));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date";"Posting Date")
                {
                }
                field("Item No.";"Item No.")
                {
                }
                field(Description;Description)
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Remaining Quantity";"Remaining Quantity")
                {
                }
                field("Invoiced Quantity";"Invoiced Quantity")
                {
                }
                field("Cost Amount (Actual)";"Cost Amount (Actual)")
                {
                }
                field("Purchase Amount (Actual)";"Purchase Amount (Actual)")
                {
                }
                field("Sales Amount (Actual)";"Sales Amount (Actual)")
                {
                }
                field("Prod. Gr.";"Prod. Gr.")
                {
                }
                field("Location Code";"Location Code")
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
                field("Applies-to Entry";"Applies-to Entry")
                {
                }
                field(Open;Open)
                {
                }
                field("Global Dimension 1 Code";"Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                }
                field(Positive;Positive)
                {
                }
                field("Shpt. Method Code";"Shpt. Method Code")
                {
                }
                field("Source Type";"Source Type")
                {
                }
                field("Drop Shipment";"Drop Shipment")
                {
                }
                field("Transaction Type";"Transaction Type")
                {
                }
                field("Transport Method";"Transport Method")
                {
                }
                field("Country/Region Code";"Country/Region Code")
                {
                }
                field("Entry/Exit Point";"Entry/Exit Point")
                {
                }
                field("Document Date";"Document Date")
                {
                }
                field("External Document No.";"External Document No.")
                {
                }
                field(Area;Area)
                {
                }
                field("Transaction Specification";"Transaction Specification")
                {
                }
                field("No. Series";"No. Series")
                {
                }
                field("Reserved Quantity";"Reserved Quantity")
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("Document Line No.";"Document Line No.")
                {
                }
                field("Order Type";"Order Type")
                {
                }
                field("Order No.";"Order No.")
                {
                }
                field("Order Line No.";"Order Line No.")
                {
                }
                field("Dimension Set ID";"Dimension Set ID")
                {
                }
                field("Assemble to Order";"Assemble to Order")
                {
                }
                field("Job No.";"Job No.")
                {
                }
                field("Job Task No.";"Job Task No.")
                {
                }
                field("Job Purchase";"Job Purchase")
                {
                }
                field("Variant Code";"Variant Code")
                {
                }
                field("Qty. per Unit of Measure";"Qty. per Unit of Measure")
                {
                }
                field("Unit of Measure Code";"Unit of Measure Code")
                {
                }
                field("Derived from Blanket Order";"Derived from Blanket Order")
                {
                }
                field("Cross-Reference No.";"Cross-Reference No.")
                {
                }
                field("Item Category Code";"Item Category Code")
                {
                }
                field("Product Group Code";"Product Group Code")
                {
                }
                field("Inventory Posting Group";"Inventory Posting Group")
                {
                }
                field("Item Name";"Item Name")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field("BNP Grouping";"BNP Grouping")
                {
                }
                field("Product Grp Code";"Product Grp Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

