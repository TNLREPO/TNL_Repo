page 50283 "Inventory - Stock"
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Remaining Quantity=FILTER(1),
                            Inventory Posting Group=CONST(N_CARS));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No.";"Entry No.")
                {
                    Editable = false;
                }
                field("Item No.";"Item No.")
                {
                    Editable = false;
                }
                field("Posting Date";"Posting Date")
                {
                    Editable = false;
                }
                field("Location Code";"Location Code")
                {
                    Editable = false;
                }
                field(Description;Description)
                {
                    Editable = false;
                    Width = 50;
                }
                field("Remaining Quantity";"Remaining Quantity")
                {
                    Editable = false;
                }
                field("Serial No.";"Serial No.")
                {
                    Editable = false;
                    Width = 30;
                }
                field("Exterior Colour Name";"Exterior Colour Name")
                {
                }
                field("Engine No.";"Engine No.")
                {
                    Editable = false;
                    Width = 20;
                }
                field("Item Name";"Item Name")
                {
                    Editable = false;
                }
                field("Date of Arrival";"Date of Arrival")
                {
                }
                field("No. of Days in Stock";"No. of Days in Stock")
                {
                }
                field("Current Date";"Current Date")
                {

                    trigger OnValidate()
                    begin
                        "No. of Days in Stock" := "Current Date" - "Date of Arrival";
                    end;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        IF "Current Date" <> 0D THEN

          VALIDATE("Current Date",WORKDATE);
    end;
}

