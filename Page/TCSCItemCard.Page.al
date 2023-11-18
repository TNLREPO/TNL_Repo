page 50039 "TCSC Item Card"
{
    Caption = 'Item Card';
    CardPageID = "Item Card";
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Table27;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    Importance = Promoted;

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit THEN
                            CurrPage.UPDATE;
                    end;

                    trigger OnValidate()
                    begin
                        TESTFIELD(Description);
                        TESTFIELD("Base Unit of Measure");
                        TESTFIELD("Model No.");
                        TESTFIELD("Model Name");
                        TESTFIELD("Part Category");
                        //TestField("Department Code");
                        //Testfield("Branch Code");
                        TESTFIELD("Item Category Code");
                        TESTFIELD("Product Group Code");
                        TESTFIELD("Item Price Group");
                        TESTFIELD("Costing Method");
                        TESTFIELD("Price/Profit Calculation");
                        TESTFIELD("Gen. Prod. Posting Group");
                        TESTFIELD("VAT Prod. Posting Group");
                        TESTFIELD("Inventory Posting Group");
                    end;
                }
                field(Description; Description)
                {
                    ShowMandatory = true;
                }
                field("Base Unit of Measure"; "Base Unit of Measure")
                {
                    Importance = Promoted;
                    ShowMandatory = true;
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field("Item Type"; "Item Type")
                {
                    BlankZero = true;
                    Caption = 'Item Stock Type';
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        IF "Item Type" = "Item Type"::"Non-Stock" THEN
                            SourceItemVisible := TRUE
                        ELSE
                            SourceItemVisible := FALSE;
                        MESSAGE('Kindly Indicate Item Source');
                    end;
                }
                field("Item Source"; "Item Source")
                {
                    BlankZero = true;
                    Editable = SourceItemVisible;
                    ShowMandatory = true;
                }
                field("Model No."; "Model No.")
                {
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        IF "Item Type" = "Item Type"::"Non-Stock" THEN
                            TESTFIELD("Item Source");
                    end;
                }
                field("Model Name"; "Model Name")
                {
                    ShowMandatory = true;
                }
                field(Degree; Degree)
                {
                }
                field("Item Color"; "Item Color")
                {
                }
                field("Pre-Owned Colour"; "Pre-Owned Colour")
                {
                }
                field("Year of Production"; "Year of Production")
                {
                }
                field("Estimated Mileage"; "Estimated Mileage")
                {
                }
                field("Product Code"; "Product Code")
                {
                    ShowMandatory = true;
                }
                field("Part Category"; "Part Category")
                {
                    BlankZero = true;
                    ShowMandatory = true;
                }
                field("Part Group"; "Part Group")
                {
                    ShowMandatory = true;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                    ShowMandatory = true;
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    ShowMandatory = true;
                }
                field("Assembly BOM"; "Assembly BOM")
                {
                }
                field("Shelf No."; "Shelf No.")
                {
                }
                field("Isolo Shelf No."; "Isolo Shelf No.")
                {
                    Caption = 'Isolo Shelf No.';
                }
                field("Net Change"; "Net Change")
                {
                }
                field("Stockvalue."; "Stockvalue.")
                {
                }
                field("Automatic Ext. Texts"; "Automatic Ext. Texts")
                {
                }
                field("Created From Nonstock Item"; "Created From Nonstock Item")
                {
                }
                field("Item Category Code"; "Item Category Code")
                {
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        EnableCostingControls;
                    end;
                }
                field("Product Group Code"; "Product Group Code")
                {
                    ShowMandatory = true;
                }
                field("Service Item Group"; "Service Item Group")
                {
                }
                field("Search Description"; "Search Description")
                {
                }
                field("Item Price Group"; "Item Price Group")
                {
                    ShowMandatory = true;
                }
                field("Net Invoiced Qty."; "Net Invoiced Qty.")
                {
                }
                field(Inventory; Inventory)
                {
                    Importance = Promoted;
                }
                field("Factor (Air)"; "Factor (Air)")
                {
                }
                field("Qty. on Purch. Order"; "Qty. on Purch. Order")
                {
                }
                field("Qty. on Prod. Order"; "Qty. on Prod. Order")
                {
                }
                field("Qty. on Component Lines"; "Qty. on Component Lines")
                {
                }
                field("Qty. on Sales Order"; "Qty. on Sales Order")
                {
                }
                field("Qty. on Service Order"; "Qty. on Service Order")
                {
                }
                field("Qty. on Job Order"; "Qty. on Job Order")
                {
                }
                field("Variant Filter"; "Variant Filter")
                {
                }
                field("Qty. on Assembly Order"; "Qty. on Assembly Order")
                {
                    Importance = Additional;
                }
                field("Qty. on Asm. Component"; "Qty. on Asm. Component")
                {
                    Importance = Additional;
                }
                field(Blocked; Blocked)
                {
                    Editable = true;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field(StockoutWarningDefaultYes; "Stockout Warning")
                {
                    Caption = 'Stockout Warning';
                    OptionCaption = 'Default (Yes),No,Yes';
                    Visible = ShowStockoutWarningDefaultYes;
                }
                field(StockoutWarningDefaultNo; "Stockout Warning")
                {
                    Caption = 'Stockout Warning';
                    OptionCaption = 'Default (No),No,Yes';
                    Visible = ShowStockoutWarningDefaultNo;
                }
                field(PreventNegInventoryDefaultYes; "Prevent Negative Inventory")
                {
                    Caption = 'Prevent Negative Inventory';
                    OptionCaption = 'Default (Yes),No,Yes';
                    Visible = ShowPreventNegInventoryDefaultYes;
                }
                field(PreventNegInventoryDefaultNo; "Prevent Negative Inventory")
                {
                    Caption = 'Prevent Negative Inventory';
                    OptionCaption = 'Default (No),No,Yes';
                    Visible = ShowPreventNegInventoryDefaultNo;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Costing Method"; "Costing Method")
                {
                    BlankZero = true;
                    Importance = Promoted;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        EnableCostingControls;
                    end;
                }
                field("Cost is Adjusted"; "Cost is Adjusted")
                {
                }
                field("Cost is Posted to G/L"; "Cost is Posted to G/L")
                {
                }
                field("Fixed Cost"; "Fixed Cost")
                {
                }
                field("Standard Cost"; "Standard Cost")
                {
                    Enabled = StandardCostEnable;
                    Visible = false;

                    trigger OnDrillDown()
                    var
                        ShowAvgCalcItem: Codeunit "5803";
                    begin
                        ShowAvgCalcItem.DrillDownAvgCostAdjmtPoint(Rec)
                    end;
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Caption = 'Landing Cost (AVG)';
                    Enabled = UnitCostEnable;

                    trigger OnDrillDown()
                    var
                        ShowAvgCalcItem: Codeunit "5803";
                    begin
                        ShowAvgCalcItem.DrillDownAvgCostAdjmtPoint(Rec)
                    end;
                }
                field("FOB (FIXED)"; "FOB (FIXED)")
                {
                }
                field("Last Direct Cost"; "Last Direct Cost")
                {
                    Caption = 'FOB (CURRENT)';
                }
                field("Price/Profit Calculation"; "Price/Profit Calculation")
                {
                    BlankZero = true;
                    ShowMandatory = true;
                }
                field("TNL Profit %"; "TNL Profit %")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                    Importance = Promoted;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    Importance = Promoted;
                    ShowMandatory = true;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    ShowMandatory = true;
                }
                field("Inventory Posting Group"; "Inventory Posting Group")
                {
                    Importance = Promoted;
                    ShowMandatory = true;
                }
                field("Allow Invoice Disc."; "Allow Invoice Disc.")
                {
                }
                field("Item Disc. Group"; "Item Disc. Group")
                {
                }
                field("Purch. Unit of Measure"; "Purch. Unit of Measure")
                {
                }
                field("Sales Unit of Measure"; "Sales Unit of Measure")
                {
                }
                field("Application Wksh. User ID"; "Application Wksh. User ID")
                {
                    Visible = false;
                }
                field("Profit %"; "Profit %")
                {
                }
            }
            group(Replenishment)
            {
                Caption = 'Replenishment';
                field("Replenishment System"; "Replenishment System")
                {
                    Importance = Promoted;
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                }
                group(Purchase)
                {
                    Caption = 'Purchase';
                    field("Vendor No."; "Vendor No.")
                    {
                    }
                    field("Vendor Item No."; "Vendor Item No.")
                    {
                    }
                }
                group(Production)
                {
                    Caption = 'Production';
                    field("Manufacturing Policy"; "Manufacturing Policy")
                    {
                    }
                    field("Routing No."; "Routing No.")
                    {
                    }
                    field("Production BOM No."; "Production BOM No.")
                    {
                    }
                    field("Rounding Precision"; "Rounding Precision")
                    {
                    }
                    field("Flushing Method"; "Flushing Method")
                    {
                    }
                    field("Scrap %"; "Scrap %")
                    {
                    }
                    field("Lot Size"; "Lot Size")
                    {
                    }
                }
                group(Assembly)
                {
                    Caption = 'Assembly';
                    field("Assembly Policy"; "Assembly Policy")
                    {
                    }
                }
            }
            group(Planning)
            {
                Caption = 'Planning';
                field("Reordering Policy"; "Reordering Policy")
                {
                    Importance = Promoted;

                    trigger OnValidate()
                    begin
                        EnablePlanningControls
                    end;
                }
                field(Reserve; Reserve)
                {
                    Importance = Promoted;
                }
                field("Order Tracking Policy"; "Order Tracking Policy")
                {
                }
                field("Stockkeeping Unit Exists"; "Stockkeeping Unit Exists")
                {
                }
                field("Dampener Period"; "Dampener Period")
                {
                    Enabled = DampenerPeriodEnable;
                }
                field("Dampener Quantity"; "Dampener Quantity")
                {
                    Enabled = DampenerQtyEnable;
                }
                field(Critical; Critical)
                {
                }
                field("Safety Lead Time"; "Safety Lead Time")
                {
                    Enabled = SafetyLeadTimeEnable;
                }
                field("Safety Stock Quantity"; "Safety Stock Quantity")
                {
                    Enabled = SafetyStockQtyEnable;
                }
                group("Lot-for-Lot Parameters")
                {
                    Caption = 'Lot-for-Lot Parameters';
                    field("Include Inventory"; "Include Inventory")
                    {
                        Enabled = IncludeInventoryEnable;

                        trigger OnValidate()
                        begin
                            EnablePlanningControls
                        end;
                    }
                    field("Lot Accumulation Period"; "Lot Accumulation Period")
                    {
                        Enabled = LotAccumulationPeriodEnable;
                    }
                    field("Rescheduling Period"; "Rescheduling Period")
                    {
                        Enabled = ReschedulingPeriodEnable;
                    }
                }
                group("Reorder-Point Parameters")
                {
                    Caption = 'Reorder-Point Parameters';
                    grid()
                    {
                        GridLayout = Rows;
                        group()
                        {
                            field("Reorder Point"; "Reorder Point")
                            {
                                Enabled = ReorderPointEnable;
                            }
                            field("Reorder Quantity"; "Reorder Quantity")
                            {
                                Enabled = ReorderQtyEnable;
                            }
                            field("Maximum Inventory"; "Maximum Inventory")
                            {
                                Enabled = MaximumInventoryEnable;
                            }
                        }
                    }
                    field("Overflow Level"; "Overflow Level")
                    {
                        Enabled = OverflowLevelEnable;
                        Importance = Additional;
                    }
                    field("Time Bucket"; "Time Bucket")
                    {
                        Enabled = TimeBucketEnable;
                        Importance = Additional;
                    }
                }
                group("Order Modifiers")
                {
                    Caption = 'Order Modifiers';
                    grid()
                    {
                        GridLayout = Rows;
                        group()
                        {
                            field("Minimum Order Quantity"; "Minimum Order Quantity")
                            {
                                Enabled = MinimumOrderQtyEnable;
                            }
                            field("Maximum Order Quantity"; "Maximum Order Quantity")
                            {
                                Enabled = MaximumOrderQtyEnable;
                            }
                            field("Order Multiple"; "Order Multiple")
                            {
                                Enabled = OrderMultipleEnable;
                            }
                        }
                    }
                }
            }
            group("Foreign Trade")
            {
                Caption = 'Foreign Trade';
                field("Tariff No."; "Tariff No.")
                {
                }
                field("Country/Region of Origin Code"; "Country/Region of Origin Code")
                {
                }
                field("Net Weight"; "Net Weight")
                {
                }
                field("Gross Weight"; "Gross Weight")
                {
                }
            }
            group("Item Tracking")
            {
                Caption = 'Item Tracking';
                field("Item Tracking Code"; "Item Tracking Code")
                {
                    Importance = Promoted;
                }
                field("Serial Nos."; "Serial Nos.")
                {
                }
                field("Lot Nos."; "Lot Nos.")
                {
                }
                field("Expiration Calculation"; "Expiration Calculation")
                {
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                field("Special Equipment Code"; "Special Equipment Code")
                {
                }
                field("Put-away Template Code"; "Put-away Template Code")
                {
                }
                field("Put-away Unit of Measure Code"; "Put-away Unit of Measure Code")
                {
                    Importance = Promoted;
                }
                field("Phys Invt Counting Period Code"; "Phys Invt Counting Period Code")
                {
                    Importance = Promoted;
                }
                field("Last Phys. Invt. Date"; "Last Phys. Invt. Date")
                {
                }
                field("Last Counting Period Update"; "Last Counting Period Update")
                {
                }
                field("Next Counting Start Date"; "Next Counting Start Date")
                {
                }
                field("Next Counting End Date"; "Next Counting End Date")
                {
                }
                field("Identifier Code"; "Identifier Code")
                {
                }
                field("Use Cross-Docking"; "Use Cross-Docking")
                {
                }
            }
        }
        area(factboxes)
        {
            part(; 875)
            {
                SubPageLink = Source Type=CONST(Item),
                              Source No.=FIELD(No.);
                                             Visible = SocialListeningVisible;
            }
            part(; 876)
            {
                SubPageLink = Source Type=CONST(Item),
                              Source No.=FIELD(No.);
                                             UpdatePropagation = Both;
                                             Visible = SocialListeningSetupVisible;
            }
            systempart(; Links)
            {
                Visible = true;
            }
            systempart(; Notes)
            {
                Visible = true;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Master Data")
            {
                Caption = 'Master Data';
                Image = "<DataEntry>";
                action("&Units of Measure")
                {
                    Caption = '&Units of Measure';
                    Image = UnitOfMeasure;
                    RunObject = Page 5404;
                    RunPageLink = Item No.=FIELD(No.);
                }
                action("Va&riants")
                {
                    Caption = 'Va&riants';
                    Image = ItemVariant;
                    RunObject = Page 5401;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                group(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    RunObject = Page 540;
                                    RunPageLink = Table ID=CONST(27),
                                  No.=FIELD(No.);
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action("Substituti&ons")
                {
                    Caption = 'Substituti&ons';
                    Image = ItemSubstitution;
                    RunObject = Page 5716;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                }
                action("Cross Re&ferences")
                {
                    Caption = 'Cross Re&ferences';
                    Image = Change;
                    RunObject = Page 5721;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("E&xtended Texts")
                {
                    Caption = 'E&xtended Texts';
                    Image = Text;
                    RunObject = Page 391;
                                    RunPageLink = Table Name=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Table Name,No.,Language Code,All Language Codes,Starting Date,Ending Date);
                }
                action(Translations)
                {
                    Caption = 'Translations';
                    Image = Translations;
                    RunObject = Page 35;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    Image = Picture;
                    RunObject = Page 346;
                                    RunPageLink = No.=FIELD(No.),
                                  Date Filter=FIELD(Date Filter),
                                  Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                  Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                  Location Filter=FIELD(Location Filter),
                                  Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                  Variant Filter=FIELD(Variant Filter);
                }
                action(Identifiers)
                {
                    Caption = 'Identifiers';
                    Image = BarCode;
                    RunObject = Page 7706;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.,Variant Code,Unit of Measure Code);
                }
            }
            group(Availability)
            {
                Caption = 'Availability';
                Image = ItemAvailability;
                action(ItemsByLocation)
                {
                    AccessByPermission = TableData 14=R;
                    Caption = 'Items b&y Location';
                    Image = ItemAvailbyLoc;

                    trigger OnAction()
                    var
                        ItemsByLocation: Page "491";
                    begin
                        ItemsByLocation.SETRECORD(Rec);
                        ItemsByLocation.RUN;
                    end;
                }
                group("&Item Availability by")
                {
                    Caption = '&Item Availability by';
                    Image = ItemAvailability;
                    action("<Action110>")
                    {
                        Caption = 'Event';
                        Image = "Event";

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromItem(Rec,ItemAvailFormsMgt.ByEvent);
                        end;
                    }
                    action(Period)
                    {
                        Caption = 'Period';
                        Image = Period;
                        RunObject = Page 157;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter);
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        Image = ItemVariant;
                        RunObject = Page 5414;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter);
                    }
                    action(Location)
                    {
                        Caption = 'Location';
                        Image = Warehouse;
                        RunObject = Page 492;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter);
                    }
                    action("BOM Level")
                    {
                        Caption = 'BOM Level';
                        Image = BOMLevel;

                        trigger OnAction()
                        begin
                            ItemAvailFormsMgt.ShowItemAvailFromItem(Rec,ItemAvailFormsMgt.ByBOM);
                        end;
                    }
                    action(Timeline)
                    {
                        Caption = 'Timeline';
                        Image = Timeline;

                        trigger OnAction()
                        begin
                            ShowTimelineFromItem(Rec);
                        end;
                    }
                }
            }
            group(History)
            {
                Caption = 'History';
                Image = History;
                group("E&ntries")
                {
                    Caption = 'E&ntries';
                    Image = Entries;
                    action("Ledger E&ntries")
                    {
                        Caption = 'Ledger E&ntries';
                        Image = ItemLedger;
                        Promoted = false;
                        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                        //PromotedCategory = Process;
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
                        RunPageView = SORTING(Item No.,Variant Code,Location Code,Reservation Status);
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

                        trigger OnAction()
                        var
                            ItemTrackingMgt: Codeunit "6500";
                        begin
                        end;
                    }
                    action("&Warehouse Entries")
                    {
                        Caption = '&Warehouse Entries';
                        Image = BinLedger;
                        RunObject = Page 7318;
                                        RunPageLink = Item No.=FIELD(No.);
                        RunPageView = SORTING(Item No.,Bin Code,Location Code,Variant Code,Unit of Measure Code,Lot No.,Serial No.,Entry Type,Dedicated);
                    }
                    action("Application Worksheet")
                    {
                        Caption = 'Application Worksheet';
                        Image = ApplicationWorksheet;
                        RunObject = Page 521;
                                        RunPageLink = Item No.=FIELD(No.);
                    }
                }
                group(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    action(Statistics)
                    {
                        Caption = 'Statistics';
                        Image = Statistics;
                        Promoted = true;
                        PromotedCategory = Process;
                        ShortCutKey = 'F7';

                        trigger OnAction()
                        var
                            ItemStatistics: Page "5827";
                        begin
                            ItemStatistics.SetItem(Rec);
                            ItemStatistics.RUNMODAL;
                        end;
                    }
                    action("Entry Statistics")
                    {
                        Caption = 'Entry Statistics';
                        Image = EntryStatistics;
                        RunObject = Page 304;
                                        RunPageLink = No.=FIELD(No.),
                                      Date Filter=FIELD(Date Filter),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter);
                    }
                    action("T&urnover")
                    {
                        Caption = 'T&urnover';
                        Image = Turnover;
                        RunObject = Page 158;
                                        RunPageLink = No.=FIELD(No.),
                                      Global Dimension 1 Filter=FIELD(Global Dimension 1 Filter),
                                      Global Dimension 2 Filter=FIELD(Global Dimension 2 Filter),
                                      Location Filter=FIELD(Location Filter),
                                      Drop Shipment Filter=FIELD(Drop Shipment Filter),
                                      Variant Filter=FIELD(Variant Filter);
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
            }
            group("&Purchases")
            {
                Caption = '&Purchases';
                Image = Purchasing;
                action("Ven&dors")
                {
                    Caption = 'Ven&dors';
                    Image = Vendor;
                    RunObject = Page 114;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                action(Prices)
                {
                    Caption = 'Prices';
                    Image = Price;
                    RunObject = Page 7012;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                action("Line Discounts")
                {
                    Caption = 'Line Discounts';
                    Image = LineDiscount;
                    RunObject = Page 7014;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                action("Prepa&yment Percentages")
                {
                    Caption = 'Prepa&yment Percentages';
                    Image = PrepaymentPercentages;
                    RunObject = Page 665;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                separator()
                {
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
                action("Nonstoc&k Items")
                {
                    Caption = 'Nonstoc&k Items';
                    Image = NonStockItem;
                    RunObject = Page 5726;
                }
            }
            group("S&ales")
            {
                Caption = 'S&ales';
                Image = Sales;
                action(Prices)
                {
                    Caption = 'Prices';
                    Image = Price;
                    RunObject = Page 7002;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                action("Line Discounts")
                {
                    Caption = 'Line Discounts';
                    Image = LineDiscount;
                    RunObject = Page 7004;
                                    RunPageLink = Type=CONST(Item),
                                  Code=FIELD(No.);
                    RunPageView = SORTING(Type,Code);
                }
                action("Prepa&yment Percentages")
                {
                    Caption = 'Prepa&yment Percentages';
                    Image = PrepaymentPercentages;
                    RunObject = Page 664;
                                    RunPageLink = Item No.=FIELD(No.);
                }
                separator()
                {
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
                action("Return Orders")
                {
                    Caption = 'Return Orders';
                    Image = ReturnOrder;
                    RunObject = Page 6633;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                    RunPageView = SORTING(Document Type,Type,No.);
                }
            }
            group("Assembly/Production")
            {
                Caption = 'Assembly/Production';
                Image = Production;
                action(Structure)
                {
                    Caption = 'Structure';
                    Image = Hierarchy;

                    trigger OnAction()
                    var
                        BOMStructure: Page "5870";
                    begin
                        BOMStructure.InitItem(Rec);
                        BOMStructure.RUN;
                    end;
                }
                action("Cost Shares")
                {
                    Caption = 'Cost Shares';
                    Image = CostBudget;

                    trigger OnAction()
                    var
                        BOMCostShares: Page "5872";
                    begin
                        BOMCostShares.InitItem(Rec);
                        BOMCostShares.RUN;
                    end;
                }
                group("Assemb&ly")
                {
                    Caption = 'Assemb&ly';
                    Image = AssemblyBOM;
                    action("Assembly BOM")
                    {
                        Caption = 'Assembly BOM';
                        Image = BOM;
                        RunObject = Page 36;
                                        RunPageLink = Parent Item No.=FIELD(No.);
                    }
                    action("Where-Used")
                    {
                        Caption = 'Where-Used';
                        Image = Track;
                        RunObject = Page 37;
                                        RunPageLink = Type=CONST(Item),
                                      No.=FIELD(No.);
                        RunPageView = SORTING(Type,No.);
                    }
                    action("Calc. Stan&dard Cost")
                    {
                        AccessByPermission = TableData 90=R;
                        Caption = 'Calc. Stan&dard Cost';
                        Image = CalculateCost;

                        trigger OnAction()
                        begin
                            CLEAR(CalculateStdCost);
                            CalculateStdCost.CalcItem("No.",TRUE);
                        end;
                    }
                    action("Calc. Unit Price")
                    {
                        AccessByPermission = TableData 90=R;
                        Caption = 'Calc. Unit Price';
                        Image = SuggestItemPrice;

                        trigger OnAction()
                        begin
                            CLEAR(CalculateStdCost);
                            CalculateStdCost.CalcAssemblyItemPrice("No.")
                        end;
                    }
                }
                group(Production)
                {
                    Caption = 'Production';
                    Image = Production;
                    action("Production BOM")
                    {
                        Caption = 'Production BOM';
                        Image = BOM;
                        RunObject = Page 99000786;
                                        RunPageLink = No.=FIELD(Production BOM No.);
                    }
                    action("Where-Used")
                    {
                        AccessByPermission = TableData 99000771=R;
                        Caption = 'Where-Used';
                        Image = "Where-Used";

                        trigger OnAction()
                        var
                            ProdBOMWhereUsed: Page "99000811";
                        begin
                            ProdBOMWhereUsed.SetItem(Rec,WORKDATE);
                            ProdBOMWhereUsed.RUNMODAL;
                        end;
                    }
                    action("Calc. Stan&dard Cost")
                    {
                        AccessByPermission = TableData 99000771=R;
                        Caption = 'Calc. Stan&dard Cost';
                        Image = CalculateCost;

                        trigger OnAction()
                        begin
                            CLEAR(CalculateStdCost);
                            CalculateStdCost.CalcItem("No.",FALSE);
                        end;
                    }
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("&Bin Contents")
                {
                    Caption = '&Bin Contents';
                    Image = BinContent;
                    RunObject = Page 7379;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                action("Stockkeepin&g Units")
                {
                    Caption = 'Stockkeepin&g Units';
                    Image = SKU;
                    RunObject = Page 5701;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
            }
            group(Service)
            {
                Caption = 'Service';
                Image = ServiceItem;
                action("Ser&vice Items")
                {
                    Caption = 'Ser&vice Items';
                    Image = ServiceItem;
                    RunObject = Page 5988;
                                    RunPageLink = Item No.=FIELD(No.);
                    RunPageView = SORTING(Item No.);
                }
                action(Troubleshooting)
                {
                    AccessByPermission = TableData 5900=R;
                    Caption = 'Troubleshooting';
                    Image = Troubleshoot;

                    trigger OnAction()
                    var
                        TroubleshootingHeader: Record "5943";
                    begin
                        TroubleshootingHeader.ShowForItem(Rec);
                    end;
                }
                action("Troubleshooting Setup")
                {
                    Caption = 'Troubleshooting Setup';
                    Image = Troubleshoot;
                    RunObject = Page 5993;
                                    RunPageLink = Type=CONST(Item),
                                  No.=FIELD(No.);
                }
            }
            group(Resources)
            {
                Caption = 'Resources';
                Image = Resource;
                group("R&esource")
                {
                    Caption = 'R&esource';
                    Image = Resource;
                    action("Resource Skills")
                    {
                        Caption = 'Resource Skills';
                        Image = ResourceSkills;
                        RunObject = Page 6019;
                                        RunPageLink = Type=CONST(Item),
                                      No.=FIELD(No.);
                    }
                    action("Skilled Resources")
                    {
                        AccessByPermission = TableData 5900=R;
                        Caption = 'Skilled Resources';
                        Image = ResourceSkills;

                        trigger OnAction()
                        var
                            ResourceSkill: Record "5956";
                        begin
                            CLEAR(SkilledResourceList);
                            SkilledResourceList.Initialize(ResourceSkill.Type::Item,"No.",Description);
                            SkilledResourceList.RUNMODAL;
                        end;
                    }
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("&Create Stockkeeping Unit")
                {
                    AccessByPermission = TableData 5700=R;
                    Caption = '&Create Stockkeeping Unit';
                    Image = CreateSKU;

                    trigger OnAction()
                    var
                        Item: Record "27";
                    begin
                        Item.SETRANGE("No.","No.");
                        REPORT.RUNMODAL(REPORT::"Create Stockkeeping Unit",TRUE,FALSE,Item);
                    end;
                }
                action(CalculateCountingPeriod)
                {
                    AccessByPermission = TableData 7380=R;
                    Caption = 'C&alculate Counting Period';
                    Image = CalculateCalendar;

                    trigger OnAction()
                    var
                        Item: Record "27";
                        PhysInvtCountMgt: Codeunit "7380";
                    begin
                        Item.SETRANGE("No.","No.");
                        PhysInvtCountMgt.UpdateItemPhysInvtCount(Item);
                    end;
                }
                separator()
                {
                }
                action("Apply Template")
                {
                    Caption = 'Apply Template';
                    Ellipsis = true;
                    Image = ApplyTemplate;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        ConfigTemplateMgt: Codeunit "8612";
                        RecRef: RecordRef;
                    begin
                        RecRef.GETTABLE(Rec);
                        ConfigTemplateMgt.UpdateFromTemplateSelection(RecRef);
                    end;
                }
            }
            action("Requisition Worksheet")
            {
                Caption = 'Requisition Worksheet';
                Image = Worksheet;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 291;
            }
            action("Item Journal")
            {
                Caption = 'Item Journal';
                Image = Journals;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 40;
            }
            action("Item Reclassification Journal")
            {
                Caption = 'Item Reclassification Journal';
                Image = Journals;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 393;
            }
            action("Item Tracing")
            {
                Caption = 'Item Tracing';
                Image = ItemTracing;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 6520;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        EnablePlanningControls;
        EnableCostingControls;
        //SetSocialListeningFactboxVisibility;
    end;

    trigger OnInit()
    begin
        UnitCostEnable := TRUE;
        StandardCostEnable := TRUE;
        OverflowLevelEnable := TRUE;
        DampenerQtyEnable := TRUE;
        DampenerPeriodEnable := TRUE;
        LotAccumulationPeriodEnable := TRUE;
        ReschedulingPeriodEnable := TRUE;
        IncludeInventoryEnable := TRUE;
        OrderMultipleEnable := TRUE;
        MaximumOrderQtyEnable := TRUE;
        MinimumOrderQtyEnable := TRUE;
        MaximumInventoryEnable := TRUE;
        ReorderQtyEnable := TRUE;
        ReorderPointEnable := TRUE;
        SafetyStockQtyEnable := TRUE;
        SafetyLeadTimeEnable := TRUE;
        TimeBucketEnable := TRUE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        EnablePlanningControls;
        EnableCostingControls;
    end;

    trigger OnOpenPage()
    begin
        EnableShowStockOutWarning;
        EnableShowShowEnforcePositivInventory;
        //IF "Fixed Cost" = 0 THEN BEGIN
         IF "No."<> ''  THEN BEGIN
         VALIDATE("Last Direct Cost");
         VALIDATE("Price/Profit Calculation");
         MODIFY;
         END;
    end;

    var
        SkilledResourceList: Page "6023";
                                 CalculateStdCost: Codeunit "5812";
                                 ItemAvailFormsMgt: Codeunit "353";
                                 ShowStockoutWarningDefaultYes: Boolean;
                                 ShowStockoutWarningDefaultNo: Boolean;
                                 ShowPreventNegInventoryDefaultYes: Boolean;
                                 ShowPreventNegInventoryDefaultNo: Boolean;
    [InDataSet]

    TimeBucketEnable: Boolean;
        [InDataSet]
        SafetyLeadTimeEnable: Boolean;
        [InDataSet]
        SafetyStockQtyEnable: Boolean;
        [InDataSet]
        ReorderPointEnable: Boolean;
        [InDataSet]
        ReorderQtyEnable: Boolean;
        [InDataSet]
        MaximumInventoryEnable: Boolean;
        [InDataSet]
        MinimumOrderQtyEnable: Boolean;
        [InDataSet]
        MaximumOrderQtyEnable: Boolean;
        [InDataSet]
        OrderMultipleEnable: Boolean;
        [InDataSet]
        IncludeInventoryEnable: Boolean;
        [InDataSet]
        ReschedulingPeriodEnable: Boolean;
        [InDataSet]
        LotAccumulationPeriodEnable: Boolean;
        [InDataSet]
        DampenerPeriodEnable: Boolean;
        [InDataSet]
        DampenerQtyEnable: Boolean;
        [InDataSet]
        OverflowLevelEnable: Boolean;
        [InDataSet]
        StandardCostEnable: Boolean;
        [InDataSet]
        UnitCostEnable: Boolean;
        [InDataSet]
        SocialListeningSetupVisible: Boolean;
        [InDataSet]
        SocialListeningVisible: Boolean;
        ItemRec: Record "27";
        SourceItemVisible: Boolean;

    [Scope('Internal')]
    procedure EnableShowStockOutWarning()
    var
        SalesSetup: Record "311";
    begin
        SalesSetup.GET;
        ShowStockoutWarningDefaultYes := SalesSetup."Stockout Warning";
        ShowStockoutWarningDefaultNo := NOT ShowStockoutWarningDefaultYes;
    end;

    [Scope('Internal')]
    procedure EnableShowShowEnforcePositivInventory()
    var
        InventorySetup: Record "313";
    begin
        InventorySetup.GET;
        ShowPreventNegInventoryDefaultYes := InventorySetup."Prevent Negative Inventory";
        ShowPreventNegInventoryDefaultNo := NOT ShowPreventNegInventoryDefaultYes;
    end;

    local procedure EnablePlanningControls()
    var
        PlanningGetParam: Codeunit "99000855";
        TimeBucketEnabled: Boolean;
        SafetyLeadTimeEnabled: Boolean;
        SafetyStockQtyEnabled: Boolean;
        ReorderPointEnabled: Boolean;
        ReorderQtyEnabled: Boolean;
        MaximumInventoryEnabled: Boolean;
        MinimumOrderQtyEnabled: Boolean;
        MaximumOrderQtyEnabled: Boolean;
        OrderMultipleEnabled: Boolean;
        IncludeInventoryEnabled: Boolean;
        ReschedulingPeriodEnabled: Boolean;
        LotAccumulationPeriodEnabled: Boolean;
        DampenerPeriodEnabled: Boolean;
        DampenerQtyEnabled: Boolean;
        OverflowLevelEnabled: Boolean;
    begin
        PlanningGetParam.SetUpPlanningControls("Reordering Policy","Include Inventory",
          TimeBucketEnabled,SafetyLeadTimeEnabled,SafetyStockQtyEnabled,
          ReorderPointEnabled,ReorderQtyEnabled,MaximumInventoryEnabled,
          MinimumOrderQtyEnabled,MaximumOrderQtyEnabled,OrderMultipleEnabled,IncludeInventoryEnabled,
          ReschedulingPeriodEnabled,LotAccumulationPeriodEnabled,
          DampenerPeriodEnabled,DampenerQtyEnabled,OverflowLevelEnabled);

        TimeBucketEnable := TimeBucketEnabled;
        SafetyLeadTimeEnable := SafetyLeadTimeEnabled;
        SafetyStockQtyEnable := SafetyStockQtyEnabled;
        ReorderPointEnable := ReorderPointEnabled;
        ReorderQtyEnable := ReorderQtyEnabled;
        MaximumInventoryEnable := MaximumInventoryEnabled;
        MinimumOrderQtyEnable := MinimumOrderQtyEnabled;
        MaximumOrderQtyEnable := MaximumOrderQtyEnabled;
        OrderMultipleEnable := OrderMultipleEnabled;
        IncludeInventoryEnable := IncludeInventoryEnabled;
        ReschedulingPeriodEnable := ReschedulingPeriodEnabled;
        LotAccumulationPeriodEnable := LotAccumulationPeriodEnabled;
        DampenerPeriodEnable := DampenerPeriodEnabled;
        DampenerQtyEnable := DampenerQtyEnabled;
        OverflowLevelEnable := OverflowLevelEnabled;
    end;

    local procedure EnableCostingControls()
    begin
        StandardCostEnable := "Costing Method" = "Costing Method"::Standard;
        UnitCostEnable := "Costing Method" <> "Costing Method"::Standard;
    end;

    local procedure SetSocialListeningFactboxVisibility()
    var
        SocialListeningMgt: Codeunit "871";
    begin
        SocialListeningMgt.GetItemFactboxVisibility(Rec,SocialListeningSetupVisible,SocialListeningVisible);
    end;
}

