page 50170 "Variant Duty Certificate No."
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = Table5700;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field("Chassis Number"; "Chassis Number")
                {
                    Editable = false;
                }
                field("Engine Number"; "Engine Number")
                {
                    Editable = false;
                }
                field(Colour; Colour)
                {
                    Editable = false;
                }
                field("Sold To"; "Sold To")
                {
                    Editable = false;
                }
                field("Sales Inv No."; "Sales Inv No.")
                {
                }
                field("Sales Inv. Date"; "Sales Inv. Date")
                {
                }
                field("Duty Cert No."; "Duty Cert No.")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        CRec: Record 18;
}

