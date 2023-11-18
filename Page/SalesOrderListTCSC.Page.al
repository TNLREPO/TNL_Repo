page 70178 "Sales Order List TCSC"
{
    Caption = 'Sales Orders';
    CardPageID = "Sales Order TCSC";
    Editable = false;
    PageType = List;
    SourceTable = Table36;
    SourceTableView = WHERE (Document Type=CONST(Order),
                            Location Code=CONST(120ISO));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                }
                field("Sell-to Customer Name"; "Sell-to Customer Name")
                {
                }
                field("External Document No."; "External Document No.")
                {
                }
                field("Tracker No."; "Tracker No.")
                {
                }
                field("Sell-to Post Code"; "Sell-to Post Code")
                {
                    Visible = false;
                }
                field("Sell-to Country/Region Code"; "Sell-to Country/Region Code")
                {
                    Visible = false;
                }
                field("Sell-to Contact"; "Sell-to Contact")
                {
                    Visible = false;
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    Visible = false;
                }
                field("Bill-to Name"; "Bill-to Name")
                {
                    Visible = false;
                }
                field("Bill-to Post Code"; "Bill-to Post Code")
                {
                    Visible = false;
                }
                field("Bill-to Country/Region Code"; "Bill-to Country/Region Code")
                {
                    Visible = false;
                }
                field("Bill-to Contact"; "Bill-to Contact")
                {
                    Visible = false;
                }
                field("Location Filter"; "Location Filter")
                {
                }
            }
        }
        area(factboxes)
        {
            part(; 9082)
            {
                SubPageLink = No.=FIELD(Bill-to Customer No.),
                              Date Filter=FIELD(Date Filter);
                Visible = true;
            }
            part(;9084)
            {
                SubPageLink = No.=FIELD(Bill-to Customer No.),
                              Date Filter=FIELD(Date Filter);
                Visible = true;
            }
            systempart(;Links)
            {
                Visible = false;
            }
            systempart(v;Notes)
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
                action(Dimensions)
                {
                    AccessByPermission = TableData 348=R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

                    trigger OnAction()
                    begin
                        ShowDocDim;
                    end;
                }
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
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
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
                action("In&vt. Put-away/Pick Lines")
                {
                    Caption = 'In&vt. Put-away/Pick Lines';
                    Image = PickLines;
                    RunObject = Page 5774;
                                    RunPageLink = Source Document=CONST(Sales Order),
                                  Source No.=FIELD(No.);
                    RunPageView = SORTING(Source Document,Source No.,Location Code);
                }
            }
        }
        area(processing)
        {
            group(Release)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                action("Re&lease")
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
                action("Pla&nning")
                {
                    Caption = 'Pla&nning';
                    Image = Planning;

                    trigger OnAction()
                    var
                        SalesOrderPlanningForm: Page "99000883";
                    begin
                        SalesOrderPlanningForm.SetSalesOrder("No.");
                        SalesOrderPlanningForm.RUNMODAL;
                    end;
                }
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
                action("Send IC Sales Order Cnfmn.")
                {
                    AccessByPermission = TableData 410=R;
                    Caption = 'Send IC Sales Order Cnfmn.';
                    Image = IntercompanyOrder;

                    trigger OnAction()
                    var
                        ICInOutboxMgt: Codeunit "427";
                        PurchaseHeader: Record "38";
                    begin
                    end;
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
                    Image = CreatePutawayPick;

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
            }
            group("&Print")
            {
                Caption = '&Print';
                Image = Print;
                action("Work Order")
                {
                    Caption = 'Work Order';
                    Ellipsis = true;
                    Image = Print;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec,Usage::"Work Order");
                    end;
                }
                action("Pick Instruction")
                {
                    Caption = 'Pick Instruction';
                    Image = Print;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec,Usage::"Pick Instruction");
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
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        DocPrint.PrintSalesOrder(Rec,Usage::"Order Confirmation");
                    end;
                }
            }
        }
        area(reporting)
        {
            action("Sales Reservation Avail.")
            {
                Caption = 'Sales Reservation Avail.';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report 209;
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
                RunObject = Report 50014;
            }
            action("Car Sales Analysis By Category")
            {
                Caption = 'Car Sales Analysis By Category';
                Image = "Report";
                RunObject = Report 50172;
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
                RunObject = Report 50218;
            }
            action("Customer Vehicle Sales")
            {
                Caption = 'Customer Vehicle Sales';
                Image = "Report";
                RunObject = Report 50328;
            }
            action("TNL Sales Contribution & Warty")
            {
                Caption = 'TNL Sales Contribution & Warty';
                Image = "Report";
                RunObject = Report 50193;
            }
            action("TNL Sales Cont., Warty & Fleet")
            {
                Caption = 'TNL Sales Cont., Warty & Fleet';
                RunObject = Report 50324;
            }
            action("Customer Credit Limit analysis")
            {
                Caption = 'Customer Credit Limit analysis';
                Image = "Report";
                RunObject = Report 50340;
            }
            action("Sales to Staff")
            {
                Caption = 'Sales to Staff';
                Image = "report";
                RunObject = Report 50378;
            }
        }
    }

    trigger OnOpenPage()
    var
        SalesSetup: Record "311";
    begin
        IF UserMgt.GetSalesFilter <> '' THEN BEGIN
          FILTERGROUP(2);
          //SETRANGE("Responsibility Center",UserMgt.GetSalesFilter);
          FILTERGROUP(0);
        END;
        IF UserRec.GET(USERID) THEN BEGIN
          IF UserRec."Sales Order No Series" <> '' THEN
            SETFILTER("No.",UserRec."Sales Order No Series");

        //CurrPage.SalesLines.PAGE.SetUpdateAllowed(CurrPAGE.EDITABLE);

        END;

        SETRANGE("Date Filter",0D,WORKDATE - 1);

        IF UserSetup.GET(USERID) THEN
          IF (UserSetup.Department = '05PARTS')  OR (UserSetup.Department = '09MARKET') THEN
            SETFILTER("Shortcut Dimension 1 Code",UserSetup.Department);




        SETRANGE("Date Filter",0D,WORKDATE - 1);

        JobQueueActive := SalesSetup.JobQueueActive;


        "Location Code" := '120ISO';
    end;

    var
        DocPrint: Codeunit "229";
        ReportPrint: Codeunit "228";
        UserMgt: Codeunit "5700";
        Usage: Option "Order Confirmation","Work Order","Pick Instruction";
        [InDataSet]
        JobQueueActive: Boolean;
        CopySalesDoc: Report "292";
                          MoveNegSalesLines: Report "6699";
                          ArchiveManagement: Codeunit "5063";
                          SalesInfoPaneMgt: Codeunit "7171";
                          SalesSetup: Record "311";
                          ChangeExchangeRate: Page "511";
                          SalesHeader: Record "36";
                          UserRec: Record "91";
                          UserSetup: Record "91";
                          SalesLine: Record "37";
                          SalesLine2: Record "37";
                          SalesLine3: Record "37";
                          SalesOrderAmount: Decimal;
                          CustRec: Record "18";
                          CustLedgEntry: Record "21";
                          FirstDate: Date;
                          Diff: Integer;
                          CustRec2: Record "18";
                          ItemRec: Record "27";
                          LocRec: Record "14";
                          GPC: Codeunit "50004";
                          TotalWithAccessory: Decimal;
                          Location: Record "14";
                          SalesLine4: Record "37";
                          GPC2: Codeunit "50004";
                          LineNo: Integer;
                          UnitPrice: Decimal;
                          MailSent: Boolean;
                          approvalmessage: Codeunit "397";
                          ToName: Text[250];
                          CCName: Text[30];
                          Subject: Text[30];
                          mailbody: Text[30];
                          attachement: Text[30];
                          Customer: Record "18";
                          Cust2: Record "18";
                          Cust: Record "18";
}

