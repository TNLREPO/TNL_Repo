report 50398 "VRI Transfer"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VRITransfer.rdlc';

    dataset
    {
        dataitem(DataItem5444; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(Integer_Number; Number)
            {
            }
            column(Integer_Number_Control1000000011; Number)
            {
            }
            column(IntegerCaption; IntegerCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Integer_Number_Control1000000011Caption; FIELDCAPTION(Number))
            {
            }
            column(Integer_NumberCaption; FIELDCAPTION(Number))
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineNo := 10000;
                VRIRec.SETCURRENTKEY("VRI Location", Transferred, "Pass to Sales/Marketing", Arrived, "Problem Vehicle", Sold);
                VRIRec.SETRANGE("VRI Location", FromLoc);
                VRIRec.SETRANGE(Transferred, FALSE);
                VRIRec.SETRANGE("Pass to Sales/Marketing", TRUE);
                VRIRec.SETRANGE(Arrived, TRUE);
                VRIRec.SETRANGE("Problem Vehicle", FALSE);
                VRIRec.SETRANGE(Sold, FALSE);
                IF VRIRec.FINDFIRST THEN
                    TransHead.INIT;
                TransHead."Transfer-from Code" := FromLoc;
                TransHead."Transfer-to Code" := ToLoc;
                TransHead."In-Transit Code" := 'TRANSIT';
                TransHead."Posting Date" := TODAY;
                TransHead.INSERT(TRUE);
                BEGIN
                    REPEAT
                        ItemLedgEntry.SETCURRENTKEY("Serial No.", "Location Code", Open);
                        ItemLedgEntry.SETRANGE("Serial No.", VRIRec."Item Serial No.");
                        ItemLedgEntry.SETRANGE("Location Code", FromLoc);
                        ItemLedgEntry.SETRANGE(Open, TRUE);
                        IF ItemLedgEntry.FINDLAST THEN BEGIN
                            TransLine.INIT;
                            TransLine."Document No." := TransHead."No.";
                            TransLine."Transfer-from Code" := FromLoc;
                            TransLine."Transfer-to Code" := ToLoc;
                            TransLine."In-Transit Code" := 'TRANSIT';
                            TransLine."Shipment Date" := TransHead."Shipment Date";
                            TransLine."Receipt Date" := TransHead."Receipt Date";
                            TransLine.Status := TransHead.Status;
                            TransLine."Line No." := LineNo;
                            TransLine.VALIDATE("Item No.", ItemLedgEntry."Item No.");
                            TransLine.VALIDATE(Quantity, ItemLedgEntry.Quantity);
                            TransLine."Shortcut Dimension 1 Code" := TransHead."Shortcut Dimension 1 Code";
                            TransLine."Shortcut Dimension 2 Code" := TransHead."Shortcut Dimension 2 Code";
                            TransLine.INSERT;

                            IF ReservRec2.FINDLAST THEN
                                ReservNo := ReservRec2."Entry No.";
                            ReservNo := ReservNo + 1;

                            ReservRec.INIT;
                            ReservRec."Entry No." := ReservNo;
                            ReservRec.Positive := FALSE;
                            ReservRec."Item No." := ItemLedgEntry."Item No.";
                            ReservRec."Location Code" := FromLoc;
                            ReservRec.VALIDATE(ReservRec."Quantity (Base)", -1);
                            ReservRec."Reservation Status" := ReservRec."Reservation Status"::Surplus;
                            ReservRec.Description := ItemLedgEntry.Description;
                            ReservRec."Creation Date" := WORKDATE;
                            ReservRec."Source ID" := TransHead."No.";
                            ReservRec."Source Ref. No." := LineNo;
                            ReservRec."Serial No." := ItemLedgEntry."Serial No.";
                            ReservRec."Created By" := USERID;
                            ReservRec.VALIDATE(ReservRec.Quantity, -1);
                            ReservRec."Source Type" := 5741;
                            ReservRec."Source Subtype" := 0;
                            ReservRec."Item Tracking" := ReservRec."Item Tracking"::"Serial No.";
                            ReservRec."Shipment Date" := TransHead."Shipment Date";
                            ReservRec."Expected Receipt Date" := 0D;
                            ReservRec."Engine No." := ItemLedgEntry."Engine No.";
                            ReservRec."Registration No." := ItemLedgEntry."Registration No.";
                            ReservRec."Chasis No." := ItemLedgEntry."Chassis No.";
                            ReservRec."Exterior Colour Code" := ItemLedgEntry."Exterior Colour Code";
                            ReservRec."Exterior Colour Name" := ItemLedgEntry."Exterior Colour Name";
                            ReservRec."Key No." := ItemLedgEntry."Key No.";
                            ReservRec.INSERT;
                            ReservNo := ReservNo + 1;
                            ReservRec."Entry No." := ReservNo;
                            ReservRec.Positive := TRUE;
                            ReservRec."Location Code" := ToLoc;
                            ReservRec.VALIDATE(ReservRec."Quantity (Base)", 1);
                            ReservRec.VALIDATE(ReservRec.Quantity, 1);
                            ReservRec."Shipment Date" := 0D;
                            ReservRec."Expected Receipt Date" := TransHead."Receipt Date";
                            ReservRec."Source Subtype" := 1;
                            ReservRec.INSERT;
                        END;
                        LineNo += 10000;
                    UNTIL VRIRec.NEXT = 0;
                END;
            end;

            trigger OnPostDataItem()
            begin
                VRIRec2.SETCURRENTKEY("VRI Location", Transferred, "Pass to Sales/Marketing", Arrived, "Problem Vehicle", Sold);
                VRIRec2.SETRANGE("VRI Location", FromLoc);
                VRIRec2.SETRANGE(Transferred, FALSE);
                VRIRec2.SETRANGE("Pass to Sales/Marketing", TRUE);
                VRIRec2.SETRANGE(Arrived, TRUE);
                VRIRec2.SETRANGE("Problem Vehicle", FALSE);
                VRIRec.SETRANGE(Sold, FALSE);
                IF VRIRec2.FINDFIRST THEN BEGIN
                    VRIRec2.MODIFYALL(Transferred, TRUE);
                    VRIRec2.MODIFYALL("Transferred Date/Time", CURRENTDATETIME);
                END;
                MESSAGE('Transfer completed!');
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO(Number);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Transfer From"; FromLoc)
                    {

                        trigger OnLookup(var Text: Text): Boolean
                        begin

                            VRIRec.SETCURRENTKEY("Pass to Sales/Marketing", Arrived, "Problem Vehicle", Transferred);
                            VRIRec.SETRANGE("Pass to Sales/Marketing", TRUE);
                            VRIRec.SETRANGE(Arrived, TRUE);
                            VRIRec.SETRANGE("Problem Vehicle", FALSE);
                            VRIRec.SETRANGE(Transferred, FALSE);
                            IF PAGE.RUNMODAL(50262, VRIRec2) = ACTION::LookupOK THEN
                                FromLoc := VRIRec2."VRI Location";
                        end;
                    }
                    field("Transfer To"; ToLoc)
                    {

                        trigger OnLookup(var Text: Text): Boolean
                        begin

                            IF PAGE.RUNMODAL(0, LocationRec) = ACTION::LookupOK THEN
                                ToLoc := LocationRec.Code;
                        end;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        //REPORT.RUNMODAL(50407);
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        FromLoc: Code[10];
        ToLoc: Code[10];
        ItemLedgEntry: Record 32;
        TransHead: Record "5740";
        TransLine: Record 5741;
        ReservRec: Record 337;
        ReservRec2: Record 337;
        ReservNo: Integer;
        VRIRec: Record "50058";
        VRIRec2: Record "50058";
        LocationRec: Record "14";
        LineNo: Integer;
        IntegerCaptionLbl: Label 'Integer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

