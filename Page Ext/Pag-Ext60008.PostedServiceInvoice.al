namespace AL_TNL.AL_TNL;

using Microsoft.Service.History;

pageextension 60008 "Posted Service Invoice" extends "Posted Service Invoice"
{
    actions
    {
        addafter("&Print")
        {
            action(PrintVehicle)
            {
                ApplicationArea = All;
                Caption = 'TCSC Invoice';
                ToolTip = 'Print invoice.';
                Image = PrintChecklistReport;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                begin
                    ServiceInvHeader.SETRANGE("No.", Rec."No.");
                    IF ServiceInvHeader.FindFirst() THEN
                        REPORT.RUNMODAL(50616, TRUE, TRUE, ServiceInvHeader);
                end;
            }
        }

    }
    var
        ServiceInvHeader: Record "Service Invoice Header";
}
