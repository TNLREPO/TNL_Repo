page 50105 "Check Availability - No Option"
{
    Caption = 'Check Availability';
    DataCaptionExpression = '';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table27;

    layout
    {
        area(content)
        {
            group()
            {
                field("No."; "No.")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field(InventoryQty; InventoryQty)
                {
                    Caption = 'Inventory';
                    DecimalPlaces = 0 : 5;
                    Editable = false;
                }
                field(GrossReq; GrossReq)
                {
                    Caption = 'Gross Requirement';
                    DecimalPlaces = 0 : 5;
                    Editable = false;
                }
                field(SchedRcpt; SchedRcpt)
                {
                    Caption = 'Scheduled Receipt';
                    DecimalPlaces = 0 : 5;
                    Editable = false;
                }
                field(-ItemNetChange;-ItemNetChange)
                {
                    Caption = 'Current Quantity';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(InitialQtyAvailable+ItemNetChange;InitialQtyAvailable+ItemNetChange)
                {
                    Caption = 'Total Quantity';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(EarliestAvailDate;EarliestAvailDate)
                {
                    Caption = 'Earliest Availability Date';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field("Substitutes Exist";"Substitutes Exist")
                {
                }
                field("Variant Filter";"Variant Filter")
                {
                    Editable = false;
                    Lookup = false;
                }
                field("Location Filter";"Location Filter")
                {
                    Editable = false;
                    Lookup = false;
                }
                field(UnitOfMeasureCode;UnitOfMeasureCode)
                {
                    Caption = 'Unit of Measure Code';
                    Editable = false;
                    Lookup = false;
                }
                field("Date Filter";"Date Filter")
                {
                    Editable = false;
                    Lookup = false;
                }
            }
            label()
            {
                CaptionClass = Text19035558;
                MultiLine = true;
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        COPY(Item2);
    end;

    var
        SalesSetup: Record "311";
        OldSalesLine: Record "37";
        OldTransLine: Record "5741";
        CompanyInfo: Record "79";
        Item2: Record "27";
        OldServiceInvLine: Record "5902";
        AvailToPromise: Codeunit "5790";
        ItemNo: Code[20];
        UnitOfMeasureCode: Code[10];
        NewItemNetChange: Decimal;
        OldItemNetChange: Decimal;
        ItemNetChange: Decimal;
        QtyPerUnitOfMeasure: Decimal;
        InitialQtyAvailable: Decimal;
        OldServItemNetChange: Decimal;
        UseOrderPromise: Boolean;
        GrossReq: Decimal;
        SchedRcpt: Decimal;
        SetupDataIsPresent: Boolean;
        AvailableQty: Decimal;
        EarliestAvailDate: Date;
        InventoryQty: Decimal;
        OldItemShipmentDate: Date;
        Text19035558: Label 'The quantity on inventory is not sufficient to cover the net change in inventory. Do you still want to record the quantity?';

    [Scope('Internal')]
    procedure ItemJnlLineShowWarning(ItemJnlLine: Record "83"): Boolean
    begin
        SalesSetup.GET;
        IF NOT SalesSetup."Stockout Warning" THEN
          EXIT(FALSE);
        CASE ItemJnlLine."Entry Type" OF
          ItemJnlLine."Entry Type"::Purchase,ItemJnlLine."Entry Type"::"Positive Adjmt.":
            ItemNetChange := ItemJnlLine.Quantity;
          ItemJnlLine."Entry Type"::Sale,ItemJnlLine."Entry Type"::"Negative Adjmt.",ItemJnlLine."Entry Type"::Transfer:
            ItemNetChange := -ItemJnlLine.Quantity;
        END;
        EXIT(
          ShowWarning(
            ItemJnlLine."Item No.",
            ItemJnlLine."Variant Code",
            ItemJnlLine."Location Code",
            ItemJnlLine."Unit of Measure Code",
            ItemJnlLine."Qty. per Unit of Measure",
            ItemNetChange,
            0,
            0D,
            0D));
    end;

    [Scope('Internal')]
    procedure SalesLineShowWarning(SalesLine: Record "37"): Boolean
    begin
        IF SalesLine."Drop Shipment" THEN
          EXIT(FALSE);
        SalesSetup.GET;
        IF NOT SalesSetup."Stockout Warning" THEN
          EXIT(FALSE);
        OldItemNetChange := 0;
        OldSalesLine := SalesLine;
        IF OldSalesLine.FIND THEN // Find previous quantity
          IF (OldSalesLine."Document Type" = OldSalesLine."Document Type"::Order) AND
             (OldSalesLine."No." = SalesLine."No.") AND
             (OldSalesLine."Variant Code" = SalesLine."Variant Code") AND
             (OldSalesLine."Location Code" = SalesLine."Location Code") AND
             (OldSalesLine."Bin Code" = SalesLine."Bin Code") AND
             NOT OldSalesLine."Drop Shipment"
          THEN
            OldItemNetChange := -OldSalesLine."Outstanding Qty. (Base)";

        IF SalesLine."Document Type" = SalesLine."Document Type"::Order THEN
          UseOrderPromise := TRUE;
        EXIT(
          ShowWarning(
            SalesLine."No.",
            SalesLine."Variant Code",
            SalesLine."Location Code",
            SalesLine."Unit of Measure Code",
            SalesLine."Qty. per Unit of Measure",
            -SalesLine."Outstanding Quantity",
            OldItemNetChange,
            SalesLine."Shipment Date",
            OldSalesLine."Shipment Date"));
    end;

    local procedure ShowWarning(ItemNo2: Code[20];ItemVariantCode: Code[10];ItemLocationCode: Code[10];UnitOfMeasureCode2: Code[10];QtyPerUnitOfMeasure2: Decimal;NewItemNetChange2: Decimal;OldItemNetChange2: Decimal;ShipmentDate: Date;OldShipmentDate: Date): Boolean
    begin
        ItemNo := ItemNo2;
        UnitOfMeasureCode := UnitOfMeasureCode2;
        QtyPerUnitOfMeasure := QtyPerUnitOfMeasure2;
        NewItemNetChange := NewItemNetChange2;
        OldItemNetChange := ConvertQty(OldItemNetChange2);
        OldItemShipmentDate := OldShipmentDate;

        IF NewItemNetChange >= 0 THEN
          EXIT(FALSE);

        GET(ItemNo);
        SETRANGE("No.","No.");
        SETRANGE("Variant Filter",ItemVariantCode);
        SETRANGE("Location Filter",ItemLocationCode);
        SETRANGE("Drop Shipment Filter",FALSE);

        IF UseOrderPromise THEN
          SETRANGE("Date Filter",0D,ShipmentDate)
        ELSE
          SETRANGE("Date Filter",0D,WORKDATE);

        Item2.COPY(Rec);

        Calculate;
        EXIT(InitialQtyAvailable + ItemNetChange < 0);
    end;

    local procedure Calculate()
    begin
        IF NOT SetupDataIsPresent THEN
          GetSetupData;

        AvailToPromise.QtyAvailabletoPromise(
          Rec,GrossReq,SchedRcpt,GETRANGEMAX("Date Filter"),
          CompanyInfo."Check-Avail. Time Bucket",CompanyInfo."Check-Avail. Period Calc.");

        EarliestAvailDate :=
          AvailToPromise.EarliestAvailabilityDate(
            Rec,-NewItemNetChange,GETRANGEMAX("Date Filter"),-OldItemNetChange,OldItemShipmentDate,AvailableQty,
            CompanyInfo."Check-Avail. Time Bucket",CompanyInfo."Check-Avail. Period Calc.");

        IF NOT UseOrderPromise THEN
          SchedRcpt := 0;

        CALCFIELDS(Inventory,"Reserved Qty. on Inventory");
        InventoryQty := ConvertQty(Inventory - "Reserved Qty. on Inventory");
        GrossReq :=  ConvertQty(GrossReq);
        SchedRcpt := ConvertQty(SchedRcpt);

        ItemNetChange := 0;
        IF "No." = ItemNo THEN BEGIN
          ItemNetChange := NewItemNetChange;
          GrossReq := GrossReq + OldItemNetChange;
        END;

        InitialQtyAvailable := InventoryQty + SchedRcpt - GrossReq;
    end;

    local procedure ConvertQty(Qty: Decimal): Decimal
    begin
        IF QtyPerUnitOfMeasure = 0 THEN
          QtyPerUnitOfMeasure := 1;
        EXIT(ROUND(Qty / QtyPerUnitOfMeasure,0.00001));
    end;

    [Scope('Internal')]
    procedure TransferLineShowWarning(TransLine: Record "5741"): Boolean
    begin
        SalesSetup.GET;
        IF NOT SalesSetup."Stockout Warning" THEN
          EXIT(FALSE);

        UseOrderPromise := TRUE;

        OldTransLine := TransLine;
        IF OldTransLine.FIND THEN // Find previous quantity
          IF (OldTransLine."Item No." = TransLine."Item No.") AND
             (OldTransLine."Variant Code" = TransLine."Variant Code") AND
             (OldTransLine."Transfer-from Code" = TransLine."Transfer-from Code")
          THEN
            OldItemNetChange := -OldTransLine."Outstanding Qty. (Base)";

        EXIT(
          ShowWarning(
            TransLine."Item No.",
            TransLine."Variant Code",
            TransLine."Transfer-from Code",
            TransLine."Unit of Measure Code",
            TransLine."Qty. per Unit of Measure",
            -TransLine.Quantity,
            OldItemNetChange,
            TransLine."Shipment Date",
            OldTransLine."Shipment Date"));
    end;

    [Scope('Internal')]
    procedure ServiceInvLineShowWarning(ServInvLine: Record "5902"): Boolean
    begin
        SalesSetup.GET;
        IF NOT SalesSetup."Stockout Warning" THEN
          EXIT(FALSE);

        OldServItemNetChange := 0;

        OldServiceInvLine := ServInvLine;

        IF OldServiceInvLine.FIND THEN // Find previous quantity
          IF (OldServiceInvLine."No." = ServInvLine."No.") AND
             (OldServiceInvLine."Variant Code" = ServInvLine."Variant Code") AND
             (OldServiceInvLine."Location Code" = ServInvLine."Location Code") AND
             (OldServiceInvLine."Bin Code" = ServInvLine."Bin Code")
          THEN
            OldServItemNetChange := -OldServiceInvLine."Quantity (Base)";

        UseOrderPromise := TRUE;
        EXIT(
          ShowWarning(
            ServInvLine."No.",
            ServInvLine."Variant Code",
            ServInvLine."Location Code",
            ServInvLine."Unit of Measure Code",
            ServInvLine."Qty. per Unit of Measure",
            -ServInvLine.Quantity,
            OldServItemNetChange,
            ServInvLine."Posting Date",
            OldServiceInvLine."Posting Date"));
    end;

    [Scope('Internal')]
    procedure GetSetupData()
    begin
        CompanyInfo.GET;
        SetupDataIsPresent := TRUE;
    end;
}

