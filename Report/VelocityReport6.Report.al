report 50230 "Velocity Report (6)"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VelocityReport6.rdlc';
    Description = 'To give Past 5 Month Activities Report from the Date Specified.';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (Inventory Posting Group);
            RequestFilterFields = "No.", "Inventory Posting Group", "Global Dimension 1 Filter", "Global Dimension 2 Filter", "Date Filter", "Location Filter", "Net Change";
            column(MONTHTEXT_1_; MONTHTEXT[1])
            {
            }
            column(MONTHTEXT_2_; MONTHTEXT[2])
            {
            }
            column(MONTHTEXT_3_; MONTHTEXT[3])
            {
            }
            column(MONTHTEXT_4_; MONTHTEXT[4])
            {
            }
            column(MONTHTEXT_5_; MONTHTEXT[5])
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(PAST_5_MONTH_UP_TO_; MONTHTEXT[1])
            {
            }
            column(STRSUBSTNO__Past___1_Month_Velocity_From____FORMAT_MonNo__; STRSUBSTNO('Past  %1 Month Velocity From  ', FORMAT(MonNo)))
            {
            }
            column(STRSUBSTNO____1_MONTH_VELOCITY_REPORT__FORMAT_MonNo__; STRSUBSTNO(' %1 MONTH VELOCITY REPORT', FORMAT(MonNo)))
            {
            }
            column(MONTHTEXT_6_; MONTHTEXT[6])
            {
            }
            column(Item_Description; Description)
            {
            }
            column(STARTQTY; STARTQTY)
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_1_; QTYPURCH[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_1_; QTYSOLD[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYADJ; QTYADJ)
            {
                DecimalPlaces = 0 : 0;
            }
            column(ENDQTY; ENDQTY)
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_2_; QTYSOLD[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_2_; QTYPURCH[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(RTQTY; RTQTY)
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_4_; QTYSOLD[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_4_; QTYPURCH[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_3_; QTYSOLD[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_3_; QTYPURCH[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_5_; QTYSOLD[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_5_; QTYPURCH[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_6_; QTYSOLD[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_6_; QTYPURCH[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(ENDQTY_Control22; ENDQTY)
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYADJ_Control24; QTYADJ)
            {
                DecimalPlaces = 0 : 0;
            }
            column(RTQTY_Control33; RTQTY)
            {
                DecimalPlaces = 0 : 0;
            }
            column(STARTQTY_Control54; STARTQTY)
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_1__Control55; QTYPURCH[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_1__Control56; QTYSOLD[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_2__Control57; QTYPURCH[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_2__Control58; QTYSOLD[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_3__Control59; QTYPURCH[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_3__Control60; QTYSOLD[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_4__Control61; QTYPURCH[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_4__Control62; QTYSOLD[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_5__Control63; QTYPURCH[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_5__Control64; QTYSOLD[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYSOLD_6__Control3; QTYSOLD[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(QTYPURCH_6__Control4; QTYPURCH[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Item_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(STARTQTYCaption; STARTQTYCaptionLbl)
            {
            }
            column(ENDQTYCaption; ENDQTYCaptionLbl)
            {
            }
            column(QTYADJCaption; QTYADJCaptionLbl)
            {
            }
            column(Qty_SoldCaption; Qty_SoldCaptionLbl)
            {
            }
            column(Qty_PurchasedCaption; Qty_PurchasedCaptionLbl)
            {
            }
            column(Qty_PurchasedCaption_Control29; Qty_PurchasedCaption_Control29Lbl)
            {
            }
            column(Qty_SoldCaption_Control30; Qty_SoldCaption_Control30Lbl)
            {
            }
            column(RTQTYCaption; RTQTYCaptionLbl)
            {
            }
            column(Qty_SoldCaption_Control7; Qty_SoldCaption_Control7Lbl)
            {
            }
            column(Qty_PurchasedCaption_Control12; Qty_PurchasedCaption_Control12Lbl)
            {
            }
            column(Qty_SoldCaption_Control34; Qty_SoldCaption_Control34Lbl)
            {
            }
            column(Qty_PurchasedCaption_Control35; Qty_PurchasedCaption_Control35Lbl)
            {
            }
            column(Qty_SoldCaption_Control37; Qty_SoldCaption_Control37Lbl)
            {
            }
            column(Qty_PurchasedCaption_Control38; Qty_PurchasedCaption_Control38Lbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Qty_PurchasedCaption_Control52; Qty_PurchasedCaption_Control52Lbl)
            {
            }
            column(Qty_SoldCaption_Control53; Qty_SoldCaption_Control53Lbl)
            {
            }
            column(Item_No_; "No.")
            {
            }
            column(Item_Inventory_Posting_Group; "Inventory Posting Group")
            {
            }

            trigger OnAfterGetRecord()
            begin
                QTYADJ := 0;
                RTQTY := 0;
                Item.SETRANGE(Item."Date Filter", 0D, CALCDATE('-1D', MonthStart[1]));
                Item.CALCFIELDS("Net Change");
                STARTQTY := Item."Net Change";

                FOR i := 1 TO MonNo DO BEGIN
                    Item.SETRANGE(Item."Date Filter", MonthStart[i], MonthEnd[i]);
                    Item.CALCFIELDS(Item."Purchases (Qty.)", Item."Sales (Qty.)");
                    QTYPURCH[i] := Item."Purchases (Qty.)";

                    Item.CALCFIELDS(Item."Purchases (Qty.)", Item."Sales (Qty.)");
                    QTYSOLD[i] := Item."Sales (Qty.)";
                    RTQTY := RTQTY + ABS(Item."Purchases (Qty.)");

                    Item.CALCFIELDS(Item."Positive Adjmt. (Qty.)", Item."Negative Adjmt. (Qty.)");
                    QTYADJ := QTYADJ + Item."Positive Adjmt. (Qty.)" - Item."Negative Adjmt. (Qty.)";

                    absqyt := QTYPURCH[i] + ABS(QTYSOLD[i]) + absqyt;
                END;

                // closing qty
                Item.SETRANGE(Item."Date Filter", 0D, MonthEnd[MonNo]);
                Item.CALCFIELDS("Net Change");
                ENDQTY := Item."Net Change";
                CurrReport.CREATETOTALS(STARTQTY, ENDQTY, QTYPURCH, QTYSOLD, QTYADJ, RTQTY);
                IF NOT ZeroInv THEN BEGIN
                    IF ((STARTQTY <= 0) AND (RTQTY = 0)
                    AND (QTYADJ = 0) AND (ENDQTY = 0) AND (absqyt = 0)) THEN
                        CurrReport.SKIP;
                END;
                absqyt := 0;
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

    trigger OnPreReport()
    begin
        MonthNo := DATE2DMY(CurrDate, 2);
        YearNo := DATE2DMY(CurrDate, 3);

        FOR i := 1 TO MonNo DO BEGIN
            IF MonthNo - (MonNo - i) <= 0 THEN
                MonthStart[i] := DMY2DATE(1, 12 + MonthNo - (MonNo - i), YearNo - 1)
            ELSE
                MonthStart[i] := DMY2DATE(1, MonthNo - (MonNo - i), YearNo);
            MonthEnd[i] := CALCDATE('CM', MonthStart[i]);
            MONTHTEXT[i] := UPPERCASE(FORMAT(MonthStart[i], 0, '<Month Text>, <Year4>'));
        END;
    end;

    var
        UserSetup: Record 91;
        STARTQTY: Decimal;
        QTYPURCH: array[6] of Decimal;
        QTYSOLD: array[6] of Decimal;
        RTQTY: Decimal;
        QTYADJ: Decimal;
        ENDQTY: Decimal;
        MONTHTEXT: array[6] of Text[30];
        CurrDate: Date;
        MonthStart: array[6] of Date;
        MonthEnd: array[6] of Date;
        MonthNo: Integer;
        YearNo: Integer;
        i: Integer;
        MonNo: Integer;
        ZeroInv: Boolean;
        absqyt: Decimal;
        STARTQTYCaptionLbl: Label 'Start Qty';
        ENDQTYCaptionLbl: Label 'End Qty';
        QTYADJCaptionLbl: Label 'Adjusted Qty';
        Qty_SoldCaptionLbl: Label 'Qty Sold';
        Qty_PurchasedCaptionLbl: Label 'Qty Purchased';
        Qty_PurchasedCaption_Control29Lbl: Label 'Qty Purchased';
        Qty_SoldCaption_Control30Lbl: Label 'Qty Sold';
        RTQTYCaptionLbl: Label 'Qty Returned';
        Qty_SoldCaption_Control7Lbl: Label 'Qty Sold';
        Qty_PurchasedCaption_Control12Lbl: Label 'Qty Purchased';
        Qty_SoldCaption_Control34Lbl: Label 'Qty Sold';
        Qty_PurchasedCaption_Control35Lbl: Label 'Qty Purchased';
        Qty_SoldCaption_Control37Lbl: Label 'Qty Sold';
        Qty_PurchasedCaption_Control38Lbl: Label 'Qty Purchased';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Qty_PurchasedCaption_Control52Lbl: Label 'Qty Purchased';
        Qty_SoldCaption_Control53Lbl: Label 'Qty Sold';
}

