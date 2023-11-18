page 50009 "Purchase Requisition."
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = List;
    SourceTable = Table50028;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Line No"; "Line No")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field("SSD Period"; "SSD Period")
                {
                }
                field("SSS Period"; "SSS Period")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Reorder Quantity"; "Reorder Quantity")
                {
                    DecimalPlaces = 1 : 1;
                }
                field("Qty On Order"; "Qty On Order")
                {
                }
                field("Stock On Hand"; "Stock On Hand")
                {
                }
                field("Qty On Sales Order"; "Qty On Sales Order")
                {
                }
                field("Ordered Qty"; "Ordered Qty")
                {
                }
                field("SOQ (Demand)"; "SOQ (Demand)")
                {
                }
                field("SOQ (Sales)"; "SOQ (Sales)")
                {
                }
                field("SOQ (Lost Sales)"; "SOQ (Lost Sales)")
                {
                }
                field(Supplier; Supplier)
                {
                }
                field("Ordered Date"; "Ordered Date")
                {
                }
                field("Other Specification"; "Other Specification")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field(Ordered; Ordered)
                {
                }
                field(Inventory; Inventory)
                {
                }
                field("MIP(Sales)"; "MIP(Sales)")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Lost Q'ty"; "Lost Q'ty")
                {
                }
                field("Ceilling Code"; "Ceilling Code")
                {
                }
                field("Abnormal Q'ty"; "Abnormal Q'ty")
                {
                }
                field("Average Sales"; "Average Sales")
                {
                }
                field("N - 1"; "N - 1")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 2"; "N - 2")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 3"; "N - 3")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 4"; "N - 4")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 5"; "N - 5")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 6"; "N - 6")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 7"; "N - 7")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 8"; "N - 8")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 9"; "N - 9")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 10"; "N - 10")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 11"; "N - 11")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("N - 12"; "N - 12")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Total Sales Last 12M"; "Total Sales Last 12M")
                {
                }
                field("Fr - 1"; "Fr - 1")
                {
                }
                field("Fr - 2"; "Fr - 2")
                {
                }
                field("Fr - 3"; "Fr - 3")
                {
                }
                field("Fr - 4"; "Fr - 4")
                {
                }
                field("Fr - 5"; "Fr - 5")
                {
                }
                field("Fr - 6"; "Fr - 6")
                {
                }
                field("Fr - 7"; "Fr - 7")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Fr - 8"; "Fr - 8")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Fr - 9"; "Fr - 9")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Fr - 10"; "Fr - 10")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Fr - 11"; "Fr - 11")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Fr - 12"; "Fr - 12")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("MIP(Demand)"; "MIP(Demand)")
                {
                }
                field("QD - 1"; "QD - 1")
                {

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 2"; "QD - 2")
                {

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 3"; "QD - 3")
                {

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 4"; "QD - 4")
                {

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 5"; "QD - 5")
                {

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 6"; "QD - 6")
                {

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 7"; "QD - 7")
                {
                    DecimalPlaces = 0 : 0;

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 8"; "QD - 8")
                {
                    DecimalPlaces = 0 : 0;

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 9"; "QD - 9")
                {
                    DecimalPlaces = 0 : 0;

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 10"; "QD - 10")
                {
                    DecimalPlaces = 0 : 0;

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 11"; "QD - 11")
                {
                    DecimalPlaces = 0 : 0;

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - 12"; "QD - 12")
                {
                    DecimalPlaces = 0 : 0;

                    trigger OnValidate()
                    begin
                        "QD - Total" := "QD - 1" + "QD - 2" + "QD - 3" + "QD - 4" + "QD - 5" + "QD - 6" + "QD - 7" + "QD - 8" + "QD - 9" + "QD - 10" + "QD - 11" + "QD - 12";
                    end;
                }
                field("QD - Total"; "QD - Total")
                {

                    trigger OnValidate()
                    begin
                        xRec."QD - Total" := xRec."QD - 1" + xRec."QD - 2" + xRec."QD - 3" + xRec."QD - 4" + xRec."QD - 5" + xRec."QD - 6";
                    end;
                }
                field("QS - 1"; "QS - 1")
                {
                }
                field("QS - 2"; "QS - 2")
                {
                }
                field("QS - 3"; "QS - 3")
                {
                }
                field("QS - 4"; "QS - 4")
                {
                }
                field("QS - 5"; "QS - 5")
                {
                }
                field("QS - 6"; "QS - 6")
                {
                }
                field("QS - 7"; "QS - 7")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("QS - 8"; "QS - 8")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("QS - 9"; "QS - 9")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("QS - 10"; "QS - 10")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("QS - 11"; "QS - 11")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("QS - 12"; "QS - 12")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("SOQ (Supplied)"; "SOQ (Supplied)")
                {
                }
                field("Average Supplied"; "Average Supplied")
                {
                }
                field("MIP(Supplied)"; "MIP(Supplied)")
                {
                }
                field("LQ - 1"; "LQ - 1")
                {
                }
                field("LQ - 2"; "LQ - 2")
                {
                }
                field("LQ - 3"; "LQ - 3")
                {
                }
                field("LQ - 4"; "LQ - 4")
                {
                }
                field("LQ - 5"; "LQ - 5")
                {
                }
                field("LQ - 6"; "LQ - 6")
                {
                }
                field("LQ - 7"; "LQ - 7")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("LQ - 8"; "LQ - 8")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("LQ - 9"; "LQ - 9")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("LQ - 10"; "LQ - 10")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("LQ - 11"; "LQ - 11")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("LQ - 12"; "LQ - 12")
                {
                    DecimalPlaces = 0 : 0;
                }
                field("Average Demand"; "Average Demand")
                {
                }
                field("Average Lost Sales"; "Average Lost Sales")
                {
                }
                field("Order BackGround"; "Order BackGround")
                {
                }
                field("Order No."; "Order No.")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Generate Purchase Order")
            {
                Caption = '&Generate Purchase Order';
                action("&Update Order Bases")
                {
                    Caption = '&Update Order Bases';

                    trigger OnAction()
                    begin
                        SwitchOrder;
                    end;
                }
                action("&Create Purchase Order")
                {
                    Caption = '&Create Purchase Order';

                    trigger OnAction()
                    begin
                        CreateOrder;
                    end;
                }
            }
        }
        area(processing)
        {
            action("&Branch Stock Management")
            {
                Caption = '&Branch Stock Management';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50179;
            }
            action("Update &Stock Record")
            {
                Caption = 'Update &Stock Record';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50140;
            }
            action("Generate &DOS for New Items")
            {
                Caption = 'Generate &DOS for New Items';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50122;
            }
        }
    }
}

