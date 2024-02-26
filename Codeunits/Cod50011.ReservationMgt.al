codeunit 50011 "Reservation Mgt."
{

    var

    Var
        EngineNo: Code[20];
        ExtColorCode: Code[30];
        ModifyRun: Boolean;

    //Update custom field values For New Insert value Updated in Reservation Entry
    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnRegisterChangeOnChangeTypeInsertOnBeforeInsertReservEntry', '', false, false)]
    local procedure OnRegisterChangeOnChangeTypeInsertOnBeforeInsertReservEntry(var OldTrackingSpecification: Record "Tracking Specification"; var NewTrackingSpecification: Record "Tracking Specification")
    Begin
        ModifyRun := false;
        EngineNo := NewTrackingSpecification."Engine No.";
        ExtColorCode := NewTrackingSpecification."Exterior Colour Code";
    End;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Reserv. Entry", 'OnAfterSetDates', '', false, false)]
    local procedure OnAfterSetDates(var ReservationEntry: Record "Reservation Entry")
    Begin
        ReservationEntry."Engine No." := EngineNo;
        ReservationEntry."Exterior Colour Code" := ExtColorCode;
    End;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Reserv. Entry", 'OnCreateReservEntryExtraFields', '', false, false)]
    local procedure OnCreateReservEntryExtraFields(var InsertReservEntry: Record "Reservation Entry"; OldTrackingSpecification: Record "Tracking Specification"; NewTrackingSpecification: Record "Tracking Specification")
    Begin
        InsertReservEntry."Engine No." := NewTrackingSpecification."Engine No.";
        InsertReservEntry."Exterior Colour Code" := NewTrackingSpecification."Exterior Colour Code";
    End;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnAfterCopyTrackingSpec', '', false, false)]
    local procedure OnAfterCopyTrackingSpec(var SourceTrackingSpec: Record "Tracking Specification"; var DestTrkgSpec: Record "Tracking Specification")
    Begin
        If ModifyRun = false then begin
            SourceTrackingSpec."Engine No." := DestTrkgSpec."Engine No.";
            SourceTrackingSpec."Exterior Colour Code" := DestTrkgSpec."Exterior Colour Code";

        end else begin
            //For Modified value flow
            DestTrkgSpec."Engine No." := SourceTrackingSpec."Engine No.";
            DestTrkgSpec."Exterior Colour Code" := SourceTrackingSpec."Exterior Colour Code";
        end;
    End;


    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnRegisterItemTrackingLinesOnBeforeInsert', '', false, false)]
    local procedure OnRegisterItemTrackingLinesOnBeforeInsert(var TrackingSpecification: Record "Tracking Specification"; var TempTrackingSpecification: Record "Tracking Specification" temporary; SourceTrackingSpecification: Record "Tracking Specification")
    Begin
        TrackingSpecification."Engine No." := TempTrackingSpecification."Engine No.";
        TrackingSpecification."Exterior Colour Code" := TempTrackingSpecification."Exterior Colour Code";
    End;



    //Update modified custom field values For New Insert value Updated in Reservation Entry

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnAfterEntriesAreIdentical', '', false, false)]
    local procedure OnAfterEntriesAreIdentical(ReservEntry1: Record "Reservation Entry"; ReservEntry2: Record "Reservation Entry"; var IdenticalArray: array[2] of Boolean)
    Begin
        IdenticalArray[2] :=
            (ReservEntry1."Engine No." = ReservEntry2."Engine No.") and
            (ReservEntry1."Exterior Colour Code" = ReservEntry2."Exterior Colour Code")
    End;

    // [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnRegisterChangeOnBeforeAddItemTrackingToTempRecSet', '', false, false)]
    // local procedure OnRegisterChangeOnBeforeAddItemTrackingToTempRecSet(var OldTrackingSpecification: Record "Tracking Specification"; var NewTrackingSpecification: Record "Tracking Specification")
    // Begin
    //     OldTrackingSpecification."Engine No." := NewTrackingSpecification."Engine No.";
    //     OldTrackingSpecification."Exterior Colour Code" := NewTrackingSpecification."Exterior Colour Code";
    // End;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnAfterMoveFields', '', false, false)]
    local procedure OnAfterMoveFields(var TrkgSpec: Record "Tracking Specification"; var ReservEntry: Record "Reservation Entry")
    Begin
        ReservEntry."Engine No." := TrkgSpec."Engine No.";
        ReservEntry."Exterior Colour Code" := TrkgSpec."Exterior Colour Code";
    End;

    //Custom Values flow to ILE
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertSetupTempSplitItemJnlLine', '', false, false)]
    local procedure OnBeforeInsertSetupTempSplitItemJnlLine(var TempItemJournalLine: Record "Item Journal Line" temporary; var TempTrackingSpecification: Record "Tracking Specification" temporary)
    Begin
        TempItemJournalLine."Engine No." := TempTrackingSpecification."Engine No.";
        TempItemJournalLine."Exterior Colour Code" := TempTrackingSpecification."Exterior Colour Code";
    End;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', false, false)]
    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line")
    Begin
        NewItemLedgEntry."Engine No." := ItemJournalLine."Engine No.";
        NewItemLedgEntry."Exterior Colour Code" := ItemJournalLine."Exterior Colour Code";
    End;

    //Assign Custom Values to Sales Shipments
    [EventSubscriber(ObjectType::Table, Database::"Tracking Specification", 'OnAfterValidateEvent', 'Lot No.', false, false)]
    local procedure TrackingSpecificatioOnAfterValidateEventLotNo(var Rec: Record "Tracking Specification")
    var
        ItemLedgerEntry: Record "Item Ledger Entry";
        ItemLedgerEntry2: Record "Item Ledger Entry";
    Begin
        ItemLedgerEntry2.Reset();
        ItemLedgerEntry2.SetRange("Lot No.", Rec."Lot No.");
        If ItemLedgerEntry2.FindFirst() then begin

            Rec."Engine No." := ItemLedgerEntry2."Engine No.";
            Rec."Exterior Colour Code" := ItemLedgerEntry2."Exterior Colour Code";

        end;
    End;

}
