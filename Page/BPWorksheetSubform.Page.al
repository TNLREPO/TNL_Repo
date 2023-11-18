page 70508 "BP Worksheet Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table70045;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                }
                field(Quantity; Quantity)
                {
                    BlankZero = true;
                    DecimalPlaces = 0 : 2;
                }
                field("Unit Amount"; "Unit Amount")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Amount Incl.VAT"; "Amount Incl.VAT")
                {
                }
            }
        }
    }

    actions
    {
    }
}

