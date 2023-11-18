page 50032 "Item Survey"
{
    Caption = 'Item List';
    Editable = false;
    PageType = Card;
    SourceTable = Table27;

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = true;
                field("No."; "No.")
                {
                    //The property 'Caption' cannot be empty.
                    //Caption = '';
                }
                field(Description; Description)
                {
                }
                field("Part Category"; "Part Category")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field(Inventory; Inventory)
                {
                }
                field("Qty. on Purch. Order"; "Qty. on Purch. Order")
                {
                }
                field("Freq Request"; "Freq Request")
                {
                }
                field("Qty Demanded"; "Qty Demanded")
                {
                }
                field("Lost Sales Qty"; "Lost Sales Qty")
                {
                }
                field("Perfomance Status"; "Perfomance Status")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Own Spec"; "Own Spec")
                {
                }
                field("Reserved Qty. on Inventory"; "Reserved Qty. on Inventory")
                {
                }
                field(Blocked; Blocked)
                {
                }
                field("Product Group Code"; "Product Group Code")
                {
                }
                field("Duty Due %"; "Duty Due %")
                {
                }
                field("Qty. on Sales Order"; "Qty. on Sales Order")
                {
                }
                field("Net Weight"; "Net Weight")
                {
                }
                field("Duty Code"; "Duty Code")
                {
                    AssistEdit = true;
                }
                field("Created From Nonstock Item"; "Created From Nonstock Item")
                {
                    Visible = false;
                }
                field("Creation Date"; "Creation Date")
                {
                }
                field("Created By"; "Created By")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field("Modified By"; "Modified By")
                {
                }
                field("Substitutes Exist"; "Substitutes Exist")
                {
                    Editable = true;
                }
                field("Stockkeeping Unit Exists"; "Stockkeeping Unit Exists")
                {
                    Visible = false;
                }
                field("Production BOM No."; "Production BOM No.")
                {
                }
                field("Routing No."; "Routing No.")
                {
                }
                field("Base Unit of Measure"; "Base Unit of Measure")
                {
                }
                field("Shelf No."; "Shelf No.")
                {
                    AssistEdit = false;
                    Enabled = true;
                    Visible = true;
                }
                field("Costing Method"; "Costing Method")
                {
                    Visible = false;
                }
                field(AverageCostLCY; AverageCostLCY)
                {
                    AutoFormatType = 2;
                    Caption = 'Average Cost (LCY)';
                    Editable = false;
                    Visible = false;
                }
                field("Standard Cost"; "Standard Cost")
                {
                    Visible = false;
                }
                field("Last Direct Cost"; "Last Direct Cost")
                {
                    Visible = false;
                }
                field("Price/Profit Calculation"; "Price/Profit Calculation")
                {
                    Visible = false;
                }
                field("Profit %"; "Profit %")
                {
                    Visible = false;
                }
                field("Item Price Group"; "Item Price Group")
                {
                }
                field("Article Group"; "Article Group")
                {
                }
                field("Inventory Posting Group"; "Inventory Posting Group")
                {
                    Visible = false;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    Visible = false;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    Visible = false;
                }
                field("Vendor No."; "Vendor No.")
                {
                }
                field("Vendor Item No."; "Vendor Item No.")
                {
                    Visible = false;
                }
                field("Tariff No."; "Tariff No.")
                {
                    Visible = false;
                }
                field("Search Description"; "Search Description")
                {
                }
                field("Overhead Rate"; "Overhead Rate")
                {
                    Visible = false;
                }
                field(StockQty2; StockQty2)
                {
                }
                field(StockValue2; StockValue2)
                {
                }
                field("Indirect Cost %"; "Indirect Cost %")
                {
                    Visible = false;
                }
                field(StockValueLdgEntry; StockValueLdgEntry)
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field(StockQtyLdgEntry; StockQtyLdgEntry)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Item")
            {
                Caption = '&Item';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page 30;
                    RunPageLink = No.=FIELD(No.),
                                  Date Filter=FIELD(Date Filter),
                                  Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                  Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                  Location Filter=FIELD(Location Filter),
                                  Drop Shipment Filter=FIELD(Drop Shipment Filter);
                    ShortCutKey = 'Shift+F7';
                }
                action("Stockkeepin&g Units")
                {
                    Caption = 'Stockkeepin&g Units';
                    RunObject = Page 5701;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                group("E&ntries")
                {
                    Caption = 'E&ntries';
                    action("Ledger E&ntries")
                    {
                        Caption = 'Ledger E&ntries';
                        RunObject = Page 38;
                                        RunPageLink = Item No.=FIELD(No.);
                        RunPageView = SORTING(Item No.);
                        ShortCutKey = 'Ctrl+F7';
                    }
                    action("&Reservation Entries")
                    {
                        Caption = '&Reservation Entries';
                        Image = ReservationLedger;
                        RunObject = Page 497;
                                        RunPageLink = Reservation Status=CONST(Reservation),
                                      Item No.=FIELD(No.);
                        RunPageView = SORTING(Reservation Status,Item No.,Variant Code,Location Code);
                    }
                    action("&Phys. Inventory Ledger Entries")
                    {
                        Caption = '&Phys. Inventory Ledger Entries';
                        Image = PhysicalInventoryLedger;
                        RunObject = Page 390;
                                        RunPageLink = Item No.=FIELD(No.);
                        RunPageView = SORTING(Item No.);
                    }
                    action("&Value Entries")
                    {
                        Caption = '&Value Entries';
                        Image = ValueLedger;
                        RunObject = Page 5802;
                                        RunPageLink = Item No.=FIELD(No.);
                        RunPageView = SORTING(Item No.);
                    }
                    action("Item &Tracking Entries")
                    {
                        Caption = 'Item &Tracking Entries';
                        Image = ItemTrackingLedger;
                        RunObject = Page 6501;
                                        RunPageLink = Item No.=FIELD(No.);
                        RunPageView = SORTING(Item No.);
                    }
                }
                group(Statistics)
                {
                    Caption = 'Statistics';
                    action(Statistics)
                    {
                        Caption = 'Statistics';
                        Image = Statistics;
                        Promoted = true;
                        PromotedCategory = Process;
                        ShortCutKey = 'F7';
                    }
                    action("Entry Statistics")
                    {
                        Caption = 'Entry Statistics';
                        RunObject = Page 304;
                                        RunPageLink = No.=FIELD(No.),
                                      Date Filter=FIELD(Date Filter),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter),
                                      Bin Filter=FIELD(Bin Filter);
                    }
                    action("T&urnover")
                    {
                        Caption = 'T&urnover';
                        RunObject = Page 158;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter),
                                      Bin Filter=FIELD(Bin Filter);
                    }
                }
                action("Items b&y Location")
                {
                    Caption = 'Items b&y Location';
                    Image = ItemAvailbyLoc;
                }
                group("&Item Availability by")
                {
                    Caption = '&Item Availability by';
                    action(Period)
                    {
                        Caption = 'Period';
                        RunObject = Page 157;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter),
                                      Bin Filter=FIELD(Bin Filter);
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        RunObject = Page 5414;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter),
                                      Bin Filter=FIELD(Bin Filter);
                    }
                    action(Location)
                    {
                        Caption = 'Location';
                        RunObject = Page 492;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter),
                                      Bin Filter=FIELD(Bin Filter);
                    }
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page 124;
                                    RunPageLink = Table Name=CONST(Item),
                                  No.=FIELD(No.);
                }
                group(Dimensions)
                {
                    Caption = 'Dimensions';
                    action("Dimensions-Single")
                    {
                        Caption = 'Dimensions-Single';
                        RunObject = Page 540;
                                        RunPageLink = Table ID=CONST(27),
                                      No.=FIELD(No.);
                        ShortCutKey = 'Shift+Ctrl+D';
                    }
                    action("Dimensions-&Multiple")
                    {
                        Caption = 'Dimensions-&Multiple';

                        trigger OnAction()
                        var
                            Item: Record "27";
                        begin
                        end;
                    }
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    RunObject = Page 346;
                                    RunPageLink = No.=FIELD(No.),
                                  Date Filter=FIELD(Date Filter),
                                  Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                  Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                  Location Filter=FIELD(Location Filter),
                                  Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                  Variant Filter=FIELD(Variant Filter),
                                  Bin Filter=FIELD(Bin Filter);
                }
                separator()
                {
                }
                action("&Units of Measure")
                {
                    Caption = '&Units of Measure';
                    RunObject = Page 5404;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("Va&riants")
                {
                    Caption = 'Va&riants';
                    RunObject = Page 5401;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("Cross Re&ferences")
                {
                    Caption = 'Cross Re&ferences';
                    RunObject = Page 5721;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("Substituti&ons")
                {
                    Caption = 'Substituti&ons';
                    RunObject = Page 5716;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                }
                action("Nonstoc&k Items")
                {
                    Caption = 'Nonstoc&k Items';
                    RunObject = Page 5726;
                }
                separator()
                {
                }
                action(Translations)
                {
                    Caption = 'Translations';
                    RunObject = Page 35;
                                    RunPageLink = Item No.=FIELD(No.),
                                  Variant Code=CONST();
                }
                action("E&xtended Texts")
                {
                    Caption = 'E&xtended Texts';
                    RunObject = Page 391;
                                    RunPageLink = Table Name=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Table Name,No.,Language Code,All Language Codes,Starting Date,Ending Date);
                }
                separator()
                {
                }
                group("Assembly &List")
                {
                    Caption = 'Assembly &List';
                    action("Bill of Materials")
                    {
                        Caption = 'Bill of Materials';
                        RunObject = Page 36;
                                        RunPageLink = Parent Item No.=FIELD(No.);
                    }
                    action("Where-Used List")
                    {
                        Caption = 'Where-Used List';
                        RunObject = Page 37;
                                        RunPageLink = Type=CONST(Item),
                                      No.=FIELD(No.);
                        RunPageView = SORTING(Type,No.);
                    }
                    action("Calc. Stan&dard Cost")
                    {
                        Caption = 'Calc. Stan&dard Cost';
                    }
                }
                group("Manuf&acturing")
                {
                    Caption = 'Manuf&acturing';
                    action("Where-Used")
                    {
                        Caption = 'Where-Used';
                    }
                    action("Calc. Stan&dard Cost")
                    {
                        Caption = 'Calc. Stan&dard Cost';
                    }
                }
                separator()
                {
                    Caption = '';
                }
                action("Ser&vice Items")
                {
                    Caption = 'Ser&vice Items';
                    RunObject = Page 5988;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                group("Troubles&hooting")
                {
                    Caption = 'Troubles&hooting';
                    action("Troubleshooting &Setup")
                    {
                        Caption = 'Troubleshooting &Setup';
                        Image = Troubleshoot;
                        RunObject = Page 5993;
                                        RunPageLink = Type=CONST(Item),
                                      No.=FIELD(No.);
                    }
                    action("Troubles&hooting")
                    {
                        Caption = 'Troubles&hooting';
                    }
                }
                group("R&esource")
                {
                    Caption = 'R&esource';
                    action("Resource &Skills")
                    {
                        Caption = 'Resource &Skills';
                        RunObject = Page 6019;
                                        RunPageLink = Type=CONST(Item),
                                      No.=FIELD(No.);
                    }
                    action("Skilled R&esources")
                    {
                        Caption = 'Skilled R&esources';

                        trigger OnAction()
                        var
                            ResourceSkill: Record "5956";
                        begin
                        end;
                    }
                }
            }
            group("S&ales")
            {
                Caption = 'S&ales';
                action("Item/Cust. Discounts")
                {
                    Caption = 'Item/Cust. Discounts';

                    trigger OnAction()
                    var
                        ItemDiscGr: Record "341";
                    begin
                    end;
                }
                action(Orders)
                {
                    Caption = 'Orders';
                    Image = Document;
                    RunObject = Page 48;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Document Type,Type,No.);
                }
                action("Returns Orders")
                {
                    Caption = 'Returns Orders';
                    RunObject = Page 6633;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Document Type,Type,No.);
                }
            }
            group("&Purchases")
            {
                Caption = '&Purchases';
                action("Ven&dors")
                {
                    Caption = 'Ven&dors';
                    RunObject = Page 114;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("Quantity Discounts")
                {
                    Caption = 'Quantity Discounts';
                    RunObject = Page 115;
                                    RunPageLink = Table ID=FIELD(No.),
                                  No. of Records=FIELD(Vendor No.);
                }
                action(Orders)
                {
                    Caption = 'Orders';
                    Image = Document;
                    RunObject = Page 56;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Document Type,Type,No.);
                }
                action("Return Orders")
                {
                    Caption = 'Return Orders';
                    Image = ReturnOrder;
                    RunObject = Page 6643;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Document Type,Type,No.);
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                action("&Create Stockkeeping Unit")
                {
                    Caption = '&Create Stockkeeping Unit';

                    trigger OnAction()
                    var
                        Item: Record "27";
                    begin
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        ItemCostMgt.CalculateAverageCost(Rec,AverageCostLCY,AverageCostACY);
    end;

    var
        TblshtgHeader: Record "5943";
        ItemCostMgt: Codeunit "5804";
        CalculateStdCost: Codeunit "5812";
        AverageCostLCY: Decimal;
        AverageCostACY: Decimal;
}

