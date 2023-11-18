page 80010 "Estimate Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
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

