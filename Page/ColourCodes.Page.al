page 50131 "Colour Codes"
{
    CardPageID = "Colour Code card";
    PageType = List;
    SourceTable = Table50067;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Product Group Code"; "Product Group Code")
                {
                }
                field("Colour Code"; "Colour Code")
                {
                }
                field(Description; Description)
                {
                }
            }
        }
    }

    actions
    {
    }
}

