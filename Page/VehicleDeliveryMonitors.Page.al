page 50378 "Vehicle Delivery Monitors"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = List;
    SourceTable = Table50056;
    SourceTableView = SORTING (Serial No.)
                      WHERE (Open = CONST (No),
                            Delivered = CONST (No));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Posting Date"; "Posting Date")
                {
                    Editable = false;
                }
                field(Overdue; Overdue)
                {
                    Editable = false;
                }
                field("Entry No."; "Entry No.")
                {
                    Editable = false;
                }
                field("Serial No."; "Serial No.")
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
                field("Inventory Group"; "Inventory Group")
                {
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
                field(Open; Open)
                {
                }
                field(Delivered; Delivered)
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
        area(navigation)
        {
            group("&Function")
            {
                Caption = '&Function';
                action("Refresh List")
                {
                    Caption = 'Refresh List';

                    trigger OnAction()
                    var
                        SerialNo: Code[20];
                    begin
                        VehMonitor2.SETCURRENTKEY(Delivered);
                        VehMonitor2.SETRANGE(Delivered, FALSE);
                        IF VehMonitor2.FINDFIRST THEN BEGIN
                            REPEAT
                                VehMonitor2.DELETE;
                            UNTIL VehMonitor2.NEXT = 0;
                        END;


                        SerialNo := '';
                        ItemLedgEntry.SETCURRENTKEY("Entry Type", "Serial No.", Open, Positive, "Posting Date");
                        ItemLedgEntry.SETRANGE("Entry Type", 1);
                        ItemLedgEntry.SETRANGE(ItemLedgEntry."Serial No.");
                        ItemLedgEntry.SETFILTER("Serial No.", '<>%1', '');
                        ItemLedgEntry.SETRANGE(Positive, FALSE);
                        ItemLedgEntry.SETRANGE(Open, FALSE);
                        IF ItemLedgEntry.FINDSET THEN
                            REPEAT
                                IF SerialNo <> ItemLedgEntry."Serial No." THEN BEGIN
                                    SerialNo := ItemLedgEntry."Serial No.";
                                    ItemLedgEntry2.SETCURRENTKEY("Entry Type", "Serial No.", Open, Positive, "Posting Date");
                                    ItemLedgEntry2.SETRANGE(ItemLedgEntry2."Serial No.", SerialNo);
                                    ItemLedgEntry2.SETRANGE("Entry Type", 1);
                                    ItemLedgEntry2.SETRANGE(Positive, FALSE);
                                    ItemLedgEntry2.SETRANGE(Open, FALSE);
                                    IF ItemLedgEntry2.FINDLAST THEN BEGIN
                                        "Serial No." := ItemLedgEntry2."Serial No.";
                                        "Customer Code" := ItemLedgEntry2."Source No.";
                                        IF CustRec.GET("Customer Code") THEN
                                            "Customer Name" := CustRec.Name;
                                        "Entry No." := ItemLedgEntry2."Entry No.";
                                        "Invoice No" := ItemLedgEntry2."Document No.";
                                        "Item No." := ItemLedgEntry2."Item No.";
                                        Description := ItemLedgEntry2.Description;
                                        "Location Code" := ItemLedgEntry2."Location Code";
                                        "Engine No." := ItemLedgEntry2."Engine No.";
                                        "Exterior Colour Name" := ItemLedgEntry2."Exterior Colour Name";
                                        "Exterior Colour Code" := ItemLedgEntry2."Exterior Colour Code";
                                        "Key No." := ItemLedgEntry2."Key No.";
                                        "Posting Date" := ItemLedgEntry2."Posting Date";
                                        VehMonitor.SETRANGE(VehMonitor."Serial No.", SerialNo);
                                        IF NOT VehMonitor.FINDFIRST THEN
                                            INSERT ELSE
                                            ;
                                    END;
                                END;
                            UNTIL ItemLedgEntry.NEXT = 0;
                        MESSAGE('Sold vehicles have been retrieved!');
                    end;
                }
                separator()
                {
                }
                action("Overdue Vehicles")
                {
                    Caption = 'Overdue Vehicles';
                    RunObject = Report 50397;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        PostingDateOnFormat;
        SerialNoOnFormat;
    end;

    var
        ItemLedgEntry: Record "32";
        ItemLedgEntry2: Record "32";
        CustRec: Record 18;
        VehMonitor: Record "50056";
        VehMonitor2: Record "50056";
        [InDataSet]
        "Posting DateEmphasize": Boolean;
        [InDataSet]
        "Serial No.Emphasize": Boolean;
        Text19042010: Label 'Vehicle Delivery Monitoring System';

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

