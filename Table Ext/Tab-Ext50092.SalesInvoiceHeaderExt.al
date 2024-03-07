tableextension 50092 "Sales Invoice Header Ext." extends "Sales Invoice Header"
{
    fields
    {
        field(50001; Quantity; Decimal)
        {
            BlankZero = true;
            CalcFormula = - Sum("Value Entry"."Invoiced Quantity" WHERE("Document No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; "Line Item Count"; Integer)
        {
            CalcFormula = Count("Sales Invoice Line" WHERE("Document No." = FIELD("No."), Type = CONST(Item)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50003; "Order Type"; Option)
        {
            Editable = true;
            OptionMembers = " ",Sea,Air,Land;
        }
        field(50154; "Address 3"; Text[30])
        {
        }
        field(50155; "P.O.Box"; Text[30])
        {
        }
        field(50156; "Del.Add. 3"; Text[30])
        {
        }
        field(50157; "Del.P.O.Box"; Text[30])
        {
        }
        field(50171; "User Department"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'User Department';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));

            trigger OnValidate()
            begin
                //ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
            end;
        }
        field(50200; "Cost Value"; Decimal)
        {
            CalcFormula = - Sum("Value Entry"."Cost Posted to G/L" WHERE("Item Ledger Entry Type" = CONST(Sale),
                                                                         "Document No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
      /*   field(50201; BG; Decimal)
        {
            CalcFormula = Sum("Sales Invoice Line".Quantity WHERE("Document No." = FIELD("No."),
                                                                   "Part Group" = CONST(BG)));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(50202; EG; Decimal)
        {
            CalcFormula = Sum("Sales Invoice Line".Quantity WHERE("Document No." = FIELD("No."),
                                                                   Part Group=CONST(EG)));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(50203; PTC; Decimal)
        {
            CalcFormula = Sum("Sales Invoice Line".Quantity WHERE("Document No." = FIELD("No."),
                                                                   "Part Group" = CONST(PTC)));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(50204; TEF; Decimal)
        {
            CalcFormula = Sum("Sales Invoice Line".Quantity WHERE("Document No." = FIELD("No."),
                                                                   "Part Group" = CONST(TEF)));
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        } */
        field(50259; "Tracker No."; Code[10])
        {
        }
        field(50260; OrderType2; Code[10])
        {
            CalcFormula = Lookup("Sales Invoice Line"."Variant Code" WHERE("Document No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(50262; "Sales Time"; Time)
        {
        }
        field(50263; Posting_Time; DateTime)
        {
        }
        field(50264; "Online Order"; Boolean)
        {
        }
        field(50265; "S/N"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50266; "Quantity(ies)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50267; "Total Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60136; "Customer Preferred Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60137; "Location Code (B&P)"; Code[20])
        {
            CalcFormula = Lookup("Sales Invoice Line"."Location Code" WHERE("Document No." = FIELD("No.")));
            FieldClass = FlowField;
        }
    }
}
