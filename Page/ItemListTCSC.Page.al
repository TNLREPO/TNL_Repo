page 70176 "Item List TCSC"
{
    PageType = List;
    SourceTable = "Item";
    ApplicationArea = All;
    SourceTableView = SORTING("No.")
    WHERE("Location Filter" = FILTER('120ISO'));
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Last Purchase Date"; Rec."Last Purchase Date")
                {
                }
                field("Last Sales Date"; Rec."Last Sales Date")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }

    actions
    {
    }
}
