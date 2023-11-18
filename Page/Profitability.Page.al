page 50442 Profitability
{
    Editable = true;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = Table50170;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field(Description; Description)
                {
                }
                field(Units; Units)
                {
                }
                field(Amount; Amount)
                {
                }
                field(Cost; Cost)
                {
                }
                field(Profit; Profit)
                {
                }
                field("Profit%"; "Profit%")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        IF (Amount <> 0) AND (Cost <> 0) THEN BEGIN
            Profit := Amount + Cost;
            "Profit%" := (Profit / Amount) * 100;
        END;
    end;
}

