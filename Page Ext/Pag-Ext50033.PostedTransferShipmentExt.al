namespace AL_TNL.AL_TNL;

using Microsoft.Inventory.Transfer;

pageextension 50033 "Posted Transfer Shipment Ext" extends "Posted Transfer Shipment"
{
    actions
    {
        addafter("&Print")
        {
            action(PrintVehicle)
            {
                ApplicationArea = All;
                Caption = 'Print -Vehicle';
                ToolTip = 'Print vehicle transfer shipment.';
                Image = PrintChecklistReport;
                PromotedCategory = Process;
                Promoted = true;

                trigger OnAction()
                begin
                    TransferShipHeader.SETRANGE("No.", Rec."No.");
                    IF Rec.FindFirst() THEN
                        REPORT.RUNMODAL(50032, TRUE, TRUE, TransferShipHeader);
                end;
            }
        }

    }
    var
        TransferShipHeader: Record "Transfer Shipment Header";
}
