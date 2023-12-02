page 70019 "Vehicle Brand List"
{
    PageType = List;
    SourceTable = "Vehicle Brand";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Vehicle Brand Code"; Rec."Vehicle Brand Code")
                {
                }
                field("Vehicle Brand Name"; Rec."Vehicle Brand Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

