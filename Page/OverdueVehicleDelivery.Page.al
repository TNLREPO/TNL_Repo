page 50400 "Overdue Vehicle Delivery"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Vehicle Delivery Monitor";

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
                field("Posting Date"; Rec."Posting Date")
                {
                    Editable = false;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    Editable = false;
                }
                field(Overdue; Rec.Overdue)
                {
                    Editable = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Editable = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    Editable = false;
                }
                field("Invoice No"; Rec."Invoice No")
                {
                    Editable = false;
                }
                field("Customer Code"; Rec."Customer Code")
                {
                    Editable = false;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                }
                field("Engine No."; Rec."Engine No.")
                {
                    Editable = false;
                }
                field("Exterior Colour Name"; Rec."Exterior Colour Name")
                {
                    Editable = false;
                }
                field("Exterior Colour Code"; Rec."Exterior Colour Code")
                {
                    Editable = false;
                }
                field("Key No."; Rec."Key No.")
                {
                    Editable = false;
                }
            }
            field(COUNT; Rec.COUNT)
            {
                Caption = 'Line Count';
            }
            label(Control1)
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
        Rec.SETFILTER(Delivered, '%1', FALSE);
        Rec.SETFILTER(Open, '%1', FALSE);
    end;

    var
        ItemLedgEntry: Record "32";
        ItemLedgEntry2: Record "32";
        CustRec: Record 18;
        VehMonitor: Record "50056";
        OverdueDate: Date;
        "Posting DateEmphasize": Boolean;
        "Serial No.Emphasize": Boolean;
        Text19029145: Label 'Overdue Delivery';

    local procedure PostingDateOnFormat()
    begin
        IF Rec."Posting Date" < TODAY - 5 THEN
            "Posting DateEmphasize" := TRUE;
    end;

    local procedure SerialNoOnFormat()
    begin
        IF Rec."Posting Date" < TODAY - 5 THEN
            "Serial No.Emphasize" := TRUE;
    end;
}

