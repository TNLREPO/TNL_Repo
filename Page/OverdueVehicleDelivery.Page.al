page 50400 "Overdue Vehicle Delivery"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = List;
    SourceTable = Table50056;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Entry No."; "Entry No.")
                {
                    Editable = false;
                }
                field("Posting Date"; "Posting Date")
                {
                    Editable = false;
                }
                field("Serial No."; "Serial No.")
                {
                    Editable = false;
                }
                field(Overdue; Overdue)
                {
                    Editable = false;
                }
                field("Location Code"; "Location Code")
                {
                    Editable = false;
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field("Invoice No"; "Invoice No")
                {
                    Editable = false;
                }
                field("Customer Code"; "Customer Code")
                {
                    Editable = false;
                }
                field("Customer Name"; "Customer Name")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field("Engine No."; "Engine No.")
                {
                    Editable = false;
                }
                field("Exterior Colour Name"; "Exterior Colour Name")
                {
                    Editable = false;
                }
                field("Exterior Colour Code"; "Exterior Colour Code")
                {
                    Editable = false;
                }
                field("Key No."; "Key No.")
                {
                    Editable = false;
                }
            }
            field(COUNT; COUNT)
            {
                Caption = 'Line Count';
            }
            label()
            {
                CaptionClass = Text19029145;
                Style = Standard;
                StyleExpr = TRUE;
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        PostingDateOnFormat;
        SerialNoOnFormat;
    end;

    trigger OnOpenPage()
    begin
        SETFILTER(Delivered, '%1', FALSE);
        SETFILTER(Open, '%1', FALSE);
    end;

    var
        ItemLedgEntry: Record "32";
        ItemLedgEntry2: Record "32";
        CustRec: Record 18;
        VehMonitor: Record "50056";
        OverdueDate: Date;
        [InDataSet]
        "Posting DateEmphasize": Boolean;
        [InDataSet]
        "Serial No.Emphasize": Boolean;
        Text19029145: Label 'Overdue Delivery';

    local procedure PostingDateOnFormat()
    begin
        IF "Posting Date" < TODAY - 5 THEN
            "Posting DateEmphasize" := TRUE;
    end;

    local procedure SerialNoOnFormat()
    begin
        IF "Posting Date" < TODAY - 5 THEN
            "Serial No.Emphasize" := TRUE;
    end;
}

