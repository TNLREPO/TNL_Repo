table 50110 "Fault Setup Line"
{

    fields
    {
        field(1; "Operation code"; Code[20])
        {
            //TableRelation = "Fault Setup Header"."Operation Code";
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; Type; Option)
        {
            OptionCaption = ' ,Item,Resource,Cost';
            OptionMembers = " ",Item,Resource,Cost;

            trigger OnValidate()
            begin
                IF (Type <> xRec.Type) THEN
                    "No." := '';
            end;
        }
        field(4; "No."; Code[20])
        {
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST(Item), "Service Item Model" = FILTER(<> '')) Item."No." WHERE("Model No." = FIELD("Service Item Model"))
            ELSE
            IF (Type = CONST(Item)) Item."No."
            ELSE
            IF (Type = CONST(Resource)) Resource."No."
            ELSE
            IF (Type = CONST(Cost)) "Service Cost".Code WHERE("Model Description" = FIELD("Model Description"));

            trigger OnValidate()
            begin
                CASE Type OF
                    /*0 :
                      BEGIN
                        StdTxt.GET("No.");
                        Description := StdTxt.Description;
                      END;*/
                    Type::Item:
                        BEGIN
                            item.GET("No.");
                            Description := item.Description;
                            "Unit Price" := item."Unit Price";
                            "VAT Amount" := ("VAT%" / 100) * "Total Price";
                            "Price Incl VAT" := "Total Price" + "VAT Amount";
                            "Unit of Measure Code" := item."Base Unit of Measure";
                            "Posting Group" := item."Inventory Posting Group";
                        END;
                    Type::Resource:
                        BEGIN
                            Res.GET("No.");
                            Description := Res.Name;
                            "Unit Price" := Res."Unit Price";
                            "VAT Amount" := ("VAT%" / 100) * "Total Price";
                            "Price Incl VAT" := "Total Price" + "VAT Amount";
                            "Unit of Measure Code" := Res."Unit of Measure Filter";
                        END;
                    Type::Cost:
                        BEGIN
                            ServCost.GET("No.");
                            Description := ServCost.Description;
                            "Unit Price" := ServCost."Default Unit Price";
                            "VAT Amount" := ("VAT%" / 100) * "Total Price";
                            "Price Incl VAT" := "Total Price" + "VAT Amount";
                            "Unit of Measure Code" := ServCost."Unit of Measure Code";
                        END;
                END;

            end;
        }
        field(5; Description; Text[50])
        {
        }
        field(6; Variant; Code[20])
        {
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(7; Location; Code[20])
        {
            TableRelation = Location;
        }
        field(8; Quantity; Decimal)
        {

            trigger OnValidate()
            begin
                "Total Price" := Quantity * "Unit Price";
                "VAT Amount" := ("VAT%" / 100) * "Total Price";
                "Price Incl VAT" := "Total Price" + "VAT Amount";
            end;
        }
        field(9; "Unit Price"; Decimal)
        {

            trigger OnValidate()
            begin
                "Total Price" := Quantity * "Unit Price";
                "VAT Amount" := ("VAT%" / 100) * "Total Price";
                "Price Incl VAT" := "Total Price" + "VAT Amount";
            end;
        }
        field(10; "Total Price"; Decimal)
        {
            Editable = false;
        }
        field(11; "Unit of Measure Code"; Code[20])
        {
            TableRelation = "Item Unit of Measure" WHERE("Item No." = FIELD("No."));
        }
        field(12; "Posting Group"; Code[20])
        {
            TableRelation = "Inventory Posting Group";
        }
        field(13; "Duration in Days"; DateFormula)
        {
        }
        field(14; "Service Item Model"; Code[20])
        {
        }
        field(15; "VAT%"; Decimal)
        {
            InitValue = 5;

            trigger OnValidate()
            begin
                "VAT Amount" := ("VAT%" / 100) * "Total Price";
                "Price Incl VAT" := "Total Price" + "VAT Amount";
            end;
        }
        field(16; "VAT Amount"; Decimal)
        {

            trigger OnValidate()
            begin
                "VAT Amount" := ("VAT%" / 100) * "Total Price";
                "Price Incl VAT" := "Total Price" + "VAT Amount";
            end;
        }
        field(17; "Price Incl VAT"; Decimal)
        {

            trigger OnValidate()
            begin
                "VAT Amount" := ("VAT%" / 100) * "Total Price";
                "Price Incl VAT" := "Total Price" + "VAT Amount";
            end;
        }
        field(18; "Duration In Hours"; Decimal)
        {
        }
        field(19; "Model Description"; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Operation code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "VAT Amount", "VAT%";
        }
        key(Key2; Type, "Operation code", "Service Item Model")
        {
            SumIndexFields = "Total Price", Quantity, "Price Incl VAT", "VAT Amount";
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        "VAT%" := 5;
    end;

    var
        StdTxt: Record "Standard Text";
        ServCost: Record "Service Cost";
        Res: Record Resource;
        item: Record Item;
        faultheader: Record "Resource";
        faultLine: Record "Fault Setup Line";

    procedure Newline()
    begin
        faultLine.SETRANGE(faultLine."Operation code", "Operation code");
        IF faultLine.FIND('+') THEN
            "Line No." := faultLine."Line No." + 10000
        ELSE
            "Line No." := 10000;
    end;
}

