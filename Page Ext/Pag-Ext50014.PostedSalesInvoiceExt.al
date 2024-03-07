pageextension 50014 "Posted Sales Invoice Ext" extends "Posted Sales Invoice"
{
    actions
    {
        addlast(navigation)
        {
            group(Category11)
            {
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
    }
}
