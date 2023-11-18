page 50334 "COF Add. Job Item"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = Table50122;
    SourceTableView = WHERE (Additional Jobs=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                    Visible = false;
                }
                field("Operation Code"; "Operation Code")
                {
                }
                field("Line No."; "Line No.")
                {
                }
                field("Line Type"; "Line Type")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Variant; Variant)
                {
                    Visible = false;
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Available Quantity"; "Available Quantity")
                {
                }
                field(Results; Results)
                {
                }
                field(Difference; Difference)
                {
                }
                field("Additional Jobs"; "Additional Jobs")
                {
                }
                field("Stock Status"; "Stock Status")
                {
                }
                field(Stock; Stock)
                {
                }
                field(EDA; EDA)
                {
                }
            }
        }
    }

    actions
    {
    }
}

