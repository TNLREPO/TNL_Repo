page 70531 "Online Sales Order List"
{
    ApplicationArea = Basic, Suite, Assembly;
    Caption = 'Sales Orders';
    CardPageID = "DOO Sales Order";
    DataCaptionFields = "Sell-to Customer No.";
    Editable = true;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Request Approval,Order,Release,Posting,Print/Send,Navigate';
    QueryCategory = 'Sales Order List';
    RefreshOnActivate = true;
    SourceTable = "Sales Header";
    SourceTableView = WHERE("Document Type" = CONST(Order), "Online Order" = CONST(true), "Vehicle Order No." = filter(<> ''));
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Contr1)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the number of the customer.';
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the customer.';
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies a document number that refers to the customer''s or vendor''s numbering system.';
                }
                field("Tracker No."; Rec."Tracker No.")
                {
                }
                field("Sell-to Post Code"; Rec."Sell-to Post Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the postal code of the customer''s main address.';
                    Visible = false;
                }
                field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the country/region code of the customer''s main address.';
                    Visible = false;
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the contact person at the customer''s main address.';
                    Visible = false;
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the number of the customer that you send or sent the invoice or credit memo to.';
                    Visible = false;
                }
                field("Bill-to Name"; Rec."Bill-to Name")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the customer that you send or sent the invoice or credit memo to.';
                    Visible = false;
                }
                field("Bill-to Post Code"; Rec."Bill-to Post Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the postal code of the customer''s billing address.';
                    Visible = false;
                }
                field("Bill-to Country/Region Code"; Rec."Bill-to Country/Region Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the country/region code of the customer''s billing address.';
                    Visible = false;
                }
                field("Bill-to Contact"; Rec."Bill-to Contact")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the contact person at the customer''s billing address.';
                    Visible = false;
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies a code for an alternate shipment address if you want to ship to another address than the one that has been entered automatically. This field is also used in case of drop shipment.';
                    Visible = false;
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the customer at the address that the items are shipped to.';
                    Visible = false;
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the postal code of the address that the items are shipped to.';
                    Visible = false;
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the country/region code of the address that the items are shipped to.';
                    Visible = false;
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the contact person at the address that the items are shipped to.';
                    Visible = false;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the date when the posting of the sales document will be recorded.';
                    Visible = false;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = Dimensions;
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                    Visible = false;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = Dimensions;
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                    Visible = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = Location;
                    ToolTip = 'Specifies the location from where inventory items to the customer on the sales document are to be shipped by default.';
                }
                field("Quote No."; Rec."Quote No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the number of the sales quote that the sales order was created from. You can track the number to sales quote documents that you have printed, saved, or emailed.';
                    Visible = false;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the name of the salesperson who is assigned to the customer.';
                    Visible = false;
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the ID of the user who is responsible for the document.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the currency of amounts on the sales document.';
                    Visible = false;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the date when the related document was created.';
                }
                field("Requested Delivery Date"; Rec."Requested Delivery Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the date that the customer has asked for the order to be delivered.';
                    Visible = false;
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                    ApplicationArea = RelationshipMgmt;
                    ToolTip = 'Specifies the campaign number the document is linked to.';
                    Visible = false;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the document is open, waiting to be approved, has been invoiced for prepayment, or has been released to the next stage of processing.';
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.';
                    Visible = false;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies when the sales invoice must be paid.';
                    Visible = false;
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the payment discount percentage that is granted if the customer pays on or before the date entered in the Pmt. Discount Date field. The discount percentage is specified in the Payment Terms Code field.';
                    Visible = false;
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the delivery conditions of the related shipment, such as free on board (FOB).';
                    Visible = false;
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the code for the shipping agent who is transporting the items.';
                    Visible = false;
                }
                field("Shipping Agent Service Code"; Rec."Shipping Agent Service Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the code for the service, such as a one-day delivery, that is offered by the shipping agent.';
                    Visible = false;
                }

                field("Shipment Date"; Rec."Shipment Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies when items on the document are shipped or were shipped. A shipment date is usually calculated from a requested delivery date plus lead time.';
                    Visible = false;
                }
                field("Shipping Advice"; Rec."Shipping Advice")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies if the customer accepts partial shipment of orders.';
                    Visible = false;
                }
                field("Completely Shipped"; Rec."Completely Shipped")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether all the items on the order have been shipped or, in the case of inbound items, completely received.';
                }

                field("Amt. Ship. Not Inv. (LCY) Base"; Rec."Amt. Ship. Not Inv. (LCY) Base")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the sum, in LCY, for items that have been shipped but not yet been invoiced. The amount is calculated as Amount Including VAT x Qty. Shipped Not Invoiced / Quantity.';
                }
                field("Amt. Ship. Not Inv. (LCY)"; Rec."Amt. Ship. Not Inv. (LCY)")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the sum, in LCY, for items that have been shipped but not yet been invoiced. The amount is calculated as Amount Including VAT x Qty. Shipped Not Invoiced / Quantity.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the sum of amounts in the Line Amount field on the sales order lines.';
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the total of the amounts, including VAT, on all the lines on the document.';
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies additional posting information for the document. After you post the document, the description can add detail to vendor and customer ledger entries.';
                    Visible = false;
                }
            }
        }
        area(factboxes)
        {
            /* part("Power BI Report FactBox"; 6306)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Power BI Reports';
                Visible = PowerBIVisible;
            }
            part(;Rec.9082)
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = No.=FIELD(Bill-to Customer No.),
                              Date Filter=FIELD(Date Filter);
            }
            part(;9084)
            {
                ApplicationArea = Basic,Suite;
                SubPageLink = No.=FIELD(Bill-to Customer No.),
                              Date Filter=FIELD(Date Filter);
            } */
            part(IncomingDocAttachFactBox; 193)
            {
                ApplicationArea = Basic, Suite;
                ShowFilter = false;
                Visible = false;
            }
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
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
                action(Dimensions)
                {
                    AccessByPermission = TableData 348 = R;
                    ApplicationArea = Dimensions;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ToolTip = 'View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyze transaction history.';

                    trigger OnAction()
                    begin
                        Rec.ShowDocDim;
                    end;
                }
                action(Statistics)
                {
                    ApplicationArea = Suite;
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    ShortCutKey = 'F7';
                    ToolTip = 'View statistical information, such as the value of posted entries, for the record.';

                    trigger OnAction()
                    begin
                        Rec.OpenSalesOrderStatistics;
                    end;
                }
                action(Approvals)
                {
                    ApplicationArea = Suite;
                    Caption = 'Approvals';
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category5;
                    ToolTip = 'View a list of the records that are waiting to be approved. For example, you can see who requested the record to be approved, when it was sent, and when it is due to be approved.';

                    trigger OnAction()
                    var
                        WorkflowsEntriesBuffer: Record 832;
                    begin
                        //WorkflowsEntriesBuffer.RunWorkflowEntriesPage(RECORDID, DATABASE::"Sales Header", "Document Type", "No.");
                    end;
                }
                action("Co&mments")
                {
                    ApplicationArea = Comments;
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category5;
                    RunObject = Page 67;
                    RunPageLink = "Document Type" = FIELD("Document Type"),
                                  "No." = FIELD("No."),
                                  "Document Line No." = CONST(0);
                    ToolTip = 'View or add comments for the record.';
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = Documents;
                action("S&hipments")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'S&hipments';
                    Image = Shipment;
                    Promoted = true;
                    PromotedCategory = Category9;
                    RunObject = Page 142;
                    RunPageLink = "Order No." = FIELD("No.");
                    RunPageView = SORTING("Order No.");
                    ToolTip = 'View related posted sales shipments.';
                }
                action(PostedSalesInvoices)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Invoices';
                    Image = Invoice;
                    Promoted = true;
                    PromotedCategory = Category9;
                    RunObject = Page 143;
                    RunPageLink = "Order No." = FIELD("No.");
                    RunPageView = SORTING("Order No.");
                    ToolTip = 'View a list of ongoing sales invoices for the order.';
                }
                action(PostedSalesPrepmtInvoices)
                {
                    ApplicationArea = Prepayments;
                    Caption = 'Prepa&yment Invoices';
                    Image = PrepaymentInvoice;
                    RunObject = Page 143;
                    RunPageLink = "Prepayment Order No." = FIELD("No.");
                    RunPageView = SORTING("Prepayment Order No.");
                    ToolTip = 'View related posted sales invoices that involve a prepayment. ';
                }
                action("Prepayment Credi&t Memos")
                {
                    ApplicationArea = Prepayments;
                    Caption = 'Prepayment Credi&t Memos';
                    Image = PrepaymentCreditMemo;
                    RunObject = Page 144;
                    RunPageLink = "Prepayment Order No." = FIELD("No.");
                    RunPageView = SORTING("Prepayment Order No.");
                    ToolTip = 'View related posted sales credit memos that involve a prepayment. ';
                }
            }
            group(ActionGroupCRM)
            {
                Caption = 'Dynamics 365 for Sales';
                Visible = CRMIntegrationEnabled;
                action(CRMGoToSalesOrderListInNAV)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Order List';
                    Enabled = CRMIntegrationEnabled;
                    Image = "Order";
                    ToolTip = 'Open the Sales Order List - Dynamics 365 for Sales page in Business Central';
                    Visible = CRMIntegrationEnabled;

                    trigger OnAction()
                    var
                        CRMSalesorder: Record 5353;
                    begin
                        PAGE.RUN(PAGE::"CRM Sales Order List", CRMSalesorder);
                    end;
                }
            }
        }
        area(processing)
        {
            group(ReleaseContrl)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                action(Release)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Re&lease';
                    Image = ReleaseDoc;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedOnly = true;
                    ShortCutKey = 'Ctrl+F9';
                    ToolTip = 'Release the document to the next stage of processing. When a document is released, it will be included in all availability calculations from the expected receipt date of the items. You must reopen the document before you can make changes to it.';

                    trigger OnAction()
                    var
                        ReleaseSalesDoc: Codeunit 414;
                    begin
                        ReleaseSalesDoc.PerformManualRelease(Rec);
                    end;
                }
                action(Reopen)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Re&open';
                    Image = ReOpen;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedOnly = true;
                    ToolTip = 'Reopen the document to change it after it has been approved. Approved documents have the Released status and must be opened before they can be changed.';

                    trigger OnAction()
                    var
                        ReleaseSalesDoc: Codeunit 414;
                    begin
                        ReleaseSalesDoc.PerformManualReopen(Rec);
                    end;
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";

                action("Order &Promising")
                {
                    AccessByPermission = TableData 99000880 = R;
                    ApplicationArea = OrderPromising;
                    Caption = 'Order &Promising';
                    Image = OrderPromising;
                    ToolTip = 'Calculate the shipment and delivery dates based on the item''s known and expected availability dates, and then promise the dates to the customer.';

                    trigger OnAction()
                    var
                        OrderPromisingLine: Record 99000880 temporary;
                    begin
                        /* OrderPromisingLine.SETRANGE("Source Type", "Document Type");
                        OrderPromisingLine.SETRANGE("Source ID", "No.");
                        PAGE.RUNMODAL(PAGE::"Order Promising Lines", OrderPromisingLine); */
                    end;
                }
                action("Send IC Sales Order Cnfmn.")
                {
                    AccessByPermission = TableData 410 = R;
                    ApplicationArea = Intercompany;
                    Caption = 'Send IC Sales Order Cnfmn.';
                    Image = IntercompanyOrder;
                    ToolTip = 'Send the document to the intercompany outbox or directly to the intercompany partner if automatic transaction sending is enabled.';

                    trigger OnAction()
                    var
                        ICInOutboxMgt: Codeunit 427;
                        ApprovalsMgmt: Codeunit 1535;
                    begin
                        IF ApprovalsMgmt.PrePostApprovalCheckSales(Rec) THEN
                            ICInOutboxMgt.SendSalesDoc(Rec, FALSE);
                    end;
                }
                action("Delete Invoiced")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Delete Invoiced Sales Orders';
                    Image = Delete;
                    RunObject = Report 299;
                    ToolTip = 'Delete orders that were not automatically deleted after completion. For example, when several sales orders were completed by a single invoice.';
                }
            }
            group("Request Approval")
            {
                Caption = 'Request Approval';
                action(SendApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send A&pproval Request';
                    Enabled = NOT OpenApprovalEntriesExist AND CanRequestApprovalForFlow;
                    Image = SendApprovalRequest;
                    ToolTip = 'Request approval of the document.';

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit 1535;
                    begin
                        IF ApprovalsMgmt.CheckSalesApprovalPossible(Rec) THEN
                            ApprovalsMgmt.OnSendSalesDocForApproval(Rec);
                    end;
                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel Approval Re&quest';
                    Enabled = CanCancelApprovalForRecord OR CanCancelApprovalForFlow;
                    Image = CancelApprovalRequest;
                    ToolTip = 'Cancel the approval request.';

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit 1535;
                    //WorkflowWebhookManagement: Codeunit "1543";
                    begin
                        ApprovalsMgmt.OnCancelSalesApprovalRequest(Rec);
                        //WorkflowWebhookManagement.FindAndCancel(RECORDID);
                    end;
                }
            }

            group("&Print")
            {
                Caption = '&Print';
                Image = Print;
                action("Work Order")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Work Order';
                    Ellipsis = true;
                    Image = Print;
                    ToolTip = 'Prepare to registers actual item quantities or time used in connection with the sales order. For example, the document can be used by staff who perform any kind of processing work in connection with the sales order. It can also be exported to Excel if you need to process the sales line data further.';

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec, Usage::"Work Order");
                    end;
                }
                action("Pick Instruction")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Pick Instruction';
                    Image = Print;
                    ToolTip = 'Print a picking list that shows which items to pick and ship for the sales order. If an item is assembled to order, then the report includes rows for the assembly components that must be picked. Use this report as a pick instruction to employees in charge of picking sales items or assembly components for the sales order.';

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec, Usage::"Pick Instruction");
                    end;
                }
            }
            group("&Order Confirmation")
            {
                Caption = '&Order Confirmation';
                Image = Email;
                action("Email Confirmation")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Email Confirmation';
                    Ellipsis = true;
                    Image = Email;
                    Promoted = true;
                    PromotedCategory = Category8;
                    ToolTip = 'Send an order confirmation by email. The Send Email window opens prefilled for the customer so you can add or change information before you send the email.';

                    trigger OnAction()
                    begin
                        DocPrint.EmailSalesHeader(Rec);
                    end;
                }
                action("Print Confirmation")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Print Confirmation';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Category8;
                    ToolTip = 'Print an order confirmation. A report request window opens where you can specify what to include on the print-out.';
                    Visible = NOT IsOfficeAddin;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec, Usage::"Order Confirmation");
                    end;
                }
            }
            group(Display)
            {
                Caption = 'Display';
                action(ReportFactBoxVisibility)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show/Hide Power BI Reports';
                    Image = "Report";
                    ToolTip = 'Select if the Power BI FactBox is visible or not.';

                    trigger OnAction()
                    begin
                        // save visibility value into the table
                        //CurrPage."Power BI Report FactBox".PAGE.SetFactBoxVisibility(PowerBIVisible);
                    end;
                }
            }
        }
        area(reporting)
        {
            action("Sales Reservation Avail.")
            {
                ApplicationArea = Reservation;
                Caption = 'Sales Reservation Avail.';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report 209;
                ToolTip = 'View, print, or save an overview of availability of items for shipment on sales documents, filtered on shipment status.';
            }
            action("Customer/ Items Sales")
            {
                Caption = 'Customer/ Items Sales';
                Image = "Report";
                RunObject = Report 113;
            }
            action("Customer Balance /Posting Grp")
            {
                Caption = 'Customer Balance /Posting Grp';
                Image = "Report";
                //RunObject = Report 50014;
            }
            action("Car Sales Analysis By Category")
            {
                Caption = 'Car Sales Analysis By Category';
                Image = "Report";
                //RunObject = Report 50172;
            }
            action("TNL Sales Contribution")
            {
                Caption = 'TNL Sales Contribution';
                Image = "Report";
                RunObject = Report 50184;
            }
            action("Sales Contributions 2")
            {
                Caption = 'Sales Contributions 2';
                Image = "Report";
                //RunObject = Report 50218;
            }
            action("Customer Vehicle Sales")
            {
                Caption = 'Customer Vehicle Sales';
                Image = "Report";
                //RunObject = Report 50328;
            }
            action("TNL Sales Contribution & Warty")
            {
                Caption = 'TNL Sales Contribution & Warty';
                Image = "Report";
                //RunObject = Report 50193;
            }
            action("TNL Sales Cont., Warty & Fleet")
            {
                Caption = 'TNL Sales Cont., Warty & Fleet';
                //RunObject = Report 50324;
            }
            action("Customer Credit Limit analysis")
            {
                Caption = 'Customer Credit Limit analysis';
                Image = "Report";
                //RunObject = Report 50340;
            }
            action("Sales to Staff")
            {
                Caption = 'Sales to Staff';
                Image = "Report";
                //RunObject = Report 50378;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        SetControlVisibility;
        CurrPage.IncomingDocAttachFactBox.PAGE.LoadDataFromRecord(Rec);

        // Contextual Power BI FactBox: send data to filter the report in the FactBox
        //CurrPage."Power BI Report FactBox".PAGE.SetCurrentListSelection("No.", FALSE, PowerBIVisible);
    end;

    trigger OnFindRecord(Which: Text): Boolean
    var
        NextRecNotFound: Boolean;
    begin
        IF NOT Rec.FIND(Which) THEN
            EXIT(FALSE);

        IF ShowHeader THEN
            EXIT(TRUE);

        REPEAT
            NextRecNotFound := Rec.NEXT <= 0;
            IF ShowHeader THEN
                EXIT(TRUE);
        UNTIL NextRecNotFound;

        EXIT(FALSE);
    end;

    trigger OnInit()
    begin
        PowerBIVisible := FALSE;
        //CurrPage."Power BI Report FactBox".PAGE.InitFactBox(CurrPage.OBJECTID(FALSE), CurrPage.CAPTION, PowerBIVisible);
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    var
        NewStepCount: Integer;
    begin
        REPEAT
            NewStepCount := Rec.NEXT(Steps);
        UNTIL (NewStepCount = 0) OR ShowHeader;

        EXIT(NewStepCount);
    end;

    trigger OnOpenPage()
    var
        SalesSetup: Record 311;
        CRMIntegrationManagement: Codeunit 5330;
        OfficeMgt: Codeunit 1630;
    begin
        // IF UserMgt.GetSalesFilter <> '' THEN BEGIN
        //  FILTERGROUP(2);
        //  //SETRANGE("Responsibility Center",UserMgt.GetSalesFilter);
        //  FILTERGROUP(0);
        // END;
        // IF UserRec.GET(USERID) THEN BEGIN
        //  IF UserRec."Sales Order No Series" <> '' THEN
        //    SETFILTER("No.",UserRec."Sales Order No Series");
        //
        // //CurrPage.SalesLines.PAGE.SetUpdateAllowed(CurrPAGE.EDITABLE);
        //
        // END;

        Rec.SETRANGE("Date Filter", 0D, WORKDATE - 1);

        // IF UserSetup.GET(USERID) THEN
        //  IF (UserSetup.Department = '05PARTS')  OR (UserSetup.Department = '09MARKET') THEN
        //    SETFILTER("Shortcut Dimension 1 Code",UserSetup.Department);



        Rec.SETRANGE("Date Filter", 0D, WORKDATE);

        JobQueueActive := SalesSetup.JobQueueActive;
        CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
        IsOfficeAddin := OfficeMgt.IsAvailable;

        Rec.CopySellToCustomerFilter;
    end;

    var
        ApplicationAreaMgmtFacade: Codeunit 9179;
        DocPrint: Codeunit 229;
        ReportPrint: Codeunit 228;
        UserMgt: Codeunit 5700;
        Usage: Option "Order Confirmation","Work Order","Pick Instruction";

        JobQueueActive: Boolean;
        CopySalesDoc: Report 292;
        MoveNegSalesLines: Report 6699;
        ArchiveManagement: Codeunit 5063;
        SalesInfoPaneMgt: Codeunit 7171;
        SalesSetup: Record 311;
        ChangeExchangeRate: Page 511;
        SalesHeader: Record 36;
        UserRec: Record 91;
        UserSetup: Record 91;
        SalesLine: Record 37;
        SalesLine2: Record 37;
        SalesLine3: Record 37;
        SalesOrderAmount: Decimal;
        CustRec: Record 18;
        CustLedgEntry: Record 21;
        FirstDate: Date;
        Diff: Integer;
        CustRec2: Record 18;
        ItemRec: Record 27;
        LocRec: Record 14;
        GPC: Codeunit 50004;
        TotalWithAccessory: Decimal;
        Location: Record 14;
        SalesLine4: Record 37;
        GPC2: Codeunit 50004;
        LineNo: Integer;
        UnitPrice: Decimal;
        MailSent: Boolean;
        approvalmessage: Codeunit 397;
        ToName: Text[250];
        CCName: Text[30];
        Subject: Text[30];
        mailbody: Text[30];
        attachement: Text[30];
        Customer: Record 18;
        Cust2: Record 18;
        Cust: Record 18;
        OpenApprovalEntriesExist: Boolean;
        CRMIntegrationEnabled: Boolean;
        IsOfficeAddin: Boolean;
        CanCancelApprovalForRecord: Boolean;
        SkipLinesWithoutVAT: Boolean;
        PowerBIVisible: Boolean;
        ReadyToPostQst: Label '%1 out of %2 selected orders are ready for post. \Do you want to continue and post them?', Comment = '%1 - selected count, %2 - total count';
        CanRequestApprovalForFlow: Boolean;
        CanCancelApprovalForFlow: Boolean;

    procedure ShowPreview()
    var
        SalesPostYesNo: Codeunit 81;
    begin
        SalesPostYesNo.Preview(Rec);
    end;

    local procedure SetControlVisibility()
    var
        ApprovalsMgmt: Codeunit 1535;
        WorkflowWebhookManagement: Codeunit 1543;
    begin
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RECORDID);

        CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(Rec.RECORDID);

        WorkflowWebhookManagement.GetCanRequestAndCanCancel(Rec.RECORDID, CanRequestApprovalForFlow, CanCancelApprovalForFlow);
    end;

    local procedure Post(PostingCodeunitID: Integer)
    var
        LinesInstructionMgt: Codeunit 1320;
    begin
        IF ApplicationAreaMgmtFacade.IsFoundationEnabled THEN
            LinesInstructionMgt.SalesCheckAllLinesHaveQuantityAssigned(Rec);

        Rec.SendToPosting(PostingCodeunitID);

        CurrPage.UPDATE(FALSE);
    end;

    procedure SkipShowingLinesWithoutVAT()
    begin
        SkipLinesWithoutVAT := TRUE;
    end;

    local procedure ShowHeader(): Boolean
    var
        CashFlowManagement: Codeunit 841;
    begin
        IF NOT SkipLinesWithoutVAT THEN
            EXIT(TRUE);

        EXIT(CashFlowManagement.GetTaxAmountFromSalesOrder(Rec) <> 0);
    end;
}

