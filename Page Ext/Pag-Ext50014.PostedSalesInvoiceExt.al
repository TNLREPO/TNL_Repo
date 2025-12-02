pageextension 50014 "Posted Sales Invoice Ext" extends "Posted Sales Invoice"
{
    layout
    {

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

            action(SendInvoiceToFIRS)
            {
                ApplicationArea = All;
                Caption = 'Send Invoice to FIRS';
                ToolTip = 'Send Invoice to FIRS';
                Image = SendAsPDF;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                var

                begin
                    Rec.SendeInvoiceToFIRS()
                end;
            }


        }
    }

    var
        SalesInvHeader: Record "Sales Invoice Header";

}
