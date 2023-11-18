page 70123 "Sales Order TCSC"
{
    Caption = 'Sales Order';
    PageType = Document;
    RefreshOnActivate = true;
    SourceTable = Table36;
    SourceTableView = WHERE (Document Type=FILTER(Order),
                            Location Code=CONST(120ISO));

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
                    Visible = DocNoVisible;

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                          CurrPage.UPDATE;
                    end;
                }
                field("Sell-to Customer No.";"Sell-to Customer No.")
                {
                    Importance = Promoted;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        //SelltoCustomerNoOnAfterValidat;
                    end;
                }
                field("Sell-to Contact No.";"Sell-to Contact No.")
                {
                    Importance = Additional;

                    trigger OnValidate()
                    begin
                        IF GETFILTER("Sell-to Contact No.") = xRec."Sell-to Contact No." THEN
                          IF "Sell-to Contact No." <> xRec."Sell-to Contact No." THEN
                            SETRANGE("Sell-to Contact No.");
                    end;
                }
                field("Sell-to Customer Name";"Sell-to Customer Name")
                {
                    QuickEntry = false;
                }
                field("Sell-to Address";"Sell-to Address")
                {
                    Importance = Additional;
                }
                field("Sell-to Address 2";"Sell-to Address 2")
                {
                    Importance = Additional;
                }
                field("Order Date";"Order Date")
                {
                    Importance = Promoted;
                    QuickEntry = false;
                }
                field("Salesperson Code";"Salesperson Code")
                {
                    QuickEntry = false;

                    trigger OnValidate()
                    begin
                        SalespersonCodeOnAfterValidate;
                    end;
                }
                field("Assigned User ID";"Assigned User ID")
                {
                    Importance = Additional;
                }
                field("Order Type";"Order Type")
                {
                }
                field("No. Printed";"No. Printed")
                {
                }
            }
            part(SalesLines;46)
            {
                Editable = DynamicEditable;
                SubPageLink = Document No.=FIELD(No.);
            }
            group(Approval)
            {
                field("1st Approval to";"1st Approval to")
                {
                    Caption = 'To';

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IF "Shortcut Dimension 1 Code" = '09MARKET' THEN BEGIN
                          UserSetup.SETFILTER("User ID",'%1|%2|%3|%4','TOYOTANIGERIA\AJUYAH','TOYOTANIGERIA\BAYO','TOYOTANIGERIA\OLAKUNLE','TOYOTANIGERIA\OLUKOYA');
                          IF PAGE.RUNMODAL(0,UserSetup) = ACTION::LookupOK THEN
                            "1st Approval to"  := UserSetup."User ID";
                            "1st Approver" := UserSetup.Name;
                            UserSetup.TESTFIELD("Sales Line Approval",TRUE);

                        END;

                        IF ("Shortcut Dimension 1 Code" = '05PARTS') OR ("Shortcut Dimension 1 Code" = '') THEN BEGIN
                          UserSetup.SETFILTER("User ID",'%1|%2|%3|%4|%5|%6|%7|%8|%9',
                          'TOYOTANIGERIA\AKINDELE','TOYOTANIGERIA\RAVINDER','TOYOTANIGERIA\MOSES','TOYOTANIGERIA\CULTHBERT','TOYOTANIGERIA\BAYONLE','TOYOTANIGERIA\akeem', 'TOYOTANIGERIA\MERCY','TOYOTANIGERIA\ADE','CODEWARE-1\CODEWARE-PC1');
                          IF PAGE.RUNMODAL(0,UserSetup) = ACTION::LookupOK THEN
                            "1st Approval to"  := UserSetup."User ID";
                            "1st Approver" := UserSetup.Name;
                        END;
                    end;
                }
                field("1st Approver";"1st Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("Send for Approval";"Send for Approval")
                {
                }
                field(Sender;Sender)
                {
                    Editable = false;
                }
                field("Sent Time";"Sent Time")
                {
                    Editable = false;
                }
                field(Approved;Approved)
                {

                    trigger OnValidate()
                    begin
                        IF ("Shortcut Dimension 1 Code" = '05PARTS') OR ("Shortcut Dimension 1 Code" = '')THEN
                         EXIT;

                        UserRec2.GET(USERID);
                        IF UserRec2."Sales Line Approval" = FALSE THEN
                        ERROR('You dont have the right to approve this order');
                        SalesLine.SETCURRENTKEY("Document No.","No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                             //SaleLineDiscount.GET(SalesLine."No.");
                             SaleLineDiscount.SETCURRENTKEY(Code);
                             SaleLineDiscount.SETRANGE(Code,SalesLine."No.");
                             SaleLineDiscount.FINDFIRST;

                           IF SalesLine."Line Discount %" > SaleLineDiscount."Line Discount %"  THEN
                                UserRec2.TESTFIELD("Sales Line Limit",TRUE) ;
                          UNTIL SalesLine.NEXT = 0;
                         END;
                    end;
                }
                field("Approved Time";"Approved Time")
                {
                    Editable = false;
                }
                field("Approved By";"Approved By")
                {
                    Editable = false;
                }
            }
            group("Marketing Approval")
            {
                field("Logistics Send to";"Logistics Send to")
                {
                    Caption = 'Send to';
                }
                field("Logistics Sender";"Logistics Sender")
                {
                    Caption = 'Sender';
                    Editable = false;
                }
                field("Logistics Sent Time";"Logistics Sent Time")
                {
                    Caption = 'Sent Time';
                    Editable = false;
                }
                field("Logistics Apprv Status";"Logistics Apprv Status")
                {
                }
                field("Logistics Approved By";"Logistics Approved By")
                {
                    Editable = false;
                }
                field("Logistics Approved Time";"Logistics Approved Time")
                {
                    Editable = false;
                }
            }
            group("Logistics Approval")
            {
                field("Finance Send to";"Finance Send to")
                {
                    Caption = 'Send to';
                }
                field("Finance Apprv Status";"Finance Apprv Status")
                {
                }
                field("Finance Approved By";"Finance Approved By")
                {
                    Editable = false;
                }
                field("Finance Approved Time";"Finance Approved Time")
                {
                    Editable = false;
                }
            }
            group("Finance Approval")
            {
                field("Marketing Send To";"Marketing Send To")
                {
                    Caption = 'Send To';
                }
                field("Marketing Apprv Status";"Marketing Apprv Status")
                {
                }
                field("Marketing Approved By";"Marketing Approved By")
                {
                    Editable = false;
                }
                field("Marketing Approved Time";"Marketing Approved Time")
                {
                    Editable = false;
                }
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
                    Importance = Additional;
                }
                field("Bill-to Name";"Bill-to Name")
                {
                }
                field("Bill-to Address";"Bill-to Address")
                {
                    Importance = Additional;
                }
                field("Bill-to Address 2";"Bill-to Address 2")
                {
                    Importance = Additional;
                }
                field("Bill-to Post Code";"Bill-to Post Code")
                {
                    Importance = Additional;
                }
                field("Bill-to City";"Bill-to City")
                {
                }
                field("Bill-to Contact";"Bill-to Contact")
                {
                    Importance = Additional;
                }
                field("Shortcut Dimension 1 Code";"Shortcut Dimension 1 Code")
                {

                    trigger OnValidate()
                    begin
                        ShortcutDimension1CodeOnAfterV;
                    end;
                }
                field("Shortcut Dimension 2 Code";"Shortcut Dimension 2 Code")
                {

                    trigger OnValidate()
                    begin
                        ShortcutDimension2CodeOnAfterV;
                    end;
                }
                field("Payment Terms Code";"Payment Terms Code")
                {
                    Editable = false;
                    Importance = Promoted;
                }
                field("Due Date";"Due Date")
                {
                    Editable = false;
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
                field("Direct Debit Mandate ID";"Direct Debit Mandate ID")
                {
                }
                field("Prices Including VAT";"Prices Including VAT")
                {

                    trigger OnValidate()
                    begin
                        PricesIncludingVATOnAfterValid;
                    end;
                }
                field("VAT Bus. Posting Group";"VAT Bus. Posting Group")
                {
                }
                label()
                {
                }
                label("Cr. Card Number (Last 4 Digits)")
                {
                    Caption = 'Cr. Card Number (Last 4 Digits)';
                }
            }
            group(Shipping)
            {
                Caption = 'Shipping';
                field("Ship-to Code";"Ship-to Code")
                {
                    Importance = Promoted;
                }
                field("Ship-to Name";"Ship-to Name")
                {
                }
                field("Ship-to Address";"Ship-to Address")
                {
                    Importance = Additional;
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
                    Importance = Additional;
                }
                field("Location Code";"Location Code")
                {
                }
                field("Outbound Whse. Handling Time";"Outbound Whse. Handling Time")
                {
                    Importance = Additional;
                }
                field("Shipment Method Code";"Shipment Method Code")
                {
                }
                field("Shipping Agent Code";"Shipping Agent Code")
                {
                    Importance = Additional;
                }
                field("Shipping Agent Service Code";"Shipping Agent Service Code")
                {
                    Importance = Additional;
                }
                field("Shipping Time";"Shipping Time")
                {
                }
                field("Late Order Shipping";"Late Order Shipping")
                {
                    Importance = Additional;
                }
                field("Package Tracking No.";"Package Tracking No.")
                {
                    Importance = Additional;
                }
                field("Shipment Date";"Shipment Date")
                {
                    Importance = Promoted;
                }
                field("Shipping Advice";"Shipping Advice")
                {
                    Importance = Promoted;

                    trigger OnValidate()
                    begin
                        IF "Shipping Advice" <> xRec."Shipping Advice" THEN
                          IF NOT CONFIRM(Text001,FALSE,FIELDCAPTION("Shipping Advice")) THEN
                            ERROR(Text002);
                    end;
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
                        IF "Posting Date" <> 0D THEN
                          ChangeExchangeRate.SetParameter("Currency Code","Currency Factor","Posting Date")
                        ELSE
                          ChangeExchangeRate.SetParameter("Currency Code","Currency Factor",WORKDATE);
                        IF ChangeExchangeRate.RUNMODAL = ACTION::OK THEN BEGIN
                          VALIDATE("Currency Factor",ChangeExchangeRate.GetParameter);
                          CurrPage.UPDATE;
                        END;
                        CLEAR(ChangeExchangeRate);
                    end;

                    trigger OnValidate()
                    begin
                        CurrPage.UPDATE;
                        SalesCalcDiscountByType.ApplyDefaultInvoiceDiscount(0,Rec);
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
            group(Prepayment)
            {
                Caption = 'Prepayment';
                field("Prepayment %";"Prepayment %")
                {
                    Importance = Promoted;
                }
                field("Compress Prepayment";"Compress Prepayment")
                {
                }
                field("Prepmt. Payment Terms Code";"Prepmt. Payment Terms Code")
                {
                }
                field("Prepayment Due Date";"Prepayment Due Date")
                {
                    Importance = Promoted;
                }
                field("Prepmt. Payment Discount %";"Prepmt. Payment Discount %")
                {
                }
                field("Prepmt. Pmt. Discount Date";"Prepmt. Pmt. Discount Date")
                {
                }
            }
        }
        area(factboxes)
        {
            part(;9080)
            {
                SubPageLink = No.=FIELD(Sell-to Customer No.);
                Visible = true;
            }
            part(;9082)
            {
                SubPageLink = No.=FIELD(Bill-to Customer No.);
                Visible = false;
            }
            part(;9084)
            {
                SubPageLink = No.=FIELD(Sell-to Customer No.);
                Visible = false;
            }
            part(;9087)
            {
                Provider = SalesLines;
                SubPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(Document No.),
                              Line No.=FIELD(Line No.);
                Visible = true;
            }
            part(;9089)
            {
                Provider = SalesLines;
                SubPageLink = No.=FIELD(No.);
                Visible = false;
            }
            part(;9092)
            {
                SubPageLink = Table ID=CONST(36),
                              Document Type=FIELD(Document Type),
                              Document No.=FIELD(No.);
                Visible = false;
            }
            part(;9108)
            {
                Provider = SalesLines;
                SubPageLink = No.=FIELD(No.);
                Visible = false;
            }
            part(;9109)
            {
                Provider = SalesLines;
                SubPageLink = No.=FIELD(No.);
                Visible = false;
            }
            part(;9081)
            {
                SubPageLink = No.=FIELD(Bill-to Customer No.);
                Visible = false;
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
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'F7';

                    trigger OnAction()
                    begin
                        OpenSalesOrderStatistics;
                        SalesCalcDiscountByType.ResetRecalculateInvoiceDisc(Rec);
                    end;
                }
                action("Isolo Statistics")
                {
                    Caption = 'Isolo Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        OpenSalesOrderStatistics2;
                        SalesCalcDiscountByType.ResetRecalculateInvoiceDisc(Rec);
                    end;
                }
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page 21;
                                    RunPageLink = No.=FIELD(Sell-to Customer No.);
                    ShortCutKey = 'Shift+F7';
                }
                action(Dimensions)
                {
                    AccessByPermission = TableData 348=R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

                    trigger OnAction()
                    begin
                        ShowDocDim;
                        CurrPage.SAVERECORD;
                    end;
                }
                action("A&pprovals")
                {
                    Caption = 'A&pprovals';
                    Image = Approvals;

                    trigger OnAction()
                    var
                        ApprovalEntries: Page "658";
                    begin
                        ApprovalEntries.Setfilters(DATABASE::"Sales Header","Document Type","No.");
                        ApprovalEntries.RUN;
                    end;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page 67;
                                    RunPageLink = Document Type=FIELD(Document Type),
                                  No.=FIELD(No.),
                                  Document Line No.=CONST(0);
                }
                action("Assembly Orders")
                {
                    AccessByPermission = TableData 90=R;
                    Caption = 'Assembly Orders';
                    Image = AssemblyOrder;

                    trigger OnAction()
                    var
                        AssembleToOrderLink: Record "904";
                    begin
                        AssembleToOrderLink.ShowAsmOrders(Rec);
                    end;
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
                    RunObject = Page 142;
                                    RunPageLink = Order No.=FIELD(No.);
                    RunPageView = SORTING(Order No.);
                }
                action(Invoices)
                {
                    Caption = 'Invoices';
                    Image = Invoice;
                    RunObject = Page 143;
                                    RunPageLink = Order No.=FIELD(No.);
                    RunPageView = SORTING(Order No.);
                }
                action(FIFO)
                {
                    Caption = 'FIFO';
                    RunObject = Page 50381;
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("In&vt. Put-away/Pick Lines")
                {
                    Caption = 'In&vt. Put-away/Pick Lines';
                    Image = PickLines;
                    RunObject = Page 5774;
                                    RunPageLink = Source Document=CONST(Sales Order),
                                  Source No.=FIELD(No.);
                    RunPageView = SORTING(Source Document,Source No.,Location Code);
                }
                action("Whse. Shipment Lines")
                {
                    Caption = 'Whse. Shipment Lines';
                    Image = ShipmentLines;
                    RunObject = Page 7341;
                                    RunPageLink = Source Type=CONST(37),
                                  Source Subtype=FIELD(Document Type),
                                  Source No.=FIELD(No.);
                    RunPageView = SORTING(Source Type,Source Subtype,Source No.,Source Line No.);
                }
            }
            group(Prepayment)
            {
                Caption = 'Prepayment';
                Image = Prepayment;
                action("Prepa&yment Invoices")
                {
                    Caption = 'Prepa&yment Invoices';
                    Image = PrepaymentInvoice;
                    RunObject = Page 143;
                                    RunPageLink = Prepayment Order No.=FIELD(No.);
                    RunPageView = SORTING(Prepayment Order No.);
                }
                action("Prepayment Credi&t Memos")
                {
                    Caption = 'Prepayment Credi&t Memos';
                    Image = PrepaymentCreditMemo;
                    RunObject = Page 144;
                                    RunPageLink = Prepayment Order No.=FIELD(No.);
                    RunPageView = SORTING(Prepayment Order No.);
                }
            }
        }
        area(processing)
        {
            group(Release)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                action(Release)
                {
                    Caption = 'Re&lease';
                    Image = ReleaseDoc;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'Ctrl+F9';

                    trigger OnAction()
                    var
                        ReleaseSalesDoc: Codeunit "414";
                    begin
                        ReleaseSalesDoc.PerformManualRelease(Rec);
                    end;
                }
                action("Re&open")
                {
                    Caption = 'Re&open';
                    Image = ReOpen;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        ReleaseSalesDoc: Codeunit "414";
                    begin
                        ReleaseSalesDoc.PerformManualReopen(Rec);
                    end;
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("Add Markup")
                {
                    Caption = 'Add Markup';
                    Ellipsis = true;
                    Image = "Add Markup";
                    Promoted = true;

                    trigger OnAction()
                    begin

                        SalesLine.SETRANGE(SalesLine."Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                            IF ItemRec.GET(SalesLine."No.") THEN
                              IF (ItemRec."Inventory Posting Group" = 'N_PARTCONS') OR
                              (ItemRec."Inventory Posting Group" = 'N_PARTS') THEN BEGIN
                            //SalesLine.VALIDATE(SalesLine."No.");
                            SalesLine.VALIDATE("Unit Price", 1.6 * SalesLine."Unit Cost");
                            SalesLine.MODIFY;
                            END;
                          UNTIL SalesLine.NEXT = 0;
                        END;

                        SalesLine.SETRANGE(SalesLine."Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                            IF SalesLine."No." = 'SUBLET' THEN BEGIN
                            SalesLine.VALIDATE("Unit Price", 1.25 * SalesLine."Unit Price");
                            SalesLine.MODIFY;
                            END;
                          UNTIL SalesLine.NEXT = 0;
                        END;

                        MESSAGE('Price has been updated!');
                    end;
                }
                action(CalculateInvoiceDiscount)
                {
                    Caption = 'Calculate &Invoice Discount';
                    Image = CalculateInvoiceDiscount;

                    trigger OnAction()
                    begin
                        ApproveCalcInvDisc;
                        SalesCalcDiscountByType.ResetRecalculateInvoiceDisc(Rec);
                    end;
                }
                action("Get St&d. Cust. Sales Codes")
                {
                    Caption = 'Get St&d. Cust. Sales Codes';
                    Ellipsis = true;
                    Image = CustomerCode;

                    trigger OnAction()
                    var
                        StdCustSalesCode: Record "172";
                    begin
                        StdCustSalesCode.InsertSalesLines(Rec);
                    end;
                }
                action(CopyDocument)
                {
                    Caption = 'Copy Document';
                    Ellipsis = true;
                    Image = CopyDocument;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        CopySalesDoc.SetSalesHeader(Rec);
                        CopySalesDoc.RUNMODAL;
                        CLEAR(CopySalesDoc);
                    end;
                }
                action("Move Negative Lines")
                {
                    Caption = 'Move Negative Lines';
                    Ellipsis = true;
                    Image = MoveNegativeLines;

                    trigger OnAction()
                    begin
                        CLEAR(MoveNegSalesLines);
                        MoveNegSalesLines.SetSalesHeader(Rec);
                        MoveNegSalesLines.RUNMODAL;
                        MoveNegSalesLines.ShowDocument;
                    end;
                }
                action("Archive Document")
                {
                    Caption = 'Archi&ve Document';
                    Image = Archive;

                    trigger OnAction()
                    begin
                        ArchiveManagement.ArchiveSalesDocument(Rec);
                        CurrPage.UPDATE(FALSE);
                    end;
                }
            }
            group(Plan)
            {
                Caption = 'Plan';
                Image = Planning;
                action("Order &Promising")
                {
                    AccessByPermission = TableData 99000880=R;
                    Caption = 'Order &Promising';
                    Image = OrderPromising;

                    trigger OnAction()
                    var
                        OrderPromisingLine: Record "99000880" temporary;
                    begin
                        OrderPromisingLine.SETRANGE("Source Type","Document Type");
                        OrderPromisingLine.SETRANGE("Source ID","No.");
                        PAGE.RUNMODAL(PAGE::"Order Promising Lines",OrderPromisingLine);
                    end;
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
                        DemandOverview.Initialize(0D,1,"No.",'','');
                        DemandOverview.RUNMODAL;
                    end;
                }
                action("Pla&nning")
                {
                    Caption = 'Pla&nning';
                    Image = Planning;

                    trigger OnAction()
                    var
                        SalesPlanForm: Page "99000883";
                    begin
                        SalesPlanForm.SetSalesOrder("No.");
                        SalesPlanForm.RUNMODAL;
                    end;
                }
            }
            group(Request)
            {
                Caption = 'Request';
                Image = SendApprovalRequest;
                action("Send A&pproval Request")
                {
                    Caption = 'Send A&pproval Request';
                    Image = SendApprovalRequest;
                }
                action("Cancel Approval Re&quest")
                {
                    Caption = 'Cancel Approval Re&quest';
                    Image = Cancel;
                }
                group(Authorize)
                {
                    Caption = 'Authorize';
                    Image = AuthorizeCreditCard;
                    action(Authorize)
                    {
                        Caption = 'Authorize';
                        Image = AuthorizeCreditCard;
                    }
                    action("Void A&uthorize")
                    {
                        Caption = 'Void A&uthorize';
                        Image = VoidCreditCard;
                    }
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("Create Inventor&y Put-away/Pick")
                {
                    AccessByPermission = TableData 7342=R;
                    Caption = 'Create Inventor&y Put-away/Pick';
                    Ellipsis = true;
                    Image = CreateInventoryPickup;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        CreateInvtPutAwayPick;

                        IF NOT FIND('=><') THEN
                          INIT;
                    end;
                }
                action("Create &Whse. Shipment")
                {
                    AccessByPermission = TableData 7320=R;
                    Caption = 'Create &Whse. Shipment';
                    Image = NewShipment;

                    trigger OnAction()
                    var
                        GetSourceDocOutbound: Codeunit "5752";
                    begin
                        GetSourceDocOutbound.CreateFromSalesOrder(Rec);

                        IF NOT FIND('=><') THEN
                          INIT;
                    end;
                }
                action("FIFO LIST")
                {
                    AccessByPermission = Page 50403=X;
                    Caption = 'FIFO LIST';
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                Image = Post;
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
                    begin
                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        Cust.GET("Sell-to Customer No.");
                        IF (Cust."Dealer Verification No." = 'GLC100')// OR (Cust."Dealer Verification No." = 'GLB100')// OR (Cust."Dealer Verification No." = 'RTB100')//
                        //OR (Cust."Dealer Verification No." = 'GER100')
                         THEN BEGIN
                          CustRec2.RESET;
                          Cust2.SETCURRENTKEY("Dealer Verification No.");
                          Cust2.SETRANGE("Dealer Verification No.",Cust."Dealer Verification No.");
                          IF Cust2.FINDFIRST THEN REPEAT
                            CustLedgEntry.SETCURRENTKEY("Customer No.","Document Type",Open);
                            CustLedgEntry.SETRANGE("Customer No.",Cust2."No.");
                            CustLedgEntry.SETRANGE("Document Type",CustLedgEntry."Document Type"::Invoice);
                            CustLedgEntry.SETRANGE(Open,TRUE);
                            IF CustLedgEntry.FINDFIRST THEN BEGIN
                              FirstDate := CustLedgEntry."Posting Date";
                              IF FirstDate <> 0D THEN
                                Diff := TODAY - FirstDate;
                               IF (Diff > 30) THEN
                                ERROR('Overdue invoices need to be cleared!')

                            END;
                             UNTIL Cust2.NEXT = 0;
                            END;
                            END;



                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                           SalesLine.SETRANGE("Variant Code", 'SEA');
                           IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT

                        //IF NOT ( "Customer Line discount" = SalesLine."Line Discount %") THEN
                        //      ERROR('The line discount is not the same with the approved discount !')
                        //      UNTIL SalesLine.NEXT = 0;
                        //  END;
                        // END;
                        IF  (   SalesLine."Line Discount %" > "Customer Line discount") THEN
                              ERROR('The line discount is not the same with the approved discount !')
                              UNTIL SalesLine.NEXT = 0;
                          END;
                         END;


                        // SaleShipHeader.SETRANGE(SaleShipHeader."Order No.","No.");
                        // IF SaleShipHeader.FINDFIRST THEN
                        // ERROR('This document Order No. has been Used Before!');

                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN
                            REPEAT
                             IF SalesLine."Quantity Demanded" = 0 THEN
                             ERROR('Input the quantity demanded')
                            UNTIL SalesLine.NEXT = 0;
                        END;
                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN
                            REPEAT
                             SalesLine.TESTFIELD("VAT Prod. Posting Group")
                            UNTIL SalesLine.NEXT = 0;
                        END;
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT
                              IF ("Shortcut Dimension 1 Code" = '09MARKET') AND (SalesLine."Line Discount Amount"<>0) THEN
                               IF Approved = FALSE THEN
                              ERROR('This transaction need to be Approved before Posting!')
                              UNTIL SalesLine.NEXT = 0;
                          END;

                        TESTFIELD("Shortcut Dimension 1 Code");
                        TESTFIELD("Salesperson Code");
                        TESTFIELD("Posting Description");
                        IF "Shortcut Dimension 1 Code" = '05PARTS' THEN
                        TESTFIELD("Order Type");


                          //MESSAGE('Fixed Cost is %1 and Unit Cost is %2.',Item."Fixed Cost",Item."Unit Cost");
                         IF (ItemRec."Fixed Cost" - ItemRec."Unit Cost") < 0 THEN
                         IF ItemRec."Inventory Posting Group" <> 'N_CARS' THEN
                            ERROR('Sorry, you can not sell this item. Contact your manager to review the Fixed Cost!');
                         /// ///////////////////////////////////////////////////////////

                        IF ("Shortcut Dimension 1 Code" = '05PARTS') AND (Approved = FALSE) THEN
                          ERROR('This transaction needs to be approved before posting!');

                        Customer.SETRANGE("No.","Sell-to Customer No.");
                        IF Customer.FINDFIRST THEN BEGIN
                          IF NOT Customer."Remove Account Link" THEN
                            LinkedAcctControl;
                        END;

                        GPC.UseTodaysDate("Posting Date");
                        GPC.CheckItemCostToPost("No.");
                        GPC.CheckMargin("No.");

                        SalesLine.SETCURRENTKEY("Document No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                            IF LocRec.GET(SalesLine."Location Code") THEN
                            IF LocRec."VRI Location" THEN
                              IF NOT Approved THEN
                                ERROR('This transaction needs the MDs Approval!');
                          UNTIL SalesLine.NEXT = 0;
                        END;

                        IF "Sell-to Customer No." = '940000' THEN  BEGIN
                          IF "Your Reference" = '' THEN
                            ERROR('Please enter the TCOF number!');
                        END;

                        IF "Sell-to Customer No." <> '' THEN  BEGIN
                          SalesLine.SETCURRENTKEY("Document No.","Sell-to Customer No.");
                          SalesLine.SETRANGE(SalesLine."Document No.","No.");
                          SalesLine.SETRANGE(SalesLine."Sell-to Customer No.","Sell-to Customer No." );
                          IF SalesLine.FINDFIRST THEN
                            SalesLine.CALCSUMS("Amount Including VAT");
                            SalesOrderAmount :=SalesLine."Amount Including VAT";
                          CustRec.GET("Sell-to Customer No.");
                          IF (CustRec."Credit Limit (LCY)" <> 0 ) THEN BEGIN
                            //IF ("Customer Posting Group" <> 'STAFF') THEN BEGIN
                            CustRec.CALCFIELDS("Balance (LCY)");
                          IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                            ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                            END;
                        END;

                        SalesLine.SETCURRENTKEY("Document No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                            IF SalesLine.Accessory THEN
                              IF NOT "Include Accessory" THEN
                                ERROR('Some vehicles have accessories. Click on Include Accessory!');
                          UNTIL SalesLine.NEXT = 0;
                        END;

                        Post(CODEUNIT::"Sales-Post (Yes/No)");


                        SalesLine.SETCURRENTKEY("Document No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN
                          IF LocRec.GET(SalesLine."Location Code") THEN
                          ToName := LocRec."E-Mail";
                          Subject := Text003;
                          mailbody := Text004;

                        MailSent := approvalmessage.NewMessage(ToName,CCName,Subject,mailbody,attachement,'',TRUE);
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
                    begin
                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        Cust.GET("Sell-to Customer No.");
                        IF  (Cust."Dealer Verification No." = 'RTM100')// OR (Cust."Dealer Verification No." = 'RTB100')// OR (Cust."Dealer Verification No." = 'GLB100')
                        // OR (Cust."Dealer Verification No." = 'GER100')
                        THEN BEGIN
                          CustRec2.RESET;
                          Cust2.SETCURRENTKEY("Dealer Verification No.");
                          Cust2.SETRANGE("Dealer Verification No.",Cust."Dealer Verification No.");
                          IF Cust2.FINDFIRST THEN REPEAT
                            CustLedgEntry.SETCURRENTKEY("Customer No.","Document Type",Open);
                            CustLedgEntry.SETRANGE("Customer No.",Cust2."No.");
                            CustLedgEntry.SETRANGE("Document Type",CustLedgEntry."Document Type"::Invoice);
                            CustLedgEntry.SETRANGE(Open,TRUE);
                            IF CustLedgEntry.FINDFIRST THEN BEGIN
                              FirstDate := CustLedgEntry."Posting Date";
                              IF FirstDate <> 0D THEN
                                Diff := TODAY - FirstDate;
                               IF (Diff > 30) THEN
                                ERROR('Overdue invoices need to be cleared!')

                            END;
                             UNTIL Cust2.NEXT = 0;
                            END;
                            END;

                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          SalesLine.SETRANGE("Variant Code", 'SEA');
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT

                        IF NOT ( "Customer Line discount" = SalesLine."Line Discount %") THEN
                              ERROR('The line discount is not the same with the approved discount !')
                              UNTIL SalesLine.NEXT = 0;
                          END;
                         END;

                         SaleShipHeader.SETRANGE(SaleShipHeader."Order No.","No.");
                         IF SaleShipHeader.FINDFIRST THEN
                         ERROR('This document Order No has been Used Before!');

                        IF ("Shortcut Dimension 1 Code" = '05PARTS')   THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN
                            REPEAT
                             IF SalesLine."Quantity Demanded" = 0 THEN
                             ERROR('Input the quantity demanded')
                            UNTIL SalesLine.NEXT = 0;
                        END;

                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT
                              IF ("Shortcut Dimension 1 Code" = '09MARKET') AND (SalesLine."Line Discount Amount"<>0) THEN
                               IF Approved = FALSE THEN
                              ERROR('This transaction need to be Approved before Posting!')
                              UNTIL SalesLine.NEXT = 0;
                          END;

                        TESTFIELD("Salesperson Code");
                        TESTFIELD("Posting Description");
                        IF "Shortcut Dimension 1 Code" = '05PARTS' THEN
                            TESTFIELD("Order Type");

                                //MESSAGE('Fixed Cost is %1 and Unit Cost is %2.',Item."Fixed Cost",Item."Unit Cost");
                              IF (ItemRec."Fixed Cost" - ItemRec."Unit Cost") < 0 THEN
                                IF ItemRec."Inventory Posting Group" <> 'N_CARS' THEN
                                 ERROR('Sorry, you can not sell this item. Contact your manager to review the Fixed Cost!');
                                 ///////////////////////////////////////////////////////////

                        IF ("Shortcut Dimension 1 Code" = '05PARTS') AND (Approved = FALSE) THEN
                          ERROR('This transaction needs to be approved before posting!');

                        Customer.SETRANGE("No.","Sell-to Customer No.");
                        IF Customer.FINDFIRST THEN BEGIN
                          IF NOT Customer."Remove Account Link" THEN
                            LinkedAcctControl;
                        END;

                        GPC.UseTodaysDate("Posting Date");
                        GPC.CheckItemCostToPost("No.");
                        GPC.CheckMargin("No.");

                        SalesLine.SETCURRENTKEY("Document No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                            IF LocRec.GET(SalesLine."Location Code") THEN
                            IF LocRec."VRI Location" THEN
                              IF NOT Approved THEN
                                ERROR('This transaction needs the MDs Approval!');
                          UNTIL SalesLine.NEXT = 0;
                        END;

                        IF "Sell-to Customer No." = '940000' THEN  BEGIN
                          IF "Your Reference" = '' THEN
                            ERROR('Please enter the TCOF number!');
                        END;

                        IF "Sell-to Customer No." <> '' THEN  BEGIN
                          SalesLine.SETCURRENTKEY("Document No.","Sell-to Customer No.");
                          SalesLine.SETRANGE(SalesLine."Document No.","No.");
                          SalesLine.SETRANGE(SalesLine."Sell-to Customer No.","Sell-to Customer No." );
                          IF SalesLine.FINDFIRST THEN
                            SalesLine.CALCSUMS("Outstanding Amount (LCY)");
                            SalesOrderAmount := SalesLine."Outstanding Amount (LCY)";
                          CustRec.GET("Sell-to Customer No.");
                          IF CustRec."Credit Limit (LCY)" <> 0 THEN BEGIN
                          CustRec.CALCFIELDS("Balance (LCY)");
                          IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                            ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                            END;
                        END;

                        SalesLine.SETCURRENTKEY("Document No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN BEGIN
                          REPEAT
                            IF SalesLine.Accessory THEN
                              IF NOT "Include Accessory" THEN
                                ERROR('Some vehicles have accessories. Click on Include Accessory!');
                          UNTIL SalesLine.NEXT = 0;
                        END;

                        Post(CODEUNIT::"Sales-Post + Print");


                        SalesLine.SETCURRENTKEY("Document No.");
                        SalesLine.SETRANGE("Document No.","No.");
                        IF SalesLine.FINDFIRST THEN
                          IF LocRec.GET(SalesLine."Location Code") THEN
                          ToName := LocRec."E-Mail";
                          Subject := Text003;
                          mailbody := Text004;

                        MailSent := approvalmessage.NewMessage(ToName,CCName,Subject,mailbody,attachement,'',TRUE);
                    end;
                }
                action("Post and Email")
                {
                    Caption = 'Post and Email';
                    Ellipsis = true;
                    Image = PostMail;
                    Visible = false;

                    trigger OnAction()
                    var
                        SalesPostPrint: Codeunit "82";
                    begin
                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        Cust.GET("Sell-to Customer No.");
                        IF (Cust."Dealer Verification No." = 'RTB100') OR (Cust."Dealer Verification No." = 'GLB100') OR (Cust."Dealer Verification No." = 'GER100') THEN BEGIN
                          CustRec2.RESET;
                          Cust2.SETCURRENTKEY("Dealer Verification No.");
                          Cust2.SETRANGE("Dealer Verification No.",Cust."Dealer Verification No.");
                          IF Cust2.FINDFIRST THEN REPEAT
                            CustLedgEntry.SETCURRENTKEY("Customer No.","Document Type",Open);
                            CustLedgEntry.SETRANGE("Customer No.",Cust2."No.");
                            CustLedgEntry.SETRANGE("Document Type",CustLedgEntry."Document Type"::Invoice);
                            CustLedgEntry.SETRANGE(Open,TRUE);
                            IF CustLedgEntry.FINDFIRST THEN BEGIN
                              FirstDate := CustLedgEntry."Posting Date";
                              IF FirstDate <> 0D THEN
                                Diff := TODAY - FirstDate;
                               IF (Diff > 30) THEN
                                ERROR('Overdue invoices need to be cleared!')

                            END;
                             UNTIL Cust2.NEXT = 0;
                            END;
                            END;

                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          SalesLine.SETRANGE("Variant Code", 'SEA');
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT

                        IF NOT ( "Customer Line discount" = SalesLine."Line Discount %") THEN
                              ERROR('The line discount is not the same with the approved discount !')
                              UNTIL SalesLine.NEXT = 0;
                          END;
                         END;


                         SaleShipHeader.SETRANGE(SaleShipHeader."Order No.","No.");
                         IF SaleShipHeader.FINDFIRST THEN
                         ERROR('This document Order No has been Used Before!');

                        IF ("Shortcut Dimension 1 Code" = '05PARTS')   THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN
                            REPEAT
                             IF SalesLine."Quantity Demanded" = 0 THEN
                             ERROR('Input the quantity demanded')
                            UNTIL SalesLine.NEXT = 0;
                        END;

                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT
                              IF ("Shortcut Dimension 1 Code" = '09MARKET') AND (SalesLine."Line Discount Amount"<>0) THEN
                               IF Approved = FALSE THEN
                              ERROR('This transaction need to be Approved before Posting!')
                              UNTIL SalesLine.NEXT = 0;
                          END;

                        IF "Sell-to Customer No." <> '' THEN  BEGIN
                          SalesLine.SETCURRENTKEY("Document No.","Sell-to Customer No.");
                          SalesLine.SETRANGE(SalesLine."Document No.","No.");
                          SalesLine.SETRANGE(SalesLine."Sell-to Customer No.","Sell-to Customer No." );
                          IF SalesLine.FINDFIRST THEN
                            SalesLine.CALCSUMS("Outstanding Amount (LCY)");
                            SalesOrderAmount := SalesLine."Outstanding Amount (LCY)";
                          CustRec.GET("Sell-to Customer No.");
                          IF CustRec."Credit Limit (LCY)" <> 0 THEN BEGIN
                            //IF "Customer Posting Group" <> 'STAFF' THEN BEGIN
                          CustRec.CALCFIELDS("Balance (LCY)");
                          IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                            ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                            END;
                        END;

                        Customer.SETRANGE("No.","Sell-to Customer No.");
                        IF Customer.FINDFIRST THEN BEGIN
                          IF NOT Customer."Remove Account Link" THEN
                            LinkedAcctControl;
                        END;

                        //GPC.UseTodaysDate("Posting Date");
                        GPC.CheckItemCostToPost("No.");
                        GPC.CheckMargin("No.");

                        SalesPostPrint.PostAndEmail(Rec);
                    end;
                }
                action("Test Report")
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;

                    trigger OnAction()
                    begin
                         SaleShipHeader.SETRANGE(SaleShipHeader."Order No.","No.");
                         IF SaleShipHeader.FINDFIRST THEN
                         ERROR('This document Order No has been Used Before!');

                        ReportPrint.PrintSalesHeader(Rec);
                    end;
                }
                action("Post &Batch")
                {
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;

                    trigger OnAction()
                    begin
                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        Cust.GET("Sell-to Customer No.");
                        IF (Cust."Dealer Verification No." = 'RTB100') OR (Cust."Dealer Verification No." = 'GLB100') OR (Cust."Dealer Verification No." = 'GER100') THEN BEGIN
                          CustRec2.RESET;
                          Cust2.SETCURRENTKEY("Dealer Verification No.");
                          Cust2.SETRANGE("Dealer Verification No.",Cust."Dealer Verification No.");
                          IF Cust2.FINDFIRST THEN REPEAT
                            CustLedgEntry.SETCURRENTKEY("Customer No.","Document Type",Open);
                            CustLedgEntry.SETRANGE("Customer No.",Cust2."No.");
                            CustLedgEntry.SETRANGE("Document Type",CustLedgEntry."Document Type"::Invoice);
                            CustLedgEntry.SETRANGE(Open,TRUE);
                            IF CustLedgEntry.FINDFIRST THEN BEGIN
                              FirstDate := CustLedgEntry."Posting Date";
                              IF FirstDate <> 0D THEN
                                Diff := TODAY - FirstDate;
                               IF (Diff > 30) THEN
                                ERROR('Overdue invoices need to be cleared!')

                            END;
                             UNTIL Cust2.NEXT = 0;
                            END;
                            END;


                        IF ("Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          SalesLine.SETRANGE("Variant Code", 'SEA');
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT

                        IF NOT ( "Customer Line discount" = SalesLine."Line Discount %") THEN
                              ERROR('The line discount is not the same with the approved discount !')
                              UNTIL SalesLine.NEXT = 0;
                          END;
                         END;


                         SaleShipHeader.SETRANGE(SaleShipHeader."Order No.","No.");
                         IF SaleShipHeader.FINDFIRST THEN
                         ERROR('This document Order No has been Used Before!');

                        SalesLine.SETCURRENTKEY("Document Type","Document No.",Type,"No.");
                          SalesLine.SETRANGE("Document Type","Document Type");
                          SalesLine.SETRANGE("Document No.","No.");
                          SalesLine.SETRANGE(Type,SalesLine.Type::Item);
                          IF SalesLine.FINDFIRST THEN BEGIN
                              REPEAT
                              IF ("Shortcut Dimension 1 Code" = '09MARKET') AND (SalesLine."Line Discount Amount"<>0) THEN
                               IF Approved = FALSE THEN
                              ERROR('This transaction need to be Approved before Posting!')
                              UNTIL SalesLine.NEXT = 0;
                          END;

                        IF "Sell-to Customer No." <> '' THEN  BEGIN
                          SalesLine.SETCURRENTKEY("Document No.","Sell-to Customer No.");
                          SalesLine.SETRANGE(SalesLine."Document No.","No.");
                          SalesLine.SETRANGE(SalesLine."Sell-to Customer No.","Sell-to Customer No." );
                          IF SalesLine.FINDFIRST THEN
                            SalesLine.CALCSUMS("Outstanding Amount (LCY)");
                            SalesOrderAmount := SalesLine."Outstanding Amount (LCY)";
                          CustRec.GET("Sell-to Customer No.");
                          //IF CustRec."Credit Limit (LCY)" <> 0 THEN BEGIN
                            IF "Customer Posting Group" <> 'STAFF' THEN BEGIN
                          CustRec.CALCFIELDS("Balance (LCY)");
                          IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                            ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                            END;
                        END;


                        Customer.SETRANGE("No.","Sell-to Customer No.");
                        IF Customer.FINDFIRST THEN BEGIN
                          IF NOT Customer."Remove Account Link" THEN
                            LinkedAcctControl;
                        END;

                        //GPC.UseTodaysDate("Posting Date");
                        GPC.CheckItemCostToPost("No.");
                        GPC.CheckMargin("No.");

                        REPORT.RUNMODAL(REPORT::"Batch Post Sales Orders",TRUE,TRUE,Rec);
                        CurrPage.UPDATE(FALSE);
                    end;
                }
                action("Remove From Job Queue")
                {
                    Caption = 'Remove From Job Queue';
                    Image = RemoveLine;
                    Visible = JobQueueVisible;

                    trigger OnAction()
                    begin
                        CancelBackgroundPosting;
                    end;
                }
                action("Sales Stat")
                {
                    Caption = 'Sales Stat';
                    Image = "Table";
                    RunObject = Report 50130;

    trigger OnAction()
    begin
        SalesHeader.SETRANGE(SalesHeader."No.", SalesLine."Document No.");
    end;
                }
                group("Prepa&yment")
                {
                    Caption = 'Prepa&yment';
                    Image = Prepayment;
                    action("Prepayment &Test Report")
                    {
                        Caption = 'Prepayment &Test Report';
                        Ellipsis = true;
                        Image = PrepaymentSimulation;

                        trigger OnAction()
                        begin
                            ReportPrint.PrintSalesHeaderPrepmt(Rec);
                        end;
                    }
                    action(PostPrepaymentInvoice)
                    {
                        Caption = 'Post Prepayment &Invoice';
                        Ellipsis = true;
                        Image = PrepaymentPost;

                        trigger OnAction()
                        var
                            PurchaseHeader: Record "38";
                            SalesPostYNPrepmt: Codeunit "443";
                        begin
                        end;
                    }
                    action("Post and Print Prepmt. Invoic&e")
                    {
                        Caption = 'Post and Print Prepmt. Invoic&e';
                        Ellipsis = true;
                        Image = PrepaymentPostPrint;

                        trigger OnAction()
                        var
                            PurchaseHeader: Record "38";
                            SalesPostYNPrepmt: Codeunit "443";
                        begin
                        end;
                    }
                    action(PostPrepaymentCreditMemo)
                    {
                        Caption = 'Post Prepayment &Credit Memo';
                        Ellipsis = true;
                        Image = PrepaymentPost;

                        trigger OnAction()
                        var
                            PurchaseHeader: Record "38";
                            SalesPostYNPrepmt: Codeunit "443";
                        begin
                        end;
                    }
                    action("Post and Print Prepmt. Cr. Mem&o")
                    {
                        Caption = 'Post and Print Prepmt. Cr. Mem&o';
                        Ellipsis = true;
                        Image = PrepaymentPostPrint;

                        trigger OnAction()
                        var
                            PurchaseHeader: Record "38";
                            SalesPostYNPrepmt: Codeunit "443";
                        begin
                        end;
                    }
                }
            }
            group("&Print")
            {
                Caption = '&Print';
                Image = Print;
                action("Picking List - Parts")
                {
                    Caption = 'Picking List - Parts';
                    Image = Print;

                    trigger OnAction()
                    begin
                        SalesHeader.SETRANGE(SalesHeader."No.","No.");
                          IF FINDFIRST THEN
                          REPORT.RUNMODAL(50178,TRUE,TRUE,SalesHeader);
                    end;
                }
                action("<Action CSC Sales Waybill>")
                {
                    Caption = 'CSC-Waybill-Parts';
                    Promoted = false;
                    RunObject = Report 50625;
                }
                action("Waybill - Parts")
                {
                    Caption = 'Waybill - Parts';
                    Image = Print;

                    trigger OnAction()
                    begin
                        "Sales Time":= TIME ;
                        SalesHeader.SETRANGE(SalesHeader."No.","No.");
                          IF FINDFIRST THEN
                          REPORT.RUNMODAL(50033,TRUE,TRUE,SalesHeader);
                    end;
                }
                action("Picking List - Vehicle")
                {
                    Caption = 'Picking List - Vehicle';
                    Ellipsis = true;
                    Image = Print;

                    trigger OnAction()
                    begin
                        //IF "Sell-to Customer No." <> '' THEN  BEGIN
                        //  SalesLine.SETCURRENTKEY("Document No.","Sell-to Customer No.");
                        //  SalesLine.SETRANGE(SalesLine."Document No.","No.");
                        //  SalesLine.SETRANGE(SalesLine."Sell-to Customer No.","Sell-to Customer No." );
                        //  IF SalesLine.FINDFIRST THEN
                        //    SalesLine.CALCSUMS("Outstanding Amount (LCY)");
                        //    SalesOrderAmount := SalesLine."Outstanding Amount (LCY)";
                        //  CustRec.GET("Sell-to Customer No.");
                        //  //IF CustRec."Credit Limit (LCY)" <> 0 THEN BEGIN
                        //  IF "Customer Posting Group" <> 'STAFF' THEN BEGIN
                        //  CustRec.CALCFIELDS("Balance (LCY)");
                        //  IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                        //    ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                        //    END;
                        //END;


                        SalesHeader.SETRANGE(SalesHeader."No.","No.");
                        IF FINDFIRST THEN
                          REPORT.RUNMODAL(50117,TRUE,TRUE,SalesHeader);
                    end;
                }
                action("Picking List - Pre-Owned Vehicle")
                {
                    Caption = 'Picking List - Pre-Owned Vehicle';
                    Ellipsis = true;
                    Image = Print;

                    trigger OnAction()
                    begin
                        SalesHeader.SETRANGE(SalesHeader."No.","No.");
                        IF FINDFIRST THEN
                          REPORT.RUNMODAL(50438,TRUE,TRUE,SalesHeader);
                    end;
                }
                action("Manual Invoice")
                {
                    Caption = 'Manual Invoice';
                    Image = Print;

                    trigger OnAction()
                    begin
                        ERROR('Contact the Administrator');
                        SalesHeader.SETRANGE(SalesHeader."No.","No.");
                        IF FINDFIRST THEN
                          REPORT.RUNMODAL(50439,TRUE,TRUE,SalesHeader);
                    end;
                }
            }
            group("&Order Confirmation")
            {
                Caption = '&Order Confirmation';
                Image = Email;
                action("Email Confirmation")
                {
                    Caption = 'Email Confirmation';
                    Ellipsis = true;
                    Image = Email;

                    trigger OnAction()
                    begin
                        DocPrint.EmailSalesHeader(Rec);
                    end;
                }
                action("Print Confirmation")
                {
                    Caption = 'Print Confirmation';
                    Ellipsis = true;
                    Image = Print;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec,Usage::"Order Confirmation");
                    end;
                }
                action("Send Pickinglist")
                {
                    Caption = 'Send Pickinglist';
                    Image = MailSetup;

                    trigger OnAction()
                    begin
                        //SalesHeader.SETRANGE("Document Type","Document Type"::Order);
                        //SalesHeader.SETRANGE("No.","No.");
                        //  IF SalesHeader.FINDFIRST THEN
                        //    REPORT.RUNMODAL(90005,TRUE,TRUE,SalesHeader);
                        CRLF := '';
                        CRLF[1] := 13;
                        CRLF[2] := 10;


                        SalesRec.RESET;
                        SalesRec.SETRANGE("Document Type","Document Type"::Order);
                        SalesRec.SETRANGE("No.","No.");

                        SalesRec.SETFILTER("No.","No.");
                        SalesRec.FINDFIRST;

                        FileName := STRSUBSTNO(ReportAsPdfFileNameMsg,SalesRec."No.",'PickingList');
                        AttachmentFileName := FileName;
                        FileName := TEMPORARYPATH + FileName;


                        REPORT.SAVEASPDF(REPORT::"TNL Sales Picking List- Parts", FileName, SalesRec);
                        AttachmentFileName := DownloadToClientFileName(FileName, AttachmentFileName);



                             UserSetup2.GET(USERID);
                             ToAddresses :=Customer."E-Mail";
                             Addressee :='Dear Sir';
                             CcAddresses := 'olukoya@toyotanigeria.com;sunday@toyotanigeria.com;';
                             BccAddresses := '';
                             Subject := COPYSTR(
                              STRSUBSTNO(
                              EmailSubjectCapTxt,PickinListTxt,Customer."Search Name",SalesRec."No."),1,
                            MAXSTRLEN(Subject));
                             UserSetup2.GET(USERID);
                             SendersName :=  UserSetup2.Initials;

                             Body := Addressee  + ',' +
                             CRLF + CRLF + STRSUBSTNO(Msg) + CRLF+
                             CRLF + CRLF + CRLF + Regard + CRLF + CRLF + SendersName;
                              IF CURRENTCLIENTTYPE = CLIENTTYPE::Windows THEN BEGIN
                                 Mail.NewMessage(ToAddresses,CcAddresses,BccAddresses,Subject,Body,AttachmentFileName,TRUE);
                                  IF CURRENTCLIENTTYPE = CLIENTTYPE::Web THEN BEGIN
                                     SMTPMail.CreateMessage(SendersName,SenderAddress,ToAddresses,Subject,Body,TRUE);
                                     SMTPMail.AddAttachment(FileName, AttachmentFileName);
                                     SMTPMail.Send;
                                     MESSAGE(Msg2);
                                   END;

                                 END;
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        DynamicEditable := CurrPage.EDITABLE;
    end;

    trigger OnAfterGetRecord()
    begin
        JobQueueVisible := "Job Queue Status" = "Job Queue Status"::"Scheduled for Posting";
        SetExtDocNoMandatoryCondition;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        CurrPage.SAVERECORD;
        EXIT(ConfirmDeletion);
    end;

    trigger OnInit()
    begin
        SetExtDocNoMandatoryCondition;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        CheckCreditMaxBeforeInsert;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Responsibility Center" := UserMgt.GetSalesFilter;
    end;

    trigger OnOpenPage()
    begin
        //IF UserMgt.GetSalesFilter <> '' THEN BEGIN
          FILTERGROUP(2);
          //SETRANGE("Responsibility Center",UserMgt.GetSalesFilter);
         // FILTERGROUP(0);
        //END;

        //SETRANGE("Date Filter",0D,WORKDATE - 1);

        SetDocNoVisible;
        //"Location Code" := '120ISO';
    end;

    var
        Text000: Label 'Unable to run this function while in View mode.';
        CopySalesDoc: Report "292";
                          MoveNegSalesLines: Report "6699";
                          ReportPrint: Codeunit "228";
                          DocPrint: Codeunit "229";
                          ArchiveManagement: Codeunit "5063";
                          SalesCalcDiscountByType: Codeunit "56";
                          ChangeExchangeRate: Page "511";
                          UserMgt: Codeunit "5700";
                          Usage: Option "Order Confirmation","Work Order","Pick Instruction";
    [InDataSet]

    JobQueueVisible: Boolean;
    Text001: Label 'Do you want to change %1 in all related records in the warehouse?';
    Text002: Label 'The update has been interrupted to respect the warning.';
    DynamicEditable: Boolean;
    DocNoVisible: Boolean;
    ExternalDocNoMandatory: Boolean;
    SalesHeader: Record "36";
    UserRec: Record 91;
    UserSetup: Record 91;
    SalesLine: Record "37";
    SalesLine2: Record "37";
    SalesLine3: Record "37";
    SalesOrderAmount: Decimal;
    CustRec: Record 18;
    CustLedgEntry: Record "21";
    FirstDate: Date;
    Diff: Integer;
    CustRec2: Record 18;
    ItemRec: Record 27;
    LocRec: Record "14";
    GPC: Codeunit "50004";
    TotalWithAccessory: Decimal;
    Location: Record "14";
    SalesLine4: Record "37";
    GPC2: Codeunit "50004";
    LineNo: Integer;
    UnitPrice: Decimal;
    MailSent: Boolean;
    approvalmessage: Codeunit 397;
    ToName: Text[250];
    CCName: Text[30];
    Subject: Text[30];
    mailbody: Text[250];
    attachement: Text[30];
    Text003: Label 'New Delivery!';
    Text004: Label 'A sales transaction has been completed. Please prepare the vehicles for delivery!';
    Customer: Record 18;
    Cust2: Record 18;
    Cust: Record 18;
    Text005: Label 'Accessories have been added!';
    Text006: Label 'Accessories have been removed!';
    SaleLineDiscount: Record "7004";
    ItemRec2: Record 27;
    UserRec2: Record 91;
    SaleShipHeader: Record "110";
    Body: Text[500];
    Opendialog: Boolean;
    Bcc: Text[80];
    CRLF: Text;
    SendersName: Text;
    Addressee: Text;
    UserSetup2: Record 91;
    Mail: Codeunit 397;
    CcAddresses: Text;
    BccAddresses: Text;
    SenderAddress: Text;
    ToAddresses: Text;
    SMTPMail: Codeunit "400";
    EmailSubjectCapTxt: Label '%1 %2 - for %3:%4', Comment = '%1 = Customer Name. %2 = Document Type %3 = Invoice No.';
    ReportAsPdfFileNameMsg: Label 'Pickinglist %1 %2.pdf', Comment = '%1 = Document Type %2 = Invoice No.';
    PickinListTxt: Label 'Picking list';
    Salutation: Label 'Dear';
    Msg: Label 'Kindly find attached Pickinglist.';
    Regard: Label 'Regards,';
    AttachmentFileName: Text[250];
    FileName: Text[250];
    SalesRec: Record "36";
    SalesNo: Code[10];
    Msg2: Label 'Mail sent successfully';

local procedure Post(PostingCodeunitID: Integer)
    begin
        SendToPosting(PostingCodeunitID);
        IF "Job Queue Status" = "Job Queue Status"::"Scheduled for Posting" THEN
          CurrPage.CLOSE;
        CurrPage.UPDATE(FALSE);
    end;

    [Scope('Internal')]
    procedure UpdateAllowed(): Boolean
    begin
        IF CurrPage.EDITABLE = FALSE THEN
          ERROR(Text000);
        EXIT(TRUE);
    end;

    local procedure ApproveCalcInvDisc()
    begin
        CurrPage.SalesLines.PAGE.ApproveCalcInvDisc;
    end;

    local procedure SelltoCustomerNoOnAfterValidat()
    begin
        IF GETFILTER("Sell-to Customer No.") = xRec."Sell-to Customer No." THEN
          IF "Sell-to Customer No." <> xRec."Sell-to Customer No." THEN
            SETRANGE("Sell-to Customer No.");
        CurrPage.UPDATE;
    end;

    local procedure SalespersonCodeOnAfterValidate()
    begin
        CurrPage.SalesLines.PAGE.UpdateForm(TRUE);
    end;

    local procedure BilltoCustomerNoOnAfterValidat()
    begin
        CurrPage.UPDATE;
    end;

    local procedure ShortcutDimension1CodeOnAfterV()
    begin
        CurrPage.UPDATE;
    end;

    local procedure ShortcutDimension2CodeOnAfterV()
    begin
        CurrPage.UPDATE;
    end;

    local procedure PricesIncludingVATOnAfterValid()
    begin
        CurrPage.UPDATE;
    end;

    local procedure Prepayment37OnAfterValidate()
    begin
        CurrPage.UPDATE;
    end;

    local procedure SetDocNoVisible()
    var
        DocumentNoVisibility: Codeunit "1400";
        DocType: Option Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",Reminder,FinChMemo;
    begin
        DocNoVisible := DocumentNoVisibility.SalesDocumentNoIsVisible(DocType::Order,"No.");
    end;

    local procedure SetExtDocNoMandatoryCondition()
    var
        SalesReceivablesSetup: Record "311";
    begin
        SalesReceivablesSetup.GET;
        ExternalDocNoMandatory := SalesReceivablesSetup."Ext. Doc. No. Mandatory"
    end;

    [Scope('Internal')]
    procedure LinkedAcctControl()
    var
        CustLedgEntry: Record "21";
        FirstDate: Date;
        Diff: Integer;
        DealerVerifNo: Code[10];
    begin
        IF (COPYSTR("Sell-to Customer No.",1,3) = 'TDP') THEN
          EXIT ELSE BEGIN

        Cust.GET("Sell-to Customer No.");
        DealerVerifNo := Cust."Dealer Verification No.";

        IF DealerVerifNo <> '' THEN
          CustRec2.RESET;
          Cust2.SETCURRENTKEY("Dealer Verification No.");
          Cust2.SETRANGE("Dealer Verification No.",DealerVerifNo);
          IF Cust2.FINDFIRST THEN REPEAT
            CustLedgEntry.SETCURRENTKEY("Customer No.","Document Type",Open);
            CustLedgEntry.SETRANGE("Customer No.",Cust2."No.");
            CustLedgEntry.SETRANGE("Document Type",CustLedgEntry."Document Type"::Invoice);
            CustLedgEntry.SETRANGE(Open,TRUE);
            IF CustLedgEntry.FINDFIRST THEN BEGIN
              FirstDate := CustLedgEntry."Posting Date";
              IF FirstDate <> 0D THEN
                Diff := TODAY - FirstDate;
               IF (Diff > 60) THEN
                ERROR('Overdue invoices need to be cleared!')
            END;
          UNTIL Cust2.NEXT = 0;
        END;
    end;

    local procedure SendMail(CustomerNo: Code[10];SalesNo: Code[10])
    var
        AttachmentFileName: Text[250];
        Mail: Codeunit "397";
        FileName: Text[250];
        Subject: Text[250];
        SalesRec: Record "36";
    begin
        FileName := STRSUBSTNO(ReportAsPdfFileNameMsg,SalesHeader."No.",'PickingList');
        AttachmentFileName := FileName;
        FileName := TEMPORARYPATH + FileName;

        SalesRec.RESET;
        SalesRec.SETFILTER("No.", SalesNo);
        //SalesRec.SETFILTER("Pay Period", PayPeriod);
        SalesRec.FINDFIRST;

        REPORT.SAVEASPDF(REPORT::"TNL Sales Picking List- Parts", FileName, SalesRec);
        AttachmentFileName := DownloadToClientFileName(FileName, AttachmentFileName);
        Subject := COPYSTR(
            STRSUBSTNO(
              EmailSubjectCapTxt,PickinListTxt,Customer."Search Name",SalesHeader."No."),1,
            MAXSTRLEN(Subject));

        SMTPMail.CreateMessage('Microsoft Dynamics'+Customer."Search Name",'abdulsalaamsola@gmail.com',Customer."E-Mail",Subject,Body,TRUE);
        SMTPMail.AddAttachment(FileName, AttachmentFileName);
        SMTPMail.TrySend;


        FILE.ERASE(FileName);
    end;

    [Scope('Internal')]
    procedure DownloadToClientFileName(ServerFileName: Text[250];ToFile: Text[250]): Text[250]
    var
        ClientFileName: Text[250];
        objScript: Automation ;
        CR: Text[1];
    begin
        ClientFileName := ToFile;
        IF NOT DOWNLOAD(ServerFileName, '', '<TEMP>','', ClientFileName) THEN
          EXIT('');
        IF CREATE(objScript,TRUE,TRUE) THEN
        BEGIN
          CR := ' '; CR[1] := 13;
          objScript.Language := 'VBScript';
          objScript.AddCode(
          'function RenameTempFile(fromFile, toFile)'+CR+
          'set fso = createobject("Scripting.FileSystemObject")'+CR+
          'set x = createobject("Scriptlet.TypeLib")'+CR+
          'path = fso.getparentfoldername(fromFile)'+CR+
          'toPath = path+"\"+left(x.GUID,38)'+CR+
          'fso.CreateFolder toPath'+CR+
          'fso.MoveFile fromFile, toPath+"\"+toFile'+CR+
          'RenameTempFile = toPath'+CR+
          'end function');
          ClientFileName := objScript.Eval('RenameTempFile("'+ClientFileName+'","'+ToFile+'")');
          ClientFileName := ClientFileName+'\'+ToFile;
        END;
        EXIT(ClientFileName);
    end;
}

