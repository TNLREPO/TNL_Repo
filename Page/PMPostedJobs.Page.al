page 80069 "PM Posted Jobs"
{
    Caption = 'Posted Service Invoices';
    CardPageID = "Posted Service Invoice";
    Editable = false;
    PageType = List;
    SourceTable = Table5992;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field(Name; Name)
                {
                }
                field("Currency Code"; "Currency Code")
                {
                }
                field("Post Code"; "Post Code")
                {
                    Visible = false;
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    Visible = false;
                }
                field("Contact Name"; "Contact Name")
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
                field("Ship-to Name"; "Ship-to Name")
                {
                    Visible = false;
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                    Visible = false;
                }
                field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                {
                    Visible = false;
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                    Visible = false;
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Salesperson Code"; "Salesperson Code")
                {
                    Visible = false;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;
                }
                field("Location Code"; "Location Code")
                {
                    Visible = true;
                }
                field("Document Date"; "Document Date")
                {
                    Visible = false;
                }
                field("Due Date"; "Due Date")
                {
                    Visible = false;
                }
                field("Order No."; "Order No.")
                {
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
                field("Total Discount Amount"; "Total Discount Amount")
                {
                }
                field("Total PM"; "Total PM")
                {
                    Caption = 'Total PM item Amount';
                }
                field("Total GR"; "Total GR")
                {
                    Caption = 'Total PM Labour Amount';
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
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page 6033;
                    RunPageLink = No.=FIELD(No.);
                    ShortCutKey = 'F7';
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page 5911;
                                    RunPageLink = Table Name=CONST(Service Invoice Header),
                                  No.=FIELD(No.),
                                  Type=CONST(General);
                }
                action(Dimensions)
                {
                    AccessByPermission = TableData 348=R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';

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
            action("&Print")
            {
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    CurrPage.SETSELECTIONFILTER(ServiceInvHeader);
                    ServiceInvHeader.PrintRecords(TRUE);
                end;
            }
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Navigate;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        SetSecurityFilterOnRespCenter;
    end;

    var
        ServiceInvHeader: Record "5992";
}

