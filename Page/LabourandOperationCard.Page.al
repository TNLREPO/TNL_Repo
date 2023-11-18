page 70091 "Labour and Operation Card"
{
    Caption = 'Service Order';
    PageType = Document;
    PromotedActionCategories = 'New,Process,Report,Warehouse';
    RefreshOnActivate = true;
    SourceTable = Table5900;
    SourceTableView = WHERE (Document Type=FILTER(Order));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No.";"No.")
                {
                    Importance = Promoted;

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                          CurrPage.UPDATE;
                    end;
                }
                field(Description;Description)
                {
                }
                field("Customer No.";"Customer No.")
                {
                    Importance = Promoted;

                    trigger OnValidate()
                    begin
                        CustomerNoOnAfterValidate;
                    end;
                }
                field("Contact No.";"Contact No.")
                {

                    trigger OnValidate()
                    begin
                        IF GETFILTER("Contact No.") = xRec."Contact No." THEN
                          IF "Contact No." <> xRec."Contact No." THEN
                            SETRANGE("Contact No.");
                    end;
                }
                field(Name;Name)
                {
                }
                field(Address;Address)
                {
                }
                field("Address 2";"Address 2")
                {
                    Importance = Additional;
                }
                field("Post Code";"Post Code")
                {
                }
                field("Contact Name";"Contact Name")
                {
                }
                field("Phone No.";"Phone No.")
                {
                }
                field("E-Mail";"E-Mail")
                {
                }
                field("Posting Description";"Posting Description")
                {
                }
                field("Workshop Store Rq. No";"Workshop Store Rq. No")
                {
                }
                field("Prices Including VAT";"Prices Including VAT")
                {
                }
                field(City;City)
                {
                }
                field("Phone No. 2";"Phone No. 2")
                {
                    Importance = Additional;
                }
                field("Notify Customer";"Notify Customer")
                {
                    Importance = Additional;
                }
                field("Service Order Type";"Service Order Type")
                {
                }
                field("Contract No.";"Contract No.")
                {
                }
                field("Response Date";"Response Date")
                {
                    Importance = Promoted;
                }
                field("Response Time";"Response Time")
                {
                }
                field(Priority;Priority)
                {
                    Importance = Promoted;
                }
                field(Status;Status)
                {
                }
                field("Responsibility Center";"Responsibility Center")
                {
                    Importance = Additional;
                }
                field("Assigned User ID";"Assigned User ID")
                {
                    Importance = Additional;
                }
                field("Release Status";"Release Status")
                {
                    Importance = Promoted;
                }
            }
            part(ServItemLines;5902)
            {
                SubPageLink = Document No.=FIELD(No.);
            }
            part(ServiceLine;70092)
            {
                SubPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(No.);
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Bill-to Customer No.";"Bill-to Customer No.")
                {
                    Importance = Promoted;

                    trigger OnValidate()
                    begin
                        BilltoCustomerNoOnAfterValidat;
                    end;
                }
                field("Bill-to Contact No.";"Bill-to Contact No.")
                {
                }
                field("Bill-to Name";"Bill-to Name")
                {
                }
                field("Bill-to Address";"Bill-to Address")
                {
                }
                field("Bill-to Address 2";"Bill-to Address 2")
                {
                    Importance = Additional;
                }
                field("Bill-to Post Code";"Bill-to Post Code")
                {
                }
                field("Bill-to City";"Bill-to City")
                {
                }
                field("Bill-to Contact";"Bill-to Contact")
                {
                }
                field("Your Reference";"Your Reference")
                {
                    Importance = Additional;
                }
                field("Salesperson Code";"Salesperson Code")
                {
                }
                field("Max. Labor Unit Price";"Max. Labor Unit Price")
                {
                    Importance = Additional;

                    trigger OnValidate()
                    begin
                        MaxLaborUnitPriceOnAfterValida;
                    end;
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Document Date";"Document Date")
                {
                }
                field("Shortcut Dimension 1 Code";"Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code";"Shortcut Dimension 2 Code")
                {
                }
                field("Payment Terms Code";"Payment Terms Code")
                {
                    Importance = Promoted;
                }
                field("Due Date";"Due Date")
                {
                    Importance = Promoted;
                }
                field("Payment Discount %";"Payment Discount %")
                {
                }
                field("Pmt. Discount Date";"Pmt. Discount Date")
                {
                }
                field("Payment Method Code";"Payment Method Code")
                {
                }
                field("VAT Bus. Posting Group";"VAT Bus. Posting Group")
                {
                }
            }
            group(Shipping)
            {
                Caption = 'Shipping';
                field("Ship-to Code";"Ship-to Code")
                {
                    Importance = Promoted;

                    trigger OnValidate()
                    begin
                        ShiptoCodeOnAfterValidate;
                    end;
                }
                field("Ship-to Name";"Ship-to Name")
                {
                }
                field("Ship-to Address";"Ship-to Address")
                {
                }
                field("Ship-to Address 2";"Ship-to Address 2")
                {
                    Importance = Additional;
                }
                field("Ship-to Post Code";"Ship-to Post Code")
                {
                    Importance = Promoted;
                }
                field("Ship-to City";"Ship-to City")
                {
                }
                field("Ship-to Contact";"Ship-to Contact")
                {
                    Importance = Promoted;
                }
                field("Ship-to Phone";"Ship-to Phone")
                {
                    Caption = 'Ship-to Phone';
                }
                field("Ship-to Phone 2";"Ship-to Phone 2")
                {
                    Importance = Additional;
                }
                field("Ship-to E-Mail";"Ship-to E-Mail")
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field("Shipping Advice";"Shipping Advice")
                {
                }
                field("Shipment Method Code";"Shipment Method Code")
                {
                }
                field("Shipping Agent Code";"Shipping Agent Code")
                {
                }
                field("Shipping Agent Service Code";"Shipping Agent Service Code")
                {
                }
                field("Shipping Time";"Shipping Time")
                {
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field("Warning Status";"Warning Status")
                {
                    Importance = Promoted;
                }
                field("Link Service to Service Item";"Link Service to Service Item")
                {
                }
                field("Allocated Hours";"Allocated Hours")
                {
                }
                field("No. of Allocations";"No. of Allocations")
                {
                }
                field("No. of Unallocated Items";"No. of Unallocated Items")
                {
                }
                field("Service Zone Code";"Service Zone Code")
                {
                }
                field("Order Date";"Order Date")
                {

                    trigger OnValidate()
                    begin
                        OrderDateOnAfterValidate;
                    end;
                }
                field("Order Time";"Order Time")
                {

                    trigger OnValidate()
                    begin
                        OrderTimeOnAfterValidate;
                    end;
                }
                field("Expected Finishing Date";"Expected Finishing Date")
                {
                }
                field("Starting Date";"Starting Date")
                {
                    Importance = Promoted;
                }
                field("Starting Time";"Starting Time")
                {
                }
                field("Actual Response Time (Hours)";"Actual Response Time (Hours)")
                {
                }
                field("Finishing Date";"Finishing Date")
                {
                }
                field("Finishing Time";"Finishing Time")
                {

                    trigger OnValidate()
                    begin
                        FinishingTimeOnAfterValidate;
                    end;
                }
                field("Service Time (Hours)";"Service Time (Hours)")
                {
                }
            }
            group("Foreign Trade")
            {
                Caption = 'Foreign Trade';
                field("Currency Code";"Currency Code")
                {
                    Importance = Promoted;

                    trigger OnAssistEdit()
                    begin
                        CLEAR(ChangeExchangeRate);
                        ChangeExchangeRate.SetParameter("Currency Code","Currency Factor","Posting Date");
                        IF ChangeExchangeRate.RUNMODAL = ACTION::OK THEN BEGIN
                          VALIDATE("Currency Factor",ChangeExchangeRate.GetParameter);
                          CurrPage.UPDATE;
                        END;
                        CLEAR(ChangeExchangeRate);
                    end;
                }
                field("EU 3-Party Trade";"EU 3-Party Trade")
                {
                }
                field("Transaction Type";"Transaction Type")
                {
                }
                field("Transaction Specification";"Transaction Specification")
                {
                }
                field("Transport Method";"Transport Method")
                {
                }
                field("Exit Point";"Exit Point")
                {
                }
                field(Area;Area)
                {
                }
            }
            group("Vehicle Details")
            {
                Caption = 'Vehicle Details';
                field("User ID";"User ID")
                {
                }
                field("Vehicle Registration No.";"Vehicle Registration No.")
                {
                }
                field(Model;Model)
                {
                }
                field(Chassis;Chassis)
                {
                }
                field("Engine No.";"Engine No.")
                {
                }
                field("Odometer Reading Reception";"Odometer Reading Reception")
                {
                }
                field("Reception Date";"Reception Date")
                {
                }
                field("Reception Time";"Reception Time")
                {
                }
                field("Delivery Date";"Delivery Date")
                {
                }
                field("Delivery Time";"Delivery Time")
                {
                }
                field("Customer's Requests";"Customer's Requests")
                {
                }
                field(PM;PM)
                {
                }
                field(GR;GR)
                {
                }
                field(Others;Others)
                {
                }
                field(Warranty;Warranty)
                {
                }
                field(Internal;Internal)
                {
                }
                field("D/Estimate";"D/Estimate")
                {
                }
                field("B&P";"B&P")
                {
                }
                field("B&P Estimate";"B&P Estimate")
                {
                }
                field(Painting;Painting)
                {
                }
            }
        }
        area(factboxes)
        {
            part(;9082)
            {
                SubPageLink = No.=FIELD(Bill-to Customer No.);
                Visible = false;
            }
            part(;9084)
            {
                SubPageLink = No.=FIELD(Customer No.);
                Visible = false;
            }
            part(;9085)
            {
                SubPageLink = No.=FIELD(Customer No.);
                Visible = true;
            }
            part(;9086)
            {
                SubPageLink = No.=FIELD(Bill-to Customer No.);
                Visible = false;
            }
            part(;9088)
            {
                Provider = ServItemLines;
                SubPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(Document No.),
                              Line No.=FIELD(Line No.);
                Visible = true;
            }
            systempart(;Links)
            {
                Visible = false;
            }
            systempart(;Notes)
            {
                Visible = true;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("O&rder")
            {
                Caption = 'O&rder';
                Image = "Order";
                separator()
                {
                }
                action("Demand Overview")
                {
                    Caption = 'Demand Overview';
                    Image = Forecast;

                    trigger OnAction()
                    var
                        DemandOverview: Page "5830";
                    begin
                        DemandOverview.SetCalculationParameter(TRUE);
                        DemandOverview.Initialize(0D,4,"No.",'','');
                        DemandOverview.RUNMODAL;
                    end;
                }
                separator()
                {
                }
                action("<Action7>")
                {
                    AccessByPermission = TableData 99000880=R;
                    Caption = 'Order Promising';
                    Image = OrderPromising;

                    trigger OnAction()
                    var
                        OrderPromisingLine: Record "99000880";
                        OrderPromisingLines: Page "99000959";
                    begin
                        CLEAR(OrderPromisingLines);
                        OrderPromisingLines.SetSourceType(12); // Service order
                        CLEAR(OrderPromisingLine);
                        OrderPromisingLine.SETRANGE("Source Type",OrderPromisingLine."Source Type"::"Service Order");
                        OrderPromisingLine.SETRANGE("Source ID","No.");
                        OrderPromisingLines.SETTABLEVIEW(OrderPromisingLine);
                        OrderPromisingLines.RUNMODAL;
                    end;
                }
                separator()
                {
                    Caption = '';
                }
                action("&Customer Card")
                {
                    Caption = '&Customer Card';
                    Image = Customer;
                    RunObject = Page 21;
                                    RunPageLink = No.=FIELD(Customer No.);
                    ShortCutKey = 'Shift+F7';
                }
                action("&Dimensions")
                {
                    AccessByPermission = TableData 348=R;
                    Caption = '&Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

                    trigger OnAction()
                    begin
                        ShowDocDim;
                    end;
                }
                separator()
                {
                    Caption = '';
                }
                action("Service Document Lo&g")
                {
                    Caption = 'Service Document Lo&g';
                    Image = Log;

                    trigger OnAction()
                    var
                        ServDocLog: Record "5912";
                    begin
                        ServDocLog.ShowServDocLog(Rec);
                    end;
                }
                action("E-Mail &Queue")
                {
                    Caption = 'E-Mail &Queue';
                    Image = Email;
                    RunObject = Page 5961;
                                    RunPageLink = Document Type=CONST(Service Order),
                                  Document No.=FIELD(No.);
                    RunPageView = SORTING(Document Type,Document No.);
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page 5911;
                                    RunPageLink = Table Name=CONST(Service Header),
                                  Table Subtype=FIELD(Document Type),
                                  No.=FIELD(No.),
                                  Type=CONST(General);
                }
            }
            group("<Action36>")
            {
                Caption = 'Statistics';
                Image = Statistics;
                separator()
                {
                    Caption = '';
                }
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'F7';

                    trigger OnAction()
                    var
                        SalesSetup: Record "311";
                        ServLine: Record "5902";
                        ServLines: Page "5905";
                    begin
                        SalesSetup.GET;
                        IF SalesSetup."Calc. Inv. Discount" THEN BEGIN
                          ServLine.RESET;
                          ServLine.SETRANGE("Document Type","Document Type");
                          ServLine.SETRANGE("Document No.","No.");
                          IF ServLine.FINDFIRST THEN BEGIN
                            ServLines.SETTABLEVIEW(ServLine);
                            ServLines.CalcInvDisc(ServLine);
                            COMMIT
                          END;
                        END;
                        PAGE.RUNMODAL(PAGE::"Service Order Statistics",Rec);
                    end;
                }
                separator()
                {
                    Caption = '';
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = Documents;
                action("S&hipments")
                {
                    Caption = 'S&hipments';
                    Image = Shipment;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page 5974;
                                    RunPageLink = Order No.=FIELD(No.);
                    RunPageView = SORTING(Order No.);
                }
                action(Invoices)
                {
                    Caption = 'Invoices';
                    Image = Invoice;
                    RunObject = Page 5977;
                                    RunPageLink = Order No.=FIELD(No.);
                    RunPageView = SORTING(Order No.);
                }
            }
            group("W&arehouse")
            {
                Caption = 'W&arehouse';
                Image = Warehouse;
                action("Whse. Shipment Lines")
                {
                    Caption = 'Whse. Shipment Lines';
                    Image = ShipmentLines;
                    Promoted = true;
                    PromotedCategory = Category4;
                    RunObject = Page 7341;
                                    RunPageLink = Source Type=CONST(5902),
                                  Source Subtype=FIELD(Document Type),
                                  Source No.=FIELD(No.);
                    RunPageView = SORTING(Source Type,Source Subtype,Source No.,Source Line No.);
                }
            }
            group(History)
            {
                Caption = 'History';
                Image = History;
                action("Service Ledger E&ntries")
                {
                    Caption = 'Service Ledger E&ntries';
                    Image = ServiceLedger;
                    RunObject = Page 5912;
                                    RunPageLink = Service Order No.=FIELD(No.);
                    RunPageView = SORTING(Service Order No.,Service Item No. (Serviced),Entry Type,Moved from Prepaid Acc.,Posting Date,Open,Type);
                    ShortCutKey = 'Ctrl+F7';
                }
                action("&Warranty Ledger Entries")
                {
                    Caption = '&Warranty Ledger Entries';
                    Image = WarrantyLedger;
                    RunObject = Page 5913;
                                    RunPageLink = Service Order No.=FIELD(No.);
                    RunPageView = SORTING(Service Order No.,Posting Date,Document No.);
                }
                action("&Job Ledger Entries")
                {
                    Caption = '&Job Ledger Entries';
                    Image = JobLedger;
                    RunObject = Page 92;
                                    RunPageLink = Service Order No.=FIELD(No.);
                    RunPageView = SORTING(Service Order No.,Posting Date)
                                  WHERE(Entry Type=CONST(Usage));
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("Create Customer")
                {
                    Caption = '&Create Customer';
                    Image = NewCustomer;

                    trigger OnAction()
                    begin
                        CLEAR(ServOrderMgt);
                        ServOrderMgt.CreateNewCustomer(Rec);
                        CurrPage.UPDATE(TRUE);
                    end;
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                Image = Post;
                action(TestReport)
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;

                    trigger OnAction()
                    var
                        ReportPrint: Codeunit "228";
                    begin
                        ReportPrint.PrintServiceHeader(Rec);
                    end;
                }
                action(Post)
                {
                    Caption = 'P&ost';
                    Ellipsis = true;
                    Image = PostOrder;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';

                    trigger OnAction()
                    var
                        ServPostYesNo: Codeunit "5981";
                    begin
                        ServHeader.GET("Document Type","No.");
                        ServPostYesNo.PostDocument(ServHeader);
                    end;
                }
                action("Post and &Print")
                {
                    Caption = 'Post and &Print';
                    Ellipsis = true;
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+F9';

                    trigger OnAction()
                    var
                        ServPostPrint: Codeunit "5982";
                    begin
                        ServHeader.GET("Document Type","No.");
                        ServPostPrint.PostDocument(ServHeader);
                    end;
                }
                action("Post &Batch")
                {
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;

                    trigger OnAction()
                    begin
                        CLEAR(ServHeader);
                        ServHeader.SETRANGE(Status,ServHeader.Status::Finished);
                        REPORT.RUNMODAL(REPORT::"Batch Post Service Orders",TRUE,TRUE,ServHeader);
                        CurrPage.UPDATE(FALSE);
                    end;
                }
                action("Parts Picking List")
                {
                    Caption = 'Parts Picking List';
                    Image = "Report";

                    trigger OnAction()
                    var
                        ServiceHeader: Record "5900";
                        PickingList: Report "50097";
                    begin
                        ServHeader.SETRANGE(ServHeader."No.","No.");
                        ServHeader.FINDFIRST;
                        PickingList.SETTABLEVIEW(ServiceHeader);
                        PickingList.RUN;
                    end;
                }
            }
            action("&Print")
            {
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    DocPrint: Codeunit "229";
                begin
                    CurrPage.UPDATE(TRUE);
                    DocPrint.PrintServiceHeader(Rec);
                end;
            }
        }
    }

    trigger OnDeleteRecord(): Boolean
    begin
        CurrPage.SAVERECORD;
        CLEAR(ServLogMgt);
        ServLogMgt.ServHeaderManualDelete(Rec);
        EXIT(ConfirmDeletion);
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Document Type" := "Document Type"::Order;
        "Responsibility Center" := UserMgt.GetServiceFilter;
    end;

    trigger OnOpenPage()
    begin
        IF UserMgt.GetServiceFilter <> '' THEN BEGIN
          FILTERGROUP(2);
          SETRANGE("Responsibility Center",UserMgt.GetServiceFilter);
          FILTERGROUP(0);
        END;
    end;

    var
        ServHeader: Record "5900";
        ChangeExchangeRate: Page "511";
                                ServOrderMgt: Codeunit "5900";
                                ServLogMgt: Codeunit "5906";
                                UserMgt: Codeunit "5700";

    local procedure CustomerNoOnAfterValidate()
    begin
        IF GETFILTER("Customer No.") = xRec."Customer No." THEN
            IF "Customer No." <> xRec."Customer No." THEN
                SETRANGE("Customer No.");
        CurrPage.UPDATE;
    end;

    local procedure BilltoCustomerNoOnAfterValidat()
    begin
        CurrPage.UPDATE;
    end;

    local procedure MaxLaborUnitPriceOnAfterValida()
    begin
        CurrPage.SAVERECORD;
    end;

    local procedure PricesIncludingVATOnAfterValid()
    begin
        CurrPage.UPDATE;
    end;

    local procedure ShiptoCodeOnAfterValidate()
    begin
        CurrPage.UPDATE;
    end;

    local procedure OrderTimeOnAfterValidate()
    begin
        UpdateResponseDateTime;
        CurrPage.UPDATE;
    end;

    local procedure OrderDateOnAfterValidate()
    begin
        UpdateResponseDateTime;
        CurrPage.UPDATE;
    end;

    local procedure FinishingTimeOnAfterValidate()
    begin
        CurrPage.UPDATE(TRUE);
    end;
}

