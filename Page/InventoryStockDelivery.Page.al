page 50284 "Inventory - Stock - Delivery"
{
    PageType = List;
    SourceTable = "Item Ledger Entry";
    SourceTableView = WHERE("Entry Type" = FILTER('Sale'),
                            "Inventory Posting Group" = FILTER('N_CARS'),
                            "Invoiced Quantity" = FILTER('-1'),
                            "Posting Date" = FILTER('01/01/20..31/12/23'));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    Editable = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    Editable = false;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    Editable = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                    Width = 50;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    Editable = false;
                    Width = 30;
                }
                field("Exterior Colour Name"; Rec."Exterior Colour Name")
                {
                }
                field("Engine No."; Rec."Engine No.")
                {
                    Editable = false;
                    Width = 20;
                }
                field("Item Name"; Rec."Item Name")
                {
                    Editable = false;
                }
                field(Delivered; Rec.Delivered)
                {
                }
                field("Whse Manager"; Rec."Whse Manager")
                {
                }
                field("Dealer Delivered Date"; "Dealer Delivered Date")
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
        IF Rec."Current Date" <> 0D THEN
            Rec.VALIDATE("Current Date", WORKDATE);
    end;
}

