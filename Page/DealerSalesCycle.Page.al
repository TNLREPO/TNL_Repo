page 50625 "Dealer Sales Cycle"
{
    PageType = List;
    SourceTable = "Item Ledger Entry";
    SourceTableView = WHERE("Inventory Posting Group" = filter('N_CARS'),
                            "Entry Type" = filter('Sale'),
                            "Quantity" = filter(-1));

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
                field("Entry Type"; Rec."Entry Type")
                {
                    Editable = false;
                }
                field("Source No."; Rec."Source No.")
                {
                    Caption = 'Dealer No.';
                    Editable = false;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    Caption = 'Dealer Name';
                    Editable = false;
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Invoice No.';
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Model Name';
                    Editable = false;
                }
                field("Exterior Colour Name"; Rec."Exterior Colour Name")
                {
                    Caption = 'Colour';
                }
                field("Location Code"; Rec."Location Code")
                {
                    Editable = false;
                }
                field(Quantity; Rec.Quantity)
                {
                    Editable = false;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    Caption = 'Chasis No.';
                    Editable = false;
                }
                field("Engine No."; Rec."Engine No.")
                {
                    Editable = false;
                }
                field("Item Name"; Rec."Item Name")
                {
                    Caption = 'Model Name';
                    Editable = false;
                }
                field("Dealer Delivered Date"; Rec."Dealer Delivered Date")
                {
                }
                field("End User Name"; Rec."End User Name")
                {
                }
                field("End User Delivery Date"; Rec."End User Delivery Date")
                {
                }
                field("End User Address"; Rec."End User Address")
                {
                }
                field("End User Modile No."; Rec."End User Modile No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

