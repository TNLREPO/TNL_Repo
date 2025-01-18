codeunit 50000 MySubscribers
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, 17, 'OnAfterCopyGLEntryFromGenJnlLine', '', false, false)]

    procedure UpdateGLEntry_OnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line")

    var

    begin

        GLEntry."Procument No." := GenJournalLine."Procurement No.";
    end;


    [EventSubscriber(ObjectType::Table, 21, 'OnAfterCopyCustLedgerEntryFromGenJnlLine', '', false, false)]

    procedure UpdateCustLedEntry_OnAfterCopyCustLedgerEntryFromGenJnlLine(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")

    var


    Begin
        CustLedgerEntry."Serial No" := GenJournalLine."Serial No";
        CustLedgerEntry."Loan ID" := GenJournalLine."Loan ID";
        CustLedgerEntry."Loan Type" := GenJournalLine."Loan Type";
    End;


    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Location Code', true, true)]

    procedure LocationCode_OnValidate(VAR Rec: Record "Sales Line"; VAR xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        SalesLine: Record "Sales Line";
        Location: Record Location;
        UserSetup: Record "User Setup";

    begin
        IF Location.GET(SalesLine."Location Code") THEN
            IF Location."With Accessory" THEN
                SalesLine.Accessory := TRUE ELSE
                SalesLine.Accessory := FALSE;

        IF Location.GET(SalesLine."Location Code") THEN
            IF Location."VRI Location" = TRUE THEN
                MESSAGE('You are picking from a VRI Location!');

        UserSetup.GET(USERID);
        IF ((SalesLine.Type = SalesLine.Type::Item) AND (SalesLine."Posting Group" = 'N_CARS')) THEN BEGIN
            IF Location.GET(SalesLine."Location Code") THEN BEGIN
                IF (Location."Monitored Location" = TRUE) AND (UserSetup."Access to Monitor Location" = FALSE) THEN
                    ERROR('You are not allowed to sell from this Location. Please Contact your Superior for Authorization!')
            END
        end;
    end;

    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Quantity', true, true)]

    procedure Quantity_OnValidate(VAR Rec: Record "Sales Line"; VAR xRec: Record "Sales Line"; CurrFieldNo: Integer)

    var
        SalesLine: Record "Sales Line";
        PurchInvLine: Record "Purch. Inv. Line";

    begin
        IF SalesLine."Variant Code" = 'AIR' THEN BEGIN
            PurchInvLine.SETRANGE("No.", SalesLine."No.");
            IF PurchInvLine.FINDLAST THEN
                SalesLine.Validate("Unit Price", PurchInvLine."Total Retail Price Excl. VAT");
        END;
    end;

    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Variant Code', true, true)]

    procedure VariantCode_OnValidate(VAR Rec: Record "Sales Line"; VAR xRec: Record "Sales Line"; CurrFieldNo: Integer)

    var
        SalesLine: Record "Sales Line";
        PurchInvLine: Record "Purch. Inv. Line";

    begin
        IF SalesLine."Variant Code" = 'AIR' THEN BEGIN
            PurchInvLine.SETRANGE("No.", SalesLine."No.");
            IF PurchInvLine.FINDLAST THEN
                SalesLine.Validate("Unit Price", PurchInvLine."Total Retail Price Excl. VAT");
        END;
    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterValidateEvent', 'Direct Unit Cost', true, true)]

    procedure DirectUnitCost_OnAfterValidate(VAR Rec: Record "Purchase Line"; VAR xRec: Record "Purchase Line"; CurrFieldNo: Integer)

    var
        PurchLine: Record "Purchase Line";
        Item: Record Item;

    begin
        IF Item.GET(PurchLine."No.") THEN BEGIN
            // "Landing Cost" := Item."Factor (Air)" * "Direct Unit Cost";
            PurchLine."Landing Cost" := 1.7 * PurchLine."Direct Unit Cost";
            PurchLine."Landing Cost (LCY)" := PurchLine."Landing Cost" * 400;
            PurchLine."Profit Margin" := PurchLine."Landing Cost (LCY)" * 0.15;
            PurchLine."Total Retail Price Excl. VAT" := PurchLine."Landing Cost (LCY)" + PurchLine."Profit Margin";
            PurchLine."VAT on Retail Price" := PurchLine."Total Retail Price Excl. VAT" * 0.05;
            PurchLine."Total Retail Price Inclu. VAT" := PurchLine."Total Retail Price Excl. VAT" + PurchLine."VAT on Retail Price";
        END;

    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnCopyFromItemOnAfterCheck', '', true, true)]

    procedure Add_OnCopyFromItemOnAfterCheck(PurchaseLine: Record "Purchase Line"; Item: Record Item)

    var

    Begin
        PurchaseLine.Colour := Item."Pre-Owned Colour";
        PurchaseLine."Year of Production" := Item."Year of Production";
        PurchaseLine."Estimated Mileage" := Item."Estimated Mileage";
    End;

    [EventSubscriber(ObjectType::Table, 83, 'OnAfterCopyItemJnlLineFromPurchHeader', '', true, true)]

    procedure Add_OnAfterCopyItemJnlLineFromPurchHeader(VAR ItemJnlLine: Record "Item Journal Line"; PurchHeader: Record "Purchase Header")

    var

    begin
        ItemJnlLine.Description := PurchHeader."Posting Description";
    end;

    [EventSubscriber(ObjectType::Table, 83, 'OnAfterCopyItemJnlLineFromPurchLine', '', true, true)]

    procedure Add_OnAfterCopyItemJnlLineFromPurchLine(VAR ItemJnlLine: Record "Item Journal Line"; PurchLine: Record "Purchase Line")

    var

    begin
        ItemJnlLine."Year of Production" := PurchLine."Year of Production";
    end;

    [EventSubscriber(ObjectType::Table, 383, 'OnAfterCopyFromGenJnlLine', '', true, true)]

    procedure Add_OnAfterCopyFromGenJnlLine(VAR DtldCVLedgEntryBuffer: Record 383; GenJnlLine: Record "Gen. Journal Line")

    var

    begin
        DtldCVLedgEntryBuffer."Loan ID" := GenJnlLine."Loan ID";
    end;

    [EventSubscriber(ObjectType::Table, 5740, 'OnAfterCheckBeforePost', '', true, true)]

    procedure Add_OnAfterCheckBeforePost(var TransferHeader: Record "Transfer Header")

    Begin
        TransferHeader.TransferControl();
    End;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnBeforeActionEvent', 'Post', false, false)]

    procedure ValidatePost(var Rec: Record "Sales Header")

    var
        Cust: Record Customer;
        Cust2: Record Customer;
        CustRec: Record Customer;
        CustRec2: Record Customer;
        CustLedgEntry: Record "Cust. Ledger Entry";
        FirstDate: Date;
        Diff: Integer;
        SalesLine: Record "Sales Line";
        ItemRec: Record Item;
        Customer: Record Customer;
        LocRec: Record Location;
        SalesOrderAmount: Decimal;
        UserSetup: Record "User Setup";
        UserSetup2: Record "User Setup";
        SenderEmail: Text;
        ToName: Text;
        Subject: Text;
        mailbody: Text;

    begin
        Rec.TESTFIELD("Shortcut Dimension 1 Code");

        UserSetup.get(UserId);
        if UserSetup."Allow Access" then
            exit else begin


            IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                Cust.GET(Rec."Sell-to Customer No.");
                IF (Cust."Dealer Verification No." = 'GLC100')// OR (Cust."Dealer Verification No." = 'GLB100')// OR (Cust."Dealer Verification No." = 'RTB100')//
                                                              //OR (Cust."Dealer Verification No." = 'GER100')
                 THEN BEGIN
                    CustRec2.RESET;
                    Cust2.SETCURRENTKEY("Dealer Verification No.");
                    Cust2.SETRANGE("Dealer Verification No.", Cust."Dealer Verification No.");
                    IF Cust2.FINDFIRST THEN
                        REPEAT
                            CustLedgEntry.SETCURRENTKEY("Customer No.", "Document Type", Open);
                            CustLedgEntry.SETRANGE("Customer No.", Cust2."No.");
                            CustLedgEntry.SETRANGE("Document Type", CustLedgEntry."Document Type"::Invoice);
                            CustLedgEntry.SETRANGE(Open, TRUE);
                            IF CustLedgEntry.FINDFIRST THEN BEGIN
                                FirstDate := CustLedgEntry."Posting Date";
                                IF FirstDate <> 0D THEN
                                    Diff := TODAY - FirstDate;
                                IF (Diff > 30) THEN
                                    ERROR('Overdue invoices need to be cleared!')
                            END;
                        UNTIL Cust2.NEXT = 0;
                END;
            END;

            IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                SalesLine.SETCURRENTKEY("Document Type", "Document No.", Type, "No.");
                SalesLine.SETRANGE("Document Type", Rec."Document Type");
                SalesLine.SETRANGE("Document No.", Rec."No.");
                SalesLine.SETRANGE(Type, SalesLine.Type::Item);
                SalesLine.SETRANGE("Variant Code", 'SEA');
                IF SalesLine.FINDFIRST THEN BEGIN
                    REPEAT

                        //IF NOT ( "Customer Line discount" = SalesLine."Line Discount %") THEN
                        //      ERROR('The line discount is not the same with the approved discount !')
                        //      UNTIL SalesLine.NEXT = 0;
                        //  END;
                        // END;
                        IF (SalesLine."Line Discount %" > Rec."Customer Line discount") THEN
                            ERROR('The line discount is not the same with the approved discount !')
                    UNTIL SalesLine.NEXT = 0;
                END;
            END;


            // SaleShipHeader.SETRANGE(SaleShipHeader."Order No.","No.");
            // IF SaleShipHeader.FINDFIRST THEN
            // ERROR('This document Order No. has been Used Before!');

            IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                SalesLine.SETCURRENTKEY("Document Type", "Document No.", Type, "No.");
                SalesLine.SETRANGE("Document Type", Rec."Document Type");
                SalesLine.SETRANGE("Document No.", Rec."No.");
                SalesLine.SETRANGE(Type, SalesLine.Type::Item);
                IF SalesLine.FINDFIRST THEN
                    REPEAT
                        IF SalesLine."Quantity Demanded" = 0 THEN
                            ERROR('Input the quantity demanded')
                    UNTIL SalesLine.NEXT = 0;
            END;
            IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') THEN BEGIN
                SalesLine.SETCURRENTKEY("Document Type", "Document No.", Type, "No.");
                SalesLine.SETRANGE("Document Type", Rec."Document Type");
                SalesLine.SETRANGE("Document No.", Rec."No.");
                SalesLine.SETRANGE(Type, SalesLine.Type::Item);
                IF SalesLine.FINDFIRST THEN
                    REPEAT
                        SalesLine.TESTFIELD("VAT Prod. Posting Group");

                    UNTIL SalesLine.NEXT = 0;
            END;

            SalesLine.SETCURRENTKEY("Document Type", "Document No.", Type, "No.");
            SalesLine.SETRANGE("Document Type", Rec."Document Type");
            SalesLine.SETRANGE("Document No.", Rec."No.");
            SalesLine.SETRANGE(Type, SalesLine.Type::Item);
            IF SalesLine.FINDFIRST THEN BEGIN
                REPEAT
                    IF (Rec."Shortcut Dimension 1 Code" = '09MARKET') AND (SalesLine."Line Discount Amount" <> 0) THEN
                        IF Rec.Approved = FALSE THEN
                            ERROR('This transaction needs to be approved before posting!')
                UNTIL SalesLine.NEXT = 0;
            END;

            Rec.TESTFIELD("Shortcut Dimension 1 Code");
            Rec.TESTFIELD("Salesperson Code");
            Rec.TESTFIELD("Posting Description");
            IF Rec."Shortcut Dimension 1 Code" = '05PARTS' THEN
                Rec.TESTFIELD("Order Type");

            IF (ItemRec."Fixed Cost" - ItemRec."Unit Cost") < 0 THEN
                IF ItemRec."Inventory Posting Group" <> 'N_CARS' THEN
                    ERROR('Sorry, you can not sell this item. Contact your manager to review the Fixed Cost!');

            IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') AND (Rec.Approved = FALSE) THEN
                ERROR('This transaction needs to be approved before posting!');

            Customer.Get(Rec."Sell-to Customer No.");
            IF NOT Customer."Remove Account Link" THEN
                Rec.LinkedAcctControl;


            SalesLine.SETCURRENTKEY("Document No.");
            SalesLine.SETRANGE("Document No.", Rec."No.");
            IF SalesLine.FINDFIRST THEN BEGIN
                REPEAT
                    IF LocRec.GET(SalesLine."Location Code") THEN
                        IF LocRec."VRI Location" THEN
                            IF NOT Rec.Approved THEN
                                ERROR('This transaction needs the MDs Approval!');
                UNTIL SalesLine.NEXT = 0;
            END;

            IF Rec."Sell-to Customer No." = '940000' THEN BEGIN
                IF Rec."Your Reference" = '' THEN
                    ERROR('Please enter the TCOF number!');
            END;


            CustRec.GET(Rec."Sell-to Customer No.");
            IF NOT CustRec."Remove Credit Limit" THEN begin
                IF Rec."Sell-to Customer No." <> '' then begin
                    SalesLine.SETCURRENTKEY("Document No.", "Sell-to Customer No.");
                    SalesLine.SETRANGE(SalesLine."Document No.", Rec."No.");
                    SalesLine.SETRANGE(SalesLine."Sell-to Customer No.", Rec."Sell-to Customer No.");
                    IF SalesLine.FINDFIRST THEN
                        SalesLine.CALCSUMS("Amount Including VAT");
                    SalesOrderAmount := SalesLine."Amount Including VAT";
                    CustRec.GET(Rec."Sell-to Customer No.");
                    IF (CustRec."Credit Limit (LCY)" <> 0) THEN BEGIN
                        //IF ("Customer Posting Group" <> 'STAFF') THEN BEGIN
                        CustRec.CALCFIELDS("Balance (LCY)");
                        IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                            ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                    END;
                END;
            end;

            SalesLine.SETCURRENTKEY("Document No.");
            SalesLine.SETRANGE("Document No.", Rec."No.");
            IF SalesLine.FINDFIRST THEN BEGIN
                REPEAT
                    IF SalesLine.Accessory THEN
                        IF NOT Rec."Include Accessory" THEN
                            ERROR('Some vehicles have accessories. Click on Include Accessory!');
                UNTIL SalesLine.NEXT = 0;
            END;

            IF UserSetup2.GET(USERID) THEN
                SenderEmail := UserSetup2."E-Mail";

            SalesLine.SETCURRENTKEY("Document No.");
            SalesLine.SETRANGE("Document No.", Rec."No.");
            IF SalesLine.FINDFIRST THEN
                IF LocRec.GET(SalesLine."Location Code") THEN
                    Rec.Sender := USERID;
            ToName := LocRec."E-Mail";
            //Subject := Text003;
            //mailbody := Text004;

            //MailSent := approvalmessage.NewMessage(ToName,CCName,Subject,mailbody,attachement,'',TRUE);
            //SMTPMail.AddRecipients(UserSetup2."E-Mail");
            //SMTPMail.CreateMessage(USERID, SenderEmail, ToName, Subject, mailbody, FALSE);
            //SMTPMail.Send;

        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Sales Credit Memo", 'OnBeforeActionEvent', 'Post', false, false)]

    procedure ValidatePostSalesCrMemo(var Rec: Record "Sales Header")

    var

    Begin
        Rec.TESTFIELD("External Document No.");
        IF (Rec."Shortcut Dimension 1 Code" = '09MARKET') THEN BEGIN
            IF Rec."2nd Apprv. Status" <> Rec."2nd Apprv. Status"::Approved THEN
                ERROR('This transaction needs to be approved before posting!');
        End;
        IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') AND (Rec."Reason Code" = 'NDEFECTIVE') THEN BEGIN
            IF Rec."2nd Apprv. Status" <> Rec."2nd Apprv. Status"::Approved THEN
                ERROR('This transaction needs to be approved before posting!');
        END;
        IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') AND (Rec."Reason Code" = 'ERROR') THEN BEGIN
            IF Rec."2nd Apprv. Status" <> Rec."2nd Apprv. Status"::Approved THEN
                ERROR('This transaction needs to be approved before posting!');
        END;
        IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') AND (Rec."Reason Code" = 'DEFECTIVE') THEN BEGIN
            IF Rec."Final Apprv. Status" <> Rec."Final Apprv. Status"::Approved THEN
                ERROR('This transaction needs to be approved before posting!');
        END;

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', true, true)]
    local procedure ChangeFinancialReport(ReportId: Integer; var NewReportId: Integer)

    begin
        if ReportId = Report::"Account Schedule" then
            NewReportId := Report::"Account Schedule2";
    end;



}

