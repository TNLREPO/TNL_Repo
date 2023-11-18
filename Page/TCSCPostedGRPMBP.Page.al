page 80071 "TCSC Posted GR,PM,BP"
{
    ApplicationArea = Service;
    Caption = 'Posted Service Invoices';
    CardPageID = "Posted Service Invoice";
    Editable = false;
    PageType = List;
    SourceTable = Table5992;
    SourceTableView = SORTING (Posting Date)
                      ORDER(Descending);
    UsageCategory = History;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field("Order No."; "Order No.")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the number of the related order.';
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the number of the customer who owns the items on the invoice.';
                }
                field(Name; Name)
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the name of the customer on the service invoice.';
                }
                field("Due Date"; "Due Date")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies when the related invoice must be paid.';
                }
                field("Customer Order No."; "Customer Order No.")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Total Line Amount"; "Total Line Amount")
                {
                }
                field("Total Line Amount Incl. (VAT)"; "Total Line Amount Incl. (VAT)")
                {
                }
                field("Total Labour Cost"; "Total Labour Cost")
                {
                    Caption = 'Total GR labour Amount';
                }
                field("Total Item Cost"; "Total Item Cost")
                {
                    Caption = 'Total GR Item Amount';
                }
                field("Total B&P"; "Total B&P")
                {
                }
                field("Total PM"; "Total PM")
                {
                    Caption = 'Total PM Items';
                }
                field("Total GR"; "Total GR")
                {
                    Caption = 'Total PM Labour';
                }
                field("Total B&P Items"; "Total B&P Items")
                {
                }
                field("Received Date"; "Received Date")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Vehicle Classification"; "Vehicle Classification")
                {
                }
                field(Brand; Brand)
                {
                }
                field("Customer Type"; "Customer Type")
                {
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the currency code for the amounts on the invoice.';
                }
                field(Amount; Amount)
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the total invoice amount excluding VAT.';
                }
                field("Amount Including VAT"; "Amount Including VAT")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the total invoice amount including VAT.';
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the postal code.';
                    Visible = false;
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the country/region of the address.';
                    Visible = false;
                }
                field("Contact Name"; "Contact Name")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the name of the contact person at the customer company.';
                    Visible = false;
                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the number of the customer that you send or sent the invoice or credit memo to.';
                    Visible = false;
                }
                field("Bill-to Name"; "Bill-to Name")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the name of the customer that you send or sent the invoice or credit memo to.';
                    Visible = false;
                }
                field("Bill-to Post Code"; "Bill-to Post Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the postal code of the customer''s billing address.';
                    Visible = false;
                }
                field("Bill-to Country/Region Code"; "Bill-to Country/Region Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the country/region code of the customer''s billing address.';
                    Visible = false;
                }
                field("Bill-to Contact"; "Bill-to Contact")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the name of the contact person at the customer''s billing address.';
                    Visible = false;
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies a code for an alternate shipment address if you want to ship to another address than the one that has been entered automatically. This field is also used in case of drop shipment.';
                    Visible = false;
                }
                field("Ship-to Name"; "Ship-to Name")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the name of the customer at the address that the items are shipped to.';
                    Visible = false;
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the postal code of the address that the items are shipped to.';
                    Visible = false;
                }
                field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the country/region code of the address that the items are shipped to.';
                    Visible = false;
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the name of the contact person at the address that the items are shipped to.';
                    Visible = false;
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the date when the invoice was posted.';
                    Visible = false;
                }
                field("Salesperson Code"; "Salesperson Code")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the code of the salesperson associated with the invoice.';
                    Visible = false;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    ApplicationArea = Dimensions;
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                    Visible = false;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    ApplicationArea = Dimensions;
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                    Visible = false;
                }
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = Location;
                    ToolTip = 'Specifies the location, such as warehouse or distribution center, from which the service was shipped.';
                    Visible = true;
                }
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = Service;
                    ToolTip = 'Specifies the date when the related document was created.';
                    Visible = false;
                }
                field("Document Exchange Status"; "Document Exchange Status")
                {
                    ApplicationArea = Service;
                    Editable = false;
                    StyleExpr = DocExchStatusStyle;
                    ToolTip = 'Specifies the status of the document if you are using a document exchange service to send it as an electronic document. The status values are reported by the document exchange service.';
                    Visible = DocExchStatusVisible;

                    trigger OnDrillDown()
                    var
                        DocExchServDocStatus: Codeunit "1420";
                    begin
                        DocExchServDocStatus.DocExchStatusDrillDown(Rec);
                    end;
                }
            }
            systempart(; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(; Notes)
            {
                ApplicationArea = Notes;
                Visible = true;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Invoice")
            {
                Caption = '&Invoice';
                Image = Invoice;
                action(Statistics)
                {
                    ApplicationArea = Service;
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page 6033;
                    RunPageLink = No.=FIELD(No.);
                    ShortCutKey = 'F7';
                    ToolTip = 'View statistical information, such as the value of posted entries, for the record.';
                }
                action("Co&mments")
                {
                    ApplicationArea = Comments;
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page 5911;
                                    RunPageLink = Table Name=CONST(Service Invoice Header),
                                  No.=FIELD(No.),
                                  Type=CONST(General);
                    ToolTip = 'View or add comments for the record.';
                }
                action(Dimensions)
                {
                    AccessByPermission = TableData 348=R;
                    ApplicationArea = Dimensions;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    ToolTip = 'View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyze transaction history.';

                    trigger OnAction()
                    begin
                        ShowDimensions;
                        CurrPage.SAVERECORD;
                    end;
                }
            }
        }
        area(processing)
        {
            action(SendCustom)
            {
                ApplicationArea = Service;
                Caption = 'Send';
                Ellipsis = true;
                Image = SendToMultiple;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Prepare to send the document according to the customer''s sending profile, such as attached to an email. The Send document to window opens first so you can confirm or select a sending profile.';

                trigger OnAction()
                begin
                    ServiceInvHeader := Rec;
                    CurrPage.SETSELECTIONFILTER(ServiceInvHeader);
                    ServiceInvHeader.SendRecords;
                end;
            }
            action("&Print")
            {
                ApplicationArea = Service;
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Prepare to print the document. A report request window for the document opens where you can specify what to include on the print-out.';

                trigger OnAction()
                begin
                    CurrPage.SETSELECTIONFILTER(ServiceInvHeader);
                    ServiceInvHeader.PrintRecords(TRUE);
                end;
            }
            action("Serv. Inv TCSC")
            {
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Report 50616;

    trigger OnAction()
    begin
        // ServiceInvHeader3.SETRANGE("No.",ServiceInvHeader3."No.");
        // IF ServiceInvHeader3.FINDFIRST THEN
        //  REPORT.RUN(50616,TRUE,TRUE,ServiceInvHeader3);
    end;
            }
            action("&Navigate")
            {
                ApplicationArea = Service;
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Find all entries and documents that exist for the document number and posting date on the selected entry or document.';

                trigger OnAction()
                begin
                    Navigate;
                end;
            }
            action(ActivityLog)
            {
                ApplicationArea = Service;
                Caption = 'Activity Log';
                Image = Log;
                ToolTip = 'View the status and any errors if the document was sent as an electronic document or OCR file through the document exchange service.';

                trigger OnAction()
                begin
                    ShowActivityLog;
                end;
            }
            action("Update Document")
            {
                ApplicationArea = Basic,Suite;
                Caption = 'Update Document';
                Image = Edit;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                ToolTip = 'Add new information that is relevant to the document, such as a payment reference. You can only edit a few fields because the document has already been posted.';

                trigger OnAction()
                var
                    PostedServiceInvUpdate: Page "1356";
                begin
                    PostedServiceInvUpdate.LOOKUPMODE := TRUE;
                    PostedServiceInvUpdate.SetRec(Rec);
                    PostedServiceInvUpdate.RUNMODAL;
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        DocExchStatusStyle := GetDocExchStatusStyle;
    end;

    trigger OnAfterGetRecord()
    begin
        DocExchStatusStyle := GetDocExchStatusStyle;
    end;

    trigger OnOpenPage()
    var
        ServiceInvoiceHeader: Record "5992";
    begin
        SetSecurityFilterOnRespCenter;

        ServiceInvoiceHeader.COPYFILTERS(Rec);
        ServiceInvoiceHeader.SETFILTER("Document Exchange Status",'<>%1',"Document Exchange Status"::"Not Sent");
        DocExchStatusVisible := NOT ServiceInvoiceHeader.ISEMPTY;
    end;

    var
        ServiceInvHeader: Record "5992";
        DocExchStatusStyle: Text;
        DocExchStatusVisible: Boolean;
}

