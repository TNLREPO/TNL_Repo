page 50133 "Monthly Vehicle Order Lines"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50027;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Period Starting"; "Period Starting")
                {
                }
                field("PO Number"; "PO Number")
                {
                    Visible = false;
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Group Code"; "Model Group Code")
                {
                }
                field("Model Category"; "Model Category")
                {
                }
                field(Colour; Colour)
                {
                }
                field("Colour Description"; "Colour Description")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Colour Group"; "Colour Group")
                {
                }
            }
        }
    }

    actions
    {
    }
}

