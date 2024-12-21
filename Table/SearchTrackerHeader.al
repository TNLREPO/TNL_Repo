table 50154 "Search Tracker Header"
{
    Caption = 'Search Tracker Header';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; "Request Date"; Date)
        {
        }

        field(10; "User ID"; Code[30])
        {
        }
        field(11; "Time of Request"; Time)
        {
        }
        field(12; "Request by"; Code[20])
        {
            TableRelation = Customer."No.";

            trigger OnValidate()
            begin
                IF CustRec.GET("Request by") THEN BEGIN
                    "Request Customer Name" := CustRec.Name;
                    "Request Customer Address" := CustRec.Address;
                    "Request Customer Contact" := CustRec.Contact;
                    "Request phone" := CustRec."Phone No.";
                END;
            end;
        }
        field(13; "Request Customer Name"; Text[50])
        {
        }
        field(14; "Request Customer Address"; Text[50])
        {
        }
        field(19; "Request Customer Contact"; Text[50])
        {
        }
        field(20; "Request phone"; Text[30])
        {
        }
        field(21; Ordered; Boolean)
        {
            Editable = true;
        }
        field(22; Urgent; Boolean)
        {
        }
        field(23; Commited; Boolean)
        {
        }
        field(24; "Commited Value"; Decimal)
        {
        }
        field(32; "Non Specification"; Boolean)
        {
        }
        field(34; "Department Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(35; "Document Type"; Enum "Sales Document Type")
        {

        }
        field(41; "No. Series"; Code[20])
        {
        }
        field(42; "Last Time Modified"; Time)
        {
            Editable = false;
        }
        field(43; "Last Date Modified"; Date)
        {
            Editable = false;
        }
        field(44; "Record Locked"; Boolean)
        {
            Editable = true;
        }

        field(46; "Reference No."; Code[20])
        {
        }

        field(51; "Order Type"; Option)
        {
            OptionCaption = ' ,Created Demand,Stock Replenishment,VOR,Branch Back Order,Emergency/AIR Order,Back Order from Local Vendor';
            OptionMembers = " ","Created Demand","Stock Replenishment",VOR,"Branch Back Order","Emergency/AIR Order","Back Order from Local Vendor";
        }
        field(52; "Line Amount"; Decimal)
        {
            Description = 'Order Line value';
            Editable = false;
        }
        field(53; "Total Order Amount"; Decimal)
        {
            //CalcFormula = Sum("Parts Enquiry"."Line Amount" WHERE("Search C" = FIELD("Search Code")));
            Description = 'Total Order value';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(54; "Online Order"; Boolean)
        {
        }

    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var


    begin
        InvSetup.GET;
        IF "No." = '' THEN BEGIN
            InvSetup.TESTFIELD("Search Tracker Nos.");
            "No. Series" := InvSetup."Search Tracker Nos.";
            if NoSeriesMgt.AreRelated("No. Series", xRec."No. Series") then
                "No. Series" := xRec."No. Series";
            "No." := NoSeriesMgt.GetNextNo("No. Series");
            //NoseriesMgt.InitSeries(InvSetup."Search Tracker Nos.", xRec."No. Series", 0D, "No.", "No. Series");

        END;

    end;

    var
        CustRec: Record Customer;
        InvSetup: Record "Inventory Setup";
        NoseriesMgt: Codeunit "No. Series";


}
