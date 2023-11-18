page 50432 "New VRI Entry"
{
    PageType = Card;
    SourceTable = Table50058;
    SourceTableView = SORTING (VRI Code)
                      WHERE (VRI Code=FILTER(TVI*));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("VRI Code";"VRI Code")
                {
                }
                field("Item No.";"Item No.")
                {
                }
                field("Model No.";"Model No.")
                {
                }
                field("Model Name";"Model Name")
                {
                }
                field(Description;Description)
                {
                }
                field("Item Serial No.";"Item Serial No.")
                {
                }
                field("Engine No.";"Engine No.")
                {
                }
                field("Key No.";"Key No.")
                {
                }
                field("Exterior Colour";"Exterior Colour")
                {
                }
            }
        }
    }

    actions
    {
    }
}

