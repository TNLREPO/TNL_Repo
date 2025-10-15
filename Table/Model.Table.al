table 50014 Model
{
    DataCaptionFields = "Model No.", "Model Name";
    DrillDownPageID = "Model List";
    LookupPageID = "Model List";

    fields
    {
        field(1; "Model No."; Code[50])
        {
            NotBlank = true;

            trigger OnValidate()
            begin
                // ItemRec."Model Name":="Model Name";
            end;
        }
        field(2; "Model Name"; Text[50])
        {
        }
        field(3; "Prod Date"; Text[30])
        {
        }
        field(4; "Units in Operation"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(20; "Grade I in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(21; "Grade II in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(22; "Grade III in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(23; "Grade IV in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(24; "Grade V in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(25; "LUXURY in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(26; "PREMIUM in Operation"; Decimal)
        {
            decimalplaces = 0 : 0;
            Editable = false;
        }
        field(5; "Date Filter"; Date)
        {

            trigger OnValidate()
            begin
                //datefilter := GETFILTER("Date Filter");
                PartsBymodel.SETRANGE(PartsBymodel."Model Code", "Model No.");
                IF PartsBymodel.FIND('-') THEN
                    PartsBymodel.SETFILTER(PartsBymodel."Base Date", '%1', "Date Filter");
            end;
        }
        field(6; "Part Category Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionCaption = 'BODY PARTS,BRAKE/SUSPENSION,CLUTCH SYSTEM,ELECTRICAL,ENGINE PARTS,FUEL SYSTEM,SILENCER/AIR CLEANER,WATER PUMP,WATER PUMP & RADIATOR';
            OptionMembers = "BODY PARTS","BRAKE/SUSPENSION","CLUTCH SYSTEM",ELECTRICAL,"ENGINE PARTS","FUEL SYSTEM","SILENCER/AIR CLEANER","WATER PUMP","WATER PUMP & RADIATOR";
        }
        field(7; "Line Items"; Integer)
        {
            CalcFormula = Count("Parts By Model" WHERE("Model Code" = FIELD("Model No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Line Items with Stock Q'ty"; Integer)
        {
            CalcFormula = Count("Parts By Model" WHERE("Model Code" = FIELD("Model No."),
                                                         "Q'ty On Hand" = FILTER(> 0)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Other Specification"; Boolean)
        {

            trigger OnValidate()
            begin
                ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
                IF ItemRec.FIND('-') THEN
                    REPEAT
                        IF "Other Specification" THEN
                            ItemRec."Non Specification" := TRUE
                        ELSE
                            ItemRec."Non Specification" := FALSE;
                        ItemRec.MODIFY;
                    UNTIL ItemRec.NEXT = 0;
            end;
        }
        field(10; "Inventory Line Item"; Integer)
        {
            CalcFormula = Count(Item WHERE("Model No." = FIELD("Model No."),
                                            "Inventory Posting Group" = filter('N_PARTS')));
            FieldClass = FlowField;
        }
        field(11; "Operation code"; Code[20])
        {
        }
        field(12; Type; Option)
        {
            OptionCaption = ' ,Item,Resource,Cost,Temp';
            OptionMembers = " ",Item,Resource,Cost,Temp;
        }
        field(13; "No."; Code[20])
        {
        }
        field(14; Description; Text[50])
        {
        }
        field(15; Quantity; Integer)
        {
        }
        field(16; "Model Description"; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Model No.", "Model Name")
        {
            Clustered = true;
        }
        key(Key2; "Model Name")
        {
        }
    }

    fieldgroups
    {
    }

    var
        ItemRec: Record Item;
        PartsBymodel: Record "Parts By Model";
        datefilter: Text[30];
        Qsales: Decimal;
        Qsales1: Decimal;
        Qsales2: Decimal;
        Qsales3: Decimal;
        Qsales4: Decimal;
        Qsales5: Decimal;
        Qsales6: Decimal;
        Qsales7: Decimal;


    procedure unitinoperation(): Decimal
    begin
        Qsales := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group");
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales := Qsales + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "Units in Operation" := Qsales;
        EXIT(Qsales);
    end;

    procedure gradeIII(): Decimal
    begin
        Qsales3 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", Grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'Grade III');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales3 := Qsales3 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "Grade III in Operation" := Qsales3;
        EXIT(Qsales3);
    end;

    procedure gradeI(): Decimal
    begin
        Qsales1 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", Grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'Grade I');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales1 := Qsales1 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "Grade I in Operation" := Qsales1;
        EXIT(Qsales1);
    end;

    procedure gradeII(): Decimal
    begin
        Qsales2 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'Grade II');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales2 := Qsales2 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "Grade II in Operation" := Qsales2;
        EXIT(Qsales2);
    end;

    procedure gradeIV(): Decimal
    begin
        Qsales4 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'Grade IV');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales4 := Qsales4 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "Grade IV in Operation" := Qsales4;
        EXIT(Qsales4);
    end;

    procedure gradeV(): Decimal
    begin
        Qsales5 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'Grade V');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales5 := Qsales5 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "Grade V in Operation" := Qsales5;
        EXIT(Qsales5);
    end;

    procedure LUXURY(): Decimal
    begin
        Qsales6 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'LUXURY');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales6 := Qsales6 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "LUXURY in Operation" := Qsales6;
        EXIT(Qsales6);
    end;

    procedure PREMIUM(): Decimal
    begin
        Qsales7 := 0;
        ItemRec.SETCURRENTKEY("Model No.", "Inventory Posting Group", grade);
        ItemRec.SETRANGE(ItemRec."Model No.", "Model No.");
        ItemRec.SetRange(ItemRec.grade, 'PREMIUM');
        ItemRec.SETRANGE(ItemRec."Inventory Posting Group", 'N_CARS');
        IF ItemRec.FIND('-') THEN
            REPEAT
                ItemRec.CALCFIELDS(ItemRec."Sales (Qty.)");
                Qsales7 := Qsales7 + ItemRec."Sales (Qty.)";
            UNTIL ItemRec.NEXT = 0;
        "PREMIUM in Operation" := Qsales7;
        EXIT(Qsales7);
    end;
}

