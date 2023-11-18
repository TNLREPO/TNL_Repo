page 50380 "Vehicles Delivered"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    Editable = false;
    PageType = List;
    SourceTable = Table50056;
    SourceTableView = SORTING (Serial No.)
                      WHERE (Open = CONST (No),
                            Delivered = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Posting Date"; "Posting Date")
                {
                }
                field("Entry No."; "Entry No.")
                {
                }
                field("Serial No."; "Serial No.")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Invoice No"; "Invoice No")
                {
                }
                field("Customer Code"; "Customer Code")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field(Description; Description)
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Exterior Colour Name"; "Exterior Colour Name")
                {
                }
                field("Exterior Colour Code"; "Exterior Colour Code")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Inventory Group"; "Inventory Group")
                {
                }
                field(Open; Open)
                {
                }
                field(Delivered; Delivered)
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
            }
            field(COUNT; COUNT)
            {
                Caption = 'Line Count';
            }
            label()
            {
                CaptionClass = Text19042010;
                Style = Standard;
                StyleExpr = TRUE;
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        SETFILTER(Delivered, '%1', TRUE);
        SETFILTER(Open, '%1', FALSE);
    end;

    var
        ItemLedgEntry: Record "32";
        ItemLedgEntry2: Record "32";
        CustRec: Record 18;
        VehMonitor: Record "50056";
        Text19042010: Label 'Vehicle Delivery Monitoring System';
}

