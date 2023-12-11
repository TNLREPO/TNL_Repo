report 50350 "Retirement Receipt"
{
    DefaultLayout = RDLC;
    RDLCLayout = './RetirementReceipt.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50107)
        {
            column(No_IOURetirementHeader; "IOU Retirement Header"."No.")
            {
            }
            column(Description_IOURetirementHeader; "IOU Retirement Header".Description)
            {
            }
            column(EntryDate_IOURetirementHeader; "IOU Retirement Header"."Entry Date")
            {
            }
            column(OriginalIOUAmount_IOURetirementHeader; "IOU Retirement Header"."Original IOU Amount")
            {
            }
            column(AmountToRetire_IOURetirementHeader; "IOU Retirement Header"."Amount To Retire")
            {
            }
            column(AuditApproval_IOURetirementHeader; "IOU Retirement Header"."Audit Approval")
            {
            }
            column(AuditApprovalBy_IOURetirementHeader; "IOU Retirement Header"."Audit Approval By")
            {
            }
            column(AccountApproval_IOURetirementHeader; "IOU Retirement Header"."Account Approval")
            {
            }
            column(AccountApprovalBy_IOURetirementHeader; "IOU Retirement Header"."Account Approval By")
            {
            }
            column(IOUNo_IOURetirementHeader; "IOU Retirement Header"."IOU No.")
            {
            }
            column(UserID_IOURetirementHeader; "IOU Retirement Header"."User ID")
            {
            }
            column(RetirementOptions_IOURetirementHeader; "IOU Retirement Header"."Retirement Options")
            {
            }
            column(Posted_IOURetirementHeader; "IOU Retirement Header".Posted)
            {
            }
            column(PrevAmountRetired_IOURetirementHeader; "IOU Retirement Header"."Prev. Amount Retired")
            {
            }
            column(SendforApproval_IOURetirementHeader; "IOU Retirement Header"."Send for Approval")
            {
            }
            column(Sender_IOURetirementHeader; "IOU Retirement Header".Sender)
            {
            }
            column(SentTime_IOURetirementHeader; "IOU Retirement Header"."Sent Time")
            {
            }
            column(V1stApprovalto_IOURetirementHeader; "IOU Retirement Header"."1st Approval to")
            {
            }
            column(V1stApprover_IOURetirementHeader; "IOU Retirement Header"."1st Approver")
            {
            }
            column(V1stApprvStatus_IOURetirementHeader; "IOU Retirement Header"."1st Apprv. Status")
            {
            }
            column(V1stApprovalTime_IOURetirementHeader; "IOU Retirement Header"."1st Approval Time")
            {
            }
            column(V1stApproversComment_IOURetirementHeader; "IOU Retirement Header"."1st Approver's Comment")
            {
            }
            column(V2ndApprovalto_IOURetirementHeader; "IOU Retirement Header"."2nd Approval to")
            {
            }
            column(V2ndApprover_IOURetirementHeader; "IOU Retirement Header"."2nd Approver")
            {
            }
            column(V2ndApprvStatus_IOURetirementHeader; "IOU Retirement Header"."2nd Apprv. Status")
            {
            }
            column(V2ndApprovalTime_IOURetirementHeader; "IOU Retirement Header"."2nd Approval Time")
            {
            }
            column(V2ndApproversComment_IOURetirementHeader; "IOU Retirement Header"."2nd Approver's Comment")
            {
            }
            column(V3rdApprovalto_IOURetirementHeader; "IOU Retirement Header"."3rd Approval to")
            {
            }
            column(V3rdApprover_IOURetirementHeader; "IOU Retirement Header"."3rd Approver")
            {
            }
            column(V3rdApprvStatus_IOURetirementHeader; "IOU Retirement Header"."3rd Apprv.Status")
            {
            }
            column(V3rdApprovalTime_IOURetirementHeader; "IOU Retirement Header"."3rd Approval Time")
            {
            }
            column(V3rdApproversComment_IOURetirementHeader; "IOU Retirement Header"."3rd Approver's Comment")
            {
            }
            column(FinalApprovalto_IOURetirementHeader; "IOU Retirement Header"."Final Approval to")
            {
            }
            column(FinalApproversName_IOURetirementHeader; "IOU Retirement Header"."Final Approver's Name")
            {
            }
            column(FinalApprvStatus_IOURetirementHeader; "IOU Retirement Header"."Final Apprv. Status")
            {
            }
            column(FinalApprovalTime_IOURetirementHeader; "IOU Retirement Header"."Final Approval Time")
            {
            }
            column(FinalApproversComment_IOURetirementHeader; "IOU Retirement Header"."Final Approver's Comment")
            {
            }
            column(GeneralComment_IOURetirementHeader; "IOU Retirement Header"."General Comment")
            {
            }
            column(MailBody_IOURetirementHeader; "IOU Retirement Header"."Mail Body")
            {
            }
            column(CurrentpendingPerson_IOURetirementHeader; "IOU Retirement Header"."Current pending Person")
            {
            }
            column(Attachment_IOURetirementHeader; "IOU Retirement Header".Attachment)
            {
            }
            column(Sendfor2ndApprv_IOURetirementHeader; "IOU Retirement Header"."Send for 2nd Apprv.")
            {
            }
            column(Sendfor3rdApprv_IOURetirementHeader; "IOU Retirement Header"."Send for 3rd Apprv.")
            {
            }
            column(Comment_IOURetirementHeader; "IOU Retirement Header".Comment)
            {
            }
            column(StaffNo_IOURetirementHeader; "IOU Retirement Header"."Staff No.")
            {
            }
            column(StaffName_IOURetirementHeader; "IOU Retirement Header"."Staff Name")
            {
            }
            column(GlobalDimension1Code_IOURetirementHeader; "IOU Retirement Header"."Global Dimension 1 Code")
            {
            }
            column(GlobalDimension2Code_IOURetirementHeader; "IOU Retirement Header"."Global Dimension 2 Code")
            {
            }
            column(Balance_IOURetirementHeader; "IOU Retirement Header".Balance)
            {
            }
            column(TestReport_IOURetirementHeader; "IOU Retirement Header"."Test Report")
            {
            }
            column(AppliestoDocType_IOURetirementHeader; "IOU Retirement Header"."Applies-to Doc. Type")
            {
            }
            column(AppliestoDocNo_IOURetirementHeader; "IOU Retirement Header"."Applies-to Doc. No.")
            {
            }
            column(ApplyEntry_IOURetirementHeader; "IOU Retirement Header"."Apply Entry")
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(BalAmt; BalAmt)
            {
            }
            column(TOTAMOUNT; TOTAMOUNT)
            {
            }
            column(change; change)
            {
            }
            column(AMOUNTINWORD; AMOUNTINWORD)
            {
            }
            dataitem(DataItem1000000013; Table50106)
            {
                DataItemLink = Retirement No.=FIELD(No.);
                column(IOUNo_IOURetirementLines; "IOU Retirement Lines"."IOU No.")
                {
                }
                column(LineNo_IOURetirementLines; "IOU Retirement Lines"."Line No.")
                {
                }
                column(ShortcutDimension1Code_IOURetirementLines; "IOU Retirement Lines"."Shortcut Dimension 1 Code")
                {
                }
                column(ShortcutDimension2Code_IOURetirementLines; "IOU Retirement Lines"."Shortcut Dimension 2 Code")
                {
                }
                column(AccountType_IOURetirementLines; "IOU Retirement Lines"."Account Type")
                {
                }
                column(AccountNo_IOURetirementLines; "IOU Retirement Lines"."Account No.")
                {
                }
                column(BalAccountType_IOURetirementLines; "IOU Retirement Lines"."Bal. Account Type")
                {
                }
                column(BalAccountNo_IOURetirementLines; "IOU Retirement Lines"."Bal. Account No.")
                {
                }
                column(Description_IOURetirementLines; "IOU Retirement Lines".Description)
                {
                }
                column(Amount_IOURetirementLines; "IOU Retirement Lines".Amount)
                {
                }
                column(RetirementNo_IOURetirementLines; "IOU Retirement Lines"."Retirement No.")
                {
                }
                column(Posted_IOURetirementLines; "IOU Retirement Lines".Posted)
                {
                }
                column(FAPostingType_IOURetirementLines; "IOU Retirement Lines"."FA Posting Type")
                {
                }
                column(MaintenanceCode_IOURetirementLines; "IOU Retirement Lines"."Maintenance Code")
                {
                }
                column(IOUAmount_IOURetirementLines; "IOU Retirement Lines"."IOU Amount")
                {
                }
                column(RemainingAmount_IOURetirementLines; "IOU Retirement Lines"."Remaining Amount")
                {
                }
                column(Sum_IOURetirementLines; "IOU Retirement Lines".Sum)
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                BalAmt := 0;
                CALCFIELDS("Amount To Retire");
                BalAmt := "Original IOU Amount" - "Amount To Retire";

                IF BalAmt >= 0 THEN
                    change := 'AMOUNT TO REFUND' ELSE
                    change := 'AMOUNT TO COLLECT';

                AMOUNTINWORD := figure(BalAmt, 'NAIRA', 'KOBO');
                AMOUNTINWORD := AMOUNTINWORD + ' ONLY.';
            end;

            trigger OnPreDataItem()
            begin
                change := '';
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        change: Text[30];
        TOTAMOUNT: Decimal;
        AMOUNTINWORD: Text[250];
        value1: Integer;
        value2: Integer;
        value3: Decimal;
        value4: Integer;
        value5: Integer;
        SerialNo: Integer;
        valueword1: Text[10];
        valueword2: Text[10];
        valueword3: Text[10];
        valueword4: Text[20];
        valueword5: Text[200];
        word1: Text[60];
        word2: Text[100];
        word3: Text[60];
        word5: Text[30];
        wordarray: array[20] of Text[10];
        arrayval: array[21] of Text[10];
        a: Integer;
        VALLENT: Integer;
        valent: Integer;
        i: Integer;
        deci: Text[3];
        IOURetLine: Record 50106;
        BalAmt: Decimal;

    [Scope('Internal')]
    procedure figure(fig: Decimal; Currency: Text[30]; CurrencyUnit: Text[30]) figureinword: Text[200]
    begin
        figureinword := '';
        value1 := 0;
        value2 := 0;
        value3 := 0;
        value4 := 0;
        value5 := 0;
        valueword1 := '';
        valueword2 := '';
        valueword3 := '';
        valueword4 := '';
        valueword5 := '';
        word1 := '';
        word2 := '';
        word3 := '';
        word5 := '';

        IF ABS(fig) > 0 THEN BEGIN
            wordarray[1] := 'ONE';
            wordarray[2] := 'TWO';
            wordarray[3] := 'THREE';
            wordarray[4] := 'FOUR';
            wordarray[5] := 'FIVE';
            wordarray[6] := 'SIX';
            wordarray[7] := 'SEVEN';
            wordarray[8] := 'EIGHT';
            wordarray[9] := 'NINE';
            wordarray[10] := 'TEN';
            wordarray[11] := 'ELEVEN';
            wordarray[12] := 'TWELVE';
            wordarray[13] := 'THIRTEEN';
            wordarray[14] := 'FOURTEEN';
            wordarray[15] := 'FIFTEEN';
            wordarray[16] := 'SIXTEEN';
            wordarray[17] := 'SEVENTEEN';
            wordarray[18] := 'EIGHTEEN';
            wordarray[19] := 'NINETEEN';
            wordarray[20] := 'TWENTY';
            arrayval[1] := 'TEN';
            arrayval[2] := 'TWENTY';
            arrayval[3] := 'THIRTY';
            arrayval[4] := 'FORTY';
            arrayval[5] := 'FIFTY';
            arrayval[6] := 'SIXTY';
            arrayval[7] := 'SEVENTY';
            arrayval[8] := 'EIGHTY';
            arrayval[9] := 'NINETY';
            arrayval[10] := 'HUNDRED';
            arrayval[11] := 'THOUSAND';
            arrayval[12] := 'MILLION';
            arrayval[13] := 'BILLION';
            arrayval[14] := 'TRILLION';
            arrayval[21] := 'ZERO';
            valueword4 := FORMAT(ABS(ROUND(fig, 0.01, '>')));
            valueword4 := DELCHR(valueword4, '=', ',');
            value4 := STRPOS(valueword4, '.');
            IF value4 > 0 THEN BEGIN
                VALLENT := value4 - 1;
                deci := COPYSTR(valueword4, (STRPOS(valueword4, '.') + 1));
                IF STRLEN(deci) < 2 THEN deci := deci + '0'
            END
            ELSE
                VALLENT := STRLEN(valueword4);
            IF VALLENT > 15 THEN
                ERROR('VALUE IS TOO BIG TO CONVERT');
            value5 := VALLENT MOD 3;
            IF value5 > 0 THEN BEGIN                                             // unit and tens conversion begin
                valueword1 := COPYSTR(valueword4, 1, value5);
                EVALUATE(value3, valueword1);
                //santus temp
                IF (value3 > 0) AND (value3 <= 20) THEN
                    word1 := wordarray[value3]
                ELSE
                    IF value3 >= 21 THEN BEGIN
                        valueword2 := COPYSTR(valueword1, 1, 1);
                        valueword3 := COPYSTR(valueword1, 2, 1);
                        EVALUATE(value3, valueword2);
                        word1 := arrayval[value3];
                        EVALUATE(value3, valueword3);
                        IF value3 > 0 THEN
                            word1 := word1 + ' ' + wordarray[value3];
                    END;  // santus temp


                /*IF (value3 >0) AND (value3 <= 20) THEN
                  word1 := wordarray[value3]
                ELSE
                BEGIN
                  valueword2 := COPYSTR(valueword1,1,1);
                  valueword3 := COPYSTR(valueword1,2,1);
                  EVALUATE(value3,valueword2);
                  word1 := arrayval[21]; //word1 := arrayval[value3];
                  EVALUATE(value3,'0'); //EVALUATE(value3,valueword3);
                  IF value3 > 0 THEN
                    word1 := word1 +' '+wordarray[value3];
                END; */  // santus

                IF (VALLENT > 3) AND (VALLENT < 7) THEN
                    word1 := word1 + ' ' + arrayval[11];
                IF (VALLENT > 6) AND (VALLENT < 10) THEN
                    word1 := word1 + ' ' + arrayval[12];
                IF (VALLENT > 9) AND (VALLENT < 13) THEN
                    word1 := word1 + ' ' + arrayval[13];
                IF (VALLENT > 12) AND (VALLENT < 16) THEN
                    word1 := word1 + ' ' + arrayval[14];
            END;

            // Figure normal conversion begin by Hassan Sharafadeen
            IF VALLENT > 2 THEN BEGIN
                a := value5 + 1;
                REPEAT
                    valueword2 := COPYSTR(valueword4, a, 3);
                    EVALUATE(value4, valueword2);
                    IF value4 = 0 THEN BEGIN
                        word2 := '';
                        IF (VALLENT > 6) AND (VALLENT < 10) THEN
                            word2 := word2 + ' ' + arrayval[11];
                        IF (VALLENT > 9) AND (VALLENT < 13) THEN
                            word2 := word2 + ' ' + arrayval[12];
                        IF (VALLENT > 12) AND (VALLENT < 16) THEN
                            word2 := word2 + ' ' + arrayval[13];
                        a := a + 3;
                    END
                    ELSE BEGIN
                        valueword1 := COPYSTR(valueword2, 1, 1);
                        EVALUATE(value3, valueword1);
                        IF value3 > 0 THEN BEGIN
                            word2 := wordarray[value3];
                            word2 := word2 + ' ' + arrayval[10];
                        END
                        ELSE
                            word2 := '';
                        valueword1 := COPYSTR(valueword2, 2);
                        EVALUATE(value3, valueword1);
                        IF value3 > 0 THEN BEGIN
                            IF (value3 > 0) AND (value3 <= 20) THEN
                                IF word2 <> '' THEN
                                    word2 := word2 + ' ' + 'AND' + ' ' + wordarray[value3]
                                ELSE
                                    word2 := wordarray[value3]
                            ELSE
                                IF value3 > 20 THEN BEGIN
                                    valueword2 := COPYSTR(valueword1, 1, 1);
                                    valueword3 := COPYSTR(valueword1, 2, 1);
                                    EVALUATE(value3, valueword2);
                                    IF word2 <> '' THEN
                                        word2 := word2 + ' ' + 'AND' + ' ' + arrayval[value3]
                                    ELSE
                                        word2 := arrayval[value3];
                                    EVALUATE(value3, valueword3);
                                    IF value3 > 0 THEN
                                        word2 := word2 + ' ' + wordarray[value3];
                                END;
                        END;
                        a := a + 3;
                        IF a < VALLENT THEN BEGIN
                            IF i > 0 THEN BEGIN
                                CASE i OF
                                    3:
                                        BEGIN
                                            IF (VALLENT > 8) AND (VALLENT < 12) THEN
                                                word2 := word2 + ' ' + arrayval[11];
                                            IF (VALLENT > 11) AND (VALLENT < 15) THEN
                                                word2 := word2 + ' ' + arrayval[12];
                                            IF VALLENT = 15 THEN
                                                word2 := word2 + ' ' + arrayval[13];
                                        END;
                                    6:
                                        BEGIN
                                            IF (VALLENT > 11) AND (VALLENT < 15) THEN
                                                word2 := word2 + ' ' + arrayval[11];
                                            IF VALLENT = 15 THEN
                                                word2 := word2 + ' ' + arrayval[12];
                                        END;
                                    9:
                                        IF VALLENT = 15 THEN
                                            word2 := word2 + ' ' + arrayval[11];
                                END;
                            END
                            ELSE BEGIN
                                CASE a OF
                                    4:
                                        BEGIN
                                            IF VALLENT = 6 THEN
                                                word2 := word2 + ' ' + arrayval[11];
                                            IF VALLENT = 9 THEN
                                                word2 := word2 + ' ' + arrayval[12];
                                            IF VALLENT = 12 THEN
                                                word2 := word2 + ' ' + arrayval[13];
                                            IF VALLENT = 15 THEN
                                                word2 := word2 + ' ' + arrayval[14];
                                        END;
                                    5, 6:
                                        BEGIN
                                            IF (VALLENT > 6) AND (VALLENT < 9) THEN
                                                word2 := word2 + ' ' + arrayval[11];
                                            IF (VALLENT > 9) AND (VALLENT < 12) THEN
                                                word2 := word2 + ' ' + arrayval[12];
                                            IF (VALLENT > 12) AND (VALLENT < 15) THEN
                                                word2 := word2 + ' ' + arrayval[13];
                                        END;
                                END;
                            END;
                        END;
                        valueword5 := valueword5 + ' ' + word2;
                        i := i + 3;
                    END;
                UNTIL a > VALLENT;
            END;
            figureinword := word1 + ' ' + valueword5 + ' ' + Currency;
            IF deci <> '' THEN                 //Decimal conversion begin
            BEGIN
                EVALUATE(value3, deci);
                IF value3 <= 20 THEN
                    word3 := wordarray[value3]
                ELSE BEGIN
                    valueword2 := COPYSTR(deci, 1, 1);
                    valueword3 := COPYSTR(deci, 2, 1);
                    EVALUATE(value3, valueword2);
                    word3 := arrayval[value3];
                    EVALUATE(value3, valueword3);
                    IF value3 > 0 THEN
                        word3 := word3 + ' ' + wordarray[value3];
                END;
                word5 := word3 + ' ' + CurrencyUnit;           // Attach Decimal Unit of counting
            END
            ELSE
                word5 := ' ';
            figureinword := figureinword + ' ' + word5;
        END
        ELSE
            figureinword := '';

    end;
}

