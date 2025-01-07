pageextension 50014 "Posted Sales Invoice Ext" extends "Posted Sales Invoice"
{
    actions
    {
        addlast(navigation)
        {
            group(Category_Document)
            {
                Caption = 'Document';
                action("Invoice-Vehicle")
                {
                    ApplicationArea = All;
                    ToolTip = 'Print an invoice for transaction.';
                    Image = PrintChecklistReport;
                    PromotedCategory = Category11;
                    Promoted = true;

                    trigger OnAction()
                    begin
                        SalesInvHeader.SETRANGE(SalesInvHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50010, TRUE, TRUE, SalesInvHeader);
                    end;
                }

                action("Invoice-Part")
                {
                    ApplicationArea = All;
                    ToolTip = 'Print an invoice for transaction.';
                    Image = PrintChecklistReport;
                    PromotedCategory = Category11;
                    Promoted = true;

                    trigger OnAction()
                    begin
                        SalesInvHeader.SETRANGE(SalesInvHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50040, TRUE, TRUE, SalesInvHeader);
                    end;
                }


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

        }
    }
}
