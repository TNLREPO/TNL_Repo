page 50321 "Estimate Material Requirment"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = Card;
    SourceTable = Table50158;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Operation Code"; "Operation Code")
                {
                }
                field("Estimate Code"; "Estimate Code")
                {
                    Visible = false;
                }
                field("Line no."; "Line no.")
                {
                    Visible = false;
                }
                field("Additional Jobs"; "Additional Jobs")
                {
                    Visible = false;
                }
                field("Line Type"; "Line Type")
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
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Quantity/Labour Hrs"; "Quantity/Labour Hrs")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field(Amount; Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

