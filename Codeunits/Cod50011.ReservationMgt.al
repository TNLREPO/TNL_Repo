codeunit 50011 "Reservation Mgt."
{

    EventSubscriberInstance = StaticAutomatic;

    var
        EngineNo: Code[20];
        ExtColorCode: Code[30];
        ModifyRun: Boolean;


    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnRegisterChangeOnChangeTypeInsertOnBeforeInsertReservEntry', '', false, false)]

    local procedure OnRegisterChangeOnChangeTypeInsertOnBeforeInsertReservEntry(var OldTrackingSpecification: Record "Tracking Specification"; var NewTrackingSpecification: Record "Tracking Specification"; var TrackingSpecification: Record "Tracking Specification")

    Begin
        ModifyRun := false;
        EngineNo := NewTrackingSpecification."Engine No.";
        ExtColorCode := NewTrackingSpecification."Exterior Colour Code";

        //Message('I am here');

    End;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Create Reserv. Entry", 'OnAfterSetDates', '', false, false)]

    local procedure OnAfterSetDates(var ReservationEntry: Record "Reservation Entry")

    Begin
        ReservationEntry."Engine No." := EngineNo;
        ReservationEntry."Exterior Colour Code" := ExtColorCode;

        //Message('I am here');
    End;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Create Reserv. Entry", 'OnCreateReservEntryExtraFields', '', false, false)]

    local procedure OnCreateReservEntryExtraFields(var InsertReservEntry: Record "Reservation Entry")

    Begin
        InsertReservEntry."Engine No." := EngineNo;
        InsertReservEntry."Exterior Colour Code" := ExtColorCode;

        //Message('I am here');

    End;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnAfterEntriesAreIdentical', '', false, false)]

    local procedure OnAfterEntriesAreIdentical(ReservEntry1: Record "Reservation Entry"; ReservEntry2: Record "Reservation Entry"; IdenticalArray: array[2] of Boolean)

    Begin
        IdenticalArray[2] :=
        (ReservEntry1."Engine No." = ReservEntry2."Engine No.") AND
        (ReservEntry1."Exterior Colour Code" = ReservEntry2."Exterior Colour Code");

        //Message('I am here');
    End;

    [EventSubscriber(ObjectType::Page, page::"Item Tracking Lines", 'OnAfterCopyTrackingSpec', '', false, false)]

    local procedure OnAfterCopyTrackingSpec(var SourceTrackingSpec: Record "Tracking Specification"; var DestTrkgSpec: Record "Tracking Specification")

    begin

        if ModifyRun = false then begin
            SourceTrackingSpec."Engine No." := DestTrkgSpec."Engine No.";
            SourceTrackingSpec."Exterior Colour Code" := DestTrkgSpec."Exterior Colour Code";

        end else begin
            DestTrkgSpec."Engine No." := SourceTrackingSpec."Engine No.";
            DestTrkgSpec."Exterior Colour Code" := SourceTrackingSpec."Exterior Colour Code";

        end;

        // Message('I am here');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnAfterMoveFields', '', false, false)]

    local procedure OnAfterMoveFields(var TrkgSpec: Record "Tracking Specification"; var ReservEntry: Record "Reservation Entry")

    Begin
        ReservEntry."Engine No." := TrkgSpec."Engine No.";
        ReservEntry."Exterior Colour Code" := TrkgSpec."Exterior Colour Code";

        //Message('I am here');
    End;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertSetupTempSplitItemJnlLine', '', false, false)]

    local procedure OnBeforeInsertSetupTempSplitItemJnlLine(var TempItemJournalLine: Record "Item Journal Line" temporary; var TempTrackingSpecification: Record "Tracking Specification" temporary)

    begin
        TempItemJournalLine."Engine No." := TempTrackingSpecification."Engine No.";
        TempItemJournalLine."Exterior Colour Code" := TempTrackingSpecification."Exterior Colour Code";

        //Message('I am here');

    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', false, false)]

    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line")

    begin
        NewItemLedgEntry."Engine No." := ItemJournalLine."Engine No.";
        NewItemLedgEntry."Exterior Colour Code" := ItemJournalLine."Exterior Colour Code";

        //Message('I am here');

    end;


    [EventSubscriber(ObjectType::Page, page::"Item Tracking Lines", 'OnAfterCopyTrackingSpec', '', false, false)]

    local procedure OnAfterCopyTrackingSpecCustom(var SourceTrackingSpec: Record "Tracking Specification"; var DestTrkgSpec: Record "Tracking Specification")

    Begin

        //Message('I am here');

    End;

}
