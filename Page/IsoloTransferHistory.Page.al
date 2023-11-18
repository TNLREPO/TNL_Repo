page 70511 "Isolo Transfer History"
{
    Editable = false;
    PageType = List;
    SourceTable = Table5745;
    SourceTableView = WHERE (Transfer-from Code=CONST(120ISO),
                            Transfer-to Code=CONST(150ISOLO));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                }
                field("Transfer-from Code"; "Transfer-from Code")
                {
                }
                field("Transfer-to Code"; "Transfer-to Code")
                {
                }
                field("Shipment Date"; "Shipment Date")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field("COF No."; "COF No.")
                {
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
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
        IF Item.GET("Item No.") THEN
            "Unit Cost" := Item."Unit Cost";

        //IF COL.GET(xRec."Item No.") THEN
        //   "COF No." := COL."Document No.";
    end;

    var
        "Unit Cost": Decimal;
        Item: Record 27;
        "COF No.": Code[20];
        COL: Record "70036";
}

