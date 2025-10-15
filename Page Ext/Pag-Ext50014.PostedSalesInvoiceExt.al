pageextension 50014 "Posted Sales Invoice Ext" extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Posting Date")
        {
           /*  field("QR Code Data"; Rec."QR Code Data")
            {
                ApplicationArea = All;
                Caption = 'QR Code Data';
                ToolTip = 'QR Code data for e-Invoice';
                Visible = false; // Hidden since it's a blob field
            }
            field("QR Code Image"; Rec."QR Code Image")
            {
                ApplicationArea = All;
                Caption = 'QR Code Image';
                ToolTip = 'QR Code image for e-Invoice';
                Visible = true;
            } */
        }
    }

    actions
    {
        addbefore("Update Document")
        {
            action("Invoice-Vehicle")
            {
                ApplicationArea = All;
                ToolTip = 'Print an invoice for transaction.';
                Image = PrintChecklistReport;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                begin
                    SalesInvHeader.SETRANGE(SalesInvHeader."No.", Rec."No.");
                    IF Rec.FindFirst() THEN
                        REPORT.RUNMODAL(50285, TRUE, TRUE, SalesInvHeader);
                end;
            }

            action("Invoice-Part")
            {
                ApplicationArea = All;
                ToolTip = 'Print an invoice for transaction.';
                Image = PrintChecklistReport;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                begin
                    SalesInvHeader.SETRANGE(SalesInvHeader."No.", Rec."No.");
                    IF Rec.FindFirst() THEN
                        REPORT.RUNMODAL(50040, TRUE, TRUE, SalesInvHeader);
                end;
            }

            action("TCSC Invoice-Part")
            {
                ApplicationArea = All;
                ToolTip = 'Print an invoice for transaction.';
                Image = PrintChecklistReport;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                begin
                    SalesInvHeader.SETRANGE(SalesInvHeader."No.", Rec."No.");
                    IF Rec.FindFirst() THEN
                        REPORT.RUNMODAL(50052, TRUE, TRUE, SalesInvHeader);
                end;
            }
            action(Invoice2ndChannel)
            {
                ApplicationArea = All;
                Caption = 'Invoice - 2nd Channel';
                ToolTip = 'Print an invoice for transaction.';
                Image = PrintChecklistReport;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                begin
                    SalesInvHeader.SETRANGE(SalesInvHeader."No.", Rec."No.");
                    IF Rec.FindFirst() THEN
                        REPORT.RUNMODAL(50029, TRUE, TRUE, SalesInvHeader);
                end;
            }

        }

        addafter(SendCustom)
        {
            action(SendCustomDocs)
            {
                ApplicationArea = All;
                Caption = 'Email Documents';
                ToolTip = 'Send documents to customer by email.';
                Image = PrintChecklistReport;
                PromotedCategory = Category6;
                Promoted = true;

                trigger OnAction()
                var
                    NewSalesInvHeader: Record "Sales Invoice Header";

                begin
                    NewSalesInvHeader.Get(Rec."No.");
                    Rec.SendToCustomer(NewSalesInvHeader);
                end;
            }

            action(GetQRCode)
            {
                ApplicationArea = All;
                Caption = 'Get QR Code';
                ToolTip = 'Get QR Code for e-Invoice.';
                Image = PrintChecklistReport;
                PromotedCategory = Category6;
                Promoted = true;

                trigger OnAction()
                var
                    eInvoiceAPI: Codeunit "e-InvoiceAPI";
                begin
                    eInvoiceAPI.GetIRN(Rec);
                end;
            }

            action(ViewQRCode)
            {
                ApplicationArea = All;
                Caption = 'View QR Code Data';
                ToolTip = 'View the QR Code data stored for this invoice.';
                Image = View;
                PromotedCategory = Category6;
                Promoted = true;

                trigger OnAction()
                var
                    eInvoiceAPI: Codeunit "e-InvoiceAPI";
                    QRData: Text;
                begin
                    //QRData := eInvoiceAPI.DisplayQRCode(Rec);
                    Message('QR Code Data: %1', QRData);
                end;
            }

            action(ExportQRCodeImage)
            {
                ApplicationArea = All;
                Caption = 'Export QR Code Image';
                ToolTip = 'Export the QR Code image for this invoice.';
                Image = ExportFile;
                PromotedCategory = Category6;
                Promoted = true;

                trigger OnAction()
                var
                    eInvoiceAPI: Codeunit "e-InvoiceAPI";
                begin
                    //eInvoiceAPI.ExportQRCodeImage(Rec);
                end;
            }

        }
    }

    var
        SalesInvHeader: Record "Sales Invoice Header";
}
