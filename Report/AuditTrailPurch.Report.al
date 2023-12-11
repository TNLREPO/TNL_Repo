report 50429 "Audit Trail Purch"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AuditTrailPurch.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5805)
        {
            RequestFilterFields = "Applies-to Doc. Type", "Applies-to Doc. No.";
            column(ItemNo_ItemChargeAssignmentPurch; "Item Charge Assignment (Purch)"."Item No.")
            {
            }
            column(Description_ItemChargeAssignmentPurch; "Item Charge Assignment (Purch)".Description)
            {
            }
            column(AmounttoAssign_ItemChargeAssignmentPurch; "Item Charge Assignment (Purch)"."Amount to Assign")
            {
            }
            column(QtyReceivedBase; QtyReceivedBase)
            {
            }

            trigger OnAfterGetRecord()
            begin
                UpdateQty;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        PurchLine: Record 39;
        PurchLine2: Record 39;
        PurchRcptLine: Record "121";
        ReturnShptLine: Record "6651";
        TransferRcptLine: Record "5747";
        SalesShptLine: Record "111";
        ReturnRcptLine: Record "6661";
        AssignableQty: Decimal;
        TotalQtyToAssign: Decimal;
        RemQtyToAssign: Decimal;
        AssgntAmount: Decimal;
        TotalAmountToAssign: Decimal;
        RemAmountToAssign: Decimal;
        QtyToReceiveBase: Decimal;
        QtyReceivedBase: Decimal;
        QtyToShipBase: Decimal;
        QtyShippedBase: Decimal;
        DataCaption: Text[250];
        Text000: Label 'The sign of %1 must be the same as the sign of %2 of the item charge.';
        Text001: Label 'The Rem. to Assign amount is %1. It must be zero before you can post %2 %3.\ \Are you sure that you want to close the window?', Comment = '%2 = Document Type, %3 = Document No.';

    local procedure UpdateQty()
    begin
        CASE "Item Charge Assignment (Purch)"."Applies-to Doc. Type" OF
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::Order, "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::Invoice:
                BEGIN
                    PurchLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. Type", "Item Charge Assignment (Purch)"."Applies-to Doc. No.",
                    "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := PurchLine."Qty. to Receive (Base)";
                    QtyReceivedBase := PurchLine."Qty. Received (Base)";
                    QtyToShipBase := 0;
                    QtyShippedBase := 0;
                END;
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::"Return Order", "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::"Credit Memo":
                BEGIN
                    PurchLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. Type", "Item Charge Assignment (Purch)"."Applies-to Doc. No.",
                    "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := 0;
                    QtyReceivedBase := 0;
                    QtyToShipBase := PurchLine."Return Qty. to Ship (Base)";
                    QtyShippedBase := PurchLine."Return Qty. Shipped (Base)";
                END;
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::Receipt:
                BEGIN
                    PurchRcptLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. No.", "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := 0;
                    QtyReceivedBase := PurchRcptLine."Quantity (Base)";
                    QtyToShipBase := 0;
                    QtyShippedBase := 0;
                END;
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::"Return Shipment":
                BEGIN
                    ReturnShptLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. No.", "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := 0;
                    QtyReceivedBase := 0;
                    QtyToShipBase := 0;
                    QtyShippedBase := ReturnShptLine."Quantity (Base)";
                END;
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::"Transfer Receipt":
                BEGIN
                    TransferRcptLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. No.", "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := 0;
                    QtyReceivedBase := TransferRcptLine.Quantity;
                    QtyToShipBase := 0;
                    QtyShippedBase := 0;
                END;
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::"Sales Shipment":
                BEGIN
                    SalesShptLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. No.", "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := 0;
                    QtyReceivedBase := 0;
                    QtyToShipBase := 0;
                    QtyShippedBase := SalesShptLine."Quantity (Base)";
                END;
            "Item Charge Assignment (Purch)"."Applies-to Doc. Type"::"Return Receipt":
                BEGIN
                    ReturnRcptLine.GET("Item Charge Assignment (Purch)"."Applies-to Doc. No.", "Item Charge Assignment (Purch)"."Applies-to Doc. Line No.");
                    QtyToReceiveBase := 0;
                    QtyReceivedBase := ReturnRcptLine."Quantity (Base)";
                    QtyToShipBase := 0;
                    QtyShippedBase := 0;
                END;
        END;
    end;

    [Scope('Internal')]
    procedure Initialize(NewPurchLine: Record 39; NewLineAmt: Decimal)
    begin
        PurchLine2 := NewPurchLine;
        DataCaption := PurchLine2."No." + ' ' + PurchLine2.Description;
        AssgntAmount := NewLineAmt;
    end;
}

