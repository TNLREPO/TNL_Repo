report 50258 "TNL Cash Flow Analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TNLCashFlowAnalysis.rdlc';

    dataset
    {
        dataitem("Cash Receipt"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(USERID; USERID)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(FORMAT_PeriodStartDate_2__; FORMAT(PeriodStartDate[2]))
            {
            }
            column(FORMAT_PeriodStartDate_3__; FORMAT(PeriodStartDate[3]))
            {
            }
            column(FORMAT_PeriodStartDate_3__1_; FORMAT(PeriodStartDate[3] - 1))
            {
            }
            column(FORMAT_PeriodStartDate_4__1_; FORMAT(PeriodStartDate[4] - 1))
            {
            }
            column(FORMAT_PeriodStartDate_4__; FORMAT(PeriodStartDate[4]))
            {
            }
            column(FORMAT_PeriodStartDate_5__1_; FORMAT(PeriodStartDate[5] - 1))
            {
            }
            column(FORMAT_PeriodStartDate_5__; FORMAT(PeriodStartDate[5]))
            {
            }
            column(FORMAT_PeriodStartDate_6__1_; FORMAT(PeriodStartDate[6] - 1))
            {
            }
            column(PeriodAmount_1_; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2_; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3_; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4_; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5_; PeriodAmount[5])
            {
            }
            column(LineTotal; LineTotal)
            {
            }
            column(ValEntryAmountCar_1_; ValEntryAmountCar[1])
            {
            }
            column(ValEntryAmountPart_1_; ValEntryAmountPart[1])
            {
            }
            column(ValEntryAmountCar_2_; ValEntryAmountCar[2])
            {
            }
            column(ValEntryAmountPart_2_; ValEntryAmountPart[2])
            {
            }
            column(ValEntryAmountCar_3_; ValEntryAmountCar[3])
            {
            }
            column(ValEntryAmountPart_3_; ValEntryAmountPart[3])
            {
            }
            column(ValEntryAmountCar_4_; ValEntryAmountCar[4])
            {
            }
            column(ValEntryAmountPart_4_; ValEntryAmountPart[4])
            {
            }
            column(ValEntryAmountCar_5_; ValEntryAmountCar[5])
            {
            }
            column(ValEntryAmountPart_5_; ValEntryAmountPart[5])
            {
            }
            column(LineTotalPart; LineTotalPart)
            {
            }
            column(LineTotalCar; LineTotalCar)
            {
            }
            column(SalesTotal; SalesTotal)
            {
            }
            column(SalesTotalPeriod_1_; SalesTotalPeriod[1])
            {
            }
            column(SalesTotalPeriod_2_; SalesTotalPeriod[2])
            {
            }
            column(SalesTotalPeriod_3_; SalesTotalPeriod[3])
            {
            }
            column(SalesTotalPeriod_4_; SalesTotalPeriod[4])
            {
            }
            column(SalesTotalPeriod_5_; SalesTotalPeriod[5])
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(CASH_FLOW_ANALYSISCaption; CASH_FLOW_ANALYSISCaptionLbl)
            {
            }
            column(TOYOTA_NIGERIA_LIMITEDCaption; TOYOTA_NIGERIA_LIMITEDCaptionLbl)
            {
            }
            column(Before___Caption; Before___CaptionLbl)
            {
            }
            column(BalanceCaption; BalanceCaptionLbl)
            {
            }
            column(Vehicle_SalesCaption; Vehicle_SalesCaptionLbl)
            {
            }
            column(Parts_SalesCaption; Parts_SalesCaptionLbl)
            {
            }
            column(Cash_ReceiptCaption; Cash_ReceiptCaptionLbl)
            {
            }
            column(Total_Sales_Caption; Total_Sales_CaptionLbl)
            {
            }
            column(In_flowCaption; In_flowCaptionLbl)
            {
            }
            column(Cash_Receipt_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    Payment.SETCURRENTKEY("Document Type", "Cash/Cheque", "Posting Date", Posted);
                    Payment.SETRANGE("Document Type", Payment."Document Type"::Receipt);
                    Payment.SETRANGE("Cash/Cheque", Payment."Cash/Cheque"::Cash);
                    Payment.SETRANGE(Posted, TRUE);
                    Payment.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF Payment.FINDSET THEN BEGIN
                        Payment.CALCSUMS(Payment."Amount (LCY)");
                        PeriodAmount[i] := Payment."Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("Cheque Receipt"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000014; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2__Control1000000015; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3__Control1000000016; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000017; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000018; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000019; LineTotal)
            {
            }
            column(Cheque_ReceiptCaption; Cheque_ReceiptCaptionLbl)
            {
            }
            column(Cheque_Receipt_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    Payment.SETCURRENTKEY("Document Type", "Cash/Cheque", "Posting Date", Posted);
                    Payment.SETRANGE("Document Type", Payment."Document Type"::Receipt);
                    Payment.SETRANGE("Cash/Cheque", Payment."Cash/Cheque"::Cheque);
                    Payment.SETRANGE(Posted, TRUE);
                    Payment.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF Payment.FINDSET THEN BEGIN
                        Payment.CALCSUMS(Payment."Amount (LCY)");
                        PeriodAmount[i] := Payment."Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("e-Receipt"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000045; PeriodAmount[1])
            {
            }
            column(PeriodAmount_3__Control1000000047; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000048; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000049; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000050; LineTotal)
            {
            }
            column(PeriodAmount_2__Control1000000046; PeriodAmount[2])
            {
            }
            column(Cheque__e_ReceiptCaption; Cheque__e_ReceiptCaptionLbl)
            {
            }
            column(e_Receipt_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    Payment.SETCURRENTKEY("Document Type", "Cash/Cheque", "Posting Date", Posted);
                    Payment.SETRANGE("Document Type", Payment."Document Type"::"e-Receipt");
                    Payment.SETRANGE("Cash/Cheque", Payment."Cash/Cheque"::Cheque);
                    Payment.SETRANGE(Posted, TRUE);
                    Payment.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF Payment.FINDSET THEN BEGIN
                        Payment.CALCSUMS(Payment."Amount (LCY)");
                        PeriodAmount[i] := Payment."Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("Journal Receipt"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000094; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2__Control1000000095; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3__Control1000000096; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000097; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000098; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000099; LineTotal)
            {
            }
            column(Journal_VoucherCaption; Journal_VoucherCaptionLbl)
            {
            }
            column(Journal_Receipt_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    BankLedgEntry.SETCURRENTKEY("Document No.", "Posting Date");
                    BankLedgEntry.SETRANGE("Document No.", 'TGLJ000001', 'TGLJ999999');
                    BankLedgEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF BankLedgEntry.FINDSET THEN BEGIN
                        BankLedgEntry.CALCSUMS(BankLedgEntry."Debit Amount (LCY)");
                        PeriodAmount[i] := -BankLedgEntry."Debit Amount (LCY)";   // negative sign introduced for analysis: dada
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("Cash Requisition"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000020; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2__Control1000000021; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3__Control1000000022; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000023; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000024; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000025; LineTotal)
            {
            }
            column(Cash_RequisitionCaption; Cash_RequisitionCaptionLbl)
            {
            }
            column(Out_flowCaption; Out_flowCaptionLbl)
            {
            }
            column(Cash_Requisition_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    Payment.SETCURRENTKEY("Document Type", "Cash/Cheque", "Posting Date", Posted);
                    Payment.SETRANGE("Document Type", Payment."Document Type"::Requisition);
                    Payment.SETRANGE("Cash/Cheque", Payment."Cash/Cheque"::Cash);
                    Payment.SETRANGE(Posted, TRUE);
                    Payment.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF Payment.FINDSET THEN BEGIN
                        Payment.CALCSUMS(Payment."Amount (LCY)");
                        PeriodAmount[i] := Payment."Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("Cheque Requisition"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000026; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2__Control1000000027; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3__Control1000000028; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000029; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000030; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000031; LineTotal)
            {
            }
            column(Cheque_RequisitionCaption; Cheque_RequisitionCaptionLbl)
            {
            }
            column(Cheque_Requisition_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    Payment.SETCURRENTKEY("Document Type", "Cash/Cheque", "Posting Date", Posted);
                    Payment.SETRANGE("Document Type", Payment."Document Type"::Requisition);
                    Payment.SETRANGE("Cash/Cheque", Payment."Cash/Cheque"::Cheque);
                    Payment.SETRANGE(Posted, TRUE);
                    Payment.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF Payment.FINDSET THEN BEGIN
                        Payment.CALCSUMS(Payment."Amount (LCY)");
                        PeriodAmount[i] := Payment."Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("Journal Payments"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000032; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2__Control1000000033; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3__Control1000000034; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000035; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000036; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000037; LineTotal)
            {
            }
            column(Journal_VoucherCaption_Control1000000086; Journal_VoucherCaption_Control1000000086Lbl)
            {
            }
            column(Journal_Payments_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    BankLedgEntry.SETCURRENTKEY("Document No.", "Posting Date");
                    BankLedgEntry.SETFILTER("Document No.", '%1..%2', 'TGLJ000001', 'TGLJ999999');
                    BankLedgEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF BankLedgEntry.FINDSET THEN BEGIN
                        BankLedgEntry.CALCSUMS(BankLedgEntry."Credit Amount (LCY)");
                        PeriodAmount[i] := BankLedgEntry."Credit Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem("e-Payment"; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmount_1__Control1000000038; PeriodAmount[1])
            {
            }
            column(PeriodAmount_2__Control1000000039; PeriodAmount[2])
            {
            }
            column(PeriodAmount_3__Control1000000040; PeriodAmount[3])
            {
            }
            column(PeriodAmount_4__Control1000000041; PeriodAmount[4])
            {
            }
            column(PeriodAmount_5__Control1000000042; PeriodAmount[5])
            {
            }
            column(LineTotal_Control1000000043; LineTotal)
            {
            }
            column(Cheque__e_PaymentCaption; Cheque__e_PaymentCaptionLbl)
            {
            }
            column(e_Payment_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                LineTotal := 0;
                CLEAR(PeriodAmount);
                FOR i := 1 TO 5 DO BEGIN
                    Payment.SETCURRENTKEY("Document Type", "Cash/Cheque", "Posting Date", Posted);
                    Payment.SETRANGE("Document Type", Payment."Document Type"::"e-Pay");
                    Payment.SETRANGE("Cash/Cheque", Payment."Cash/Cheque"::Cheque);
                    Payment.SETRANGE(Posted, TRUE);
                    Payment.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
                    IF Payment.FINDSET THEN BEGIN
                        Payment.CALCSUMS(Payment."Amount (LCY)");
                        PeriodAmount[i] := Payment."Amount (LCY)";
                        PeriodAmt1[i] := PeriodAmt1[i] + PeriodAmount[i];
                        LineTotal := LineTotal + PeriodAmount[i];
                    END;
                END;
                GTotal := GTotal + LineTotal;
            end;
        }
        dataitem(Net; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(PeriodAmt1_1_; PeriodAmt1[1])
            {
            }
            column(PeriodAmt1_2_; PeriodAmt1[2])
            {
            }
            column(PeriodAmt1_3_; PeriodAmt1[3])
            {
            }
            column(PeriodAmt1_4_; PeriodAmt1[4])
            {
            }
            column(PeriodAmt1_5_; PeriodAmt1[5])
            {
            }
            column(GTotal; GTotal)
            {
            }
            column(Net_PaymentsCaption; Net_PaymentsCaptionLbl)
            {
            }
            column(Net_Number; Number)
            {
            }
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
        FOR i := 3 TO 6 DO
            PeriodStartDate[i] := CALCDATE(PeriodDuration, PeriodStartDate[i - 1]);
        PeriodStartDate[7] := 31129999D;


        FOR i := 1 TO 5 DO BEGIN
            ValueEntry.SETCURRENTKEY("Item Ledger Entry Type", "Inventory Posting Group", "Posting Date");
            ValueEntry.SETRANGE("Item Ledger Entry Type", ValueEntry."Item Ledger Entry Type"::Sale);
            ValueEntry.SETRANGE("Inventory Posting Group", 'N_CARS');
            ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
            ValueEntry.CALCSUMS("Cost Posted to G/L");
            ValEntryAmountCar[i] := ValueEntry."Cost Posted to G/L";
            LineTotalCar := LineTotalCar + ValEntryAmountCar[i];
            SalesTotalPeriod[i] := SalesTotalPeriod[i] + ValEntryAmountCar[i];
        END;

        FOR i := 1 TO 5 DO BEGIN
            ValueEntry.SETCURRENTKEY("Item Ledger Entry Type", "Inventory Posting Group", "Posting Date");
            ValueEntry.SETRANGE("Item Ledger Entry Type", ValueEntry."Item Ledger Entry Type"::Sale);
            ValueEntry.SETRANGE("Inventory Posting Group", 'N_PARTS');
            ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodStartDate[i + 1] - 1);
            ValueEntry.CALCSUMS("Cost Posted to G/L");
            ValEntryAmountPart[i] := ValueEntry."Cost Posted to G/L";
            LineTotalPart := LineTotalPart + ValEntryAmountPart[i];
            SalesTotalPeriod[i] := SalesTotalPeriod[i] + ValEntryAmountPart[i];
        END;
        SalesTotal := LineTotalCar + LineTotalPart;
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        PeriodStartDate: array[7] of Date;
        i: Integer;
        PeriodAmount: array[5] of Decimal;
        Details: Boolean;
        Payment: Record 50103;
        LineTotal: Decimal;
        ValueEntry: Record 5802;
        ValEntryAmountCar: array[6] of Decimal;
        ValEntryAmountPart: array[6] of Decimal;
        LineTotalCar: Decimal;
        LineTotalPart: Decimal;
        PeriodAmt1: array[5] of Decimal;
        GTotal: Decimal;
        PeriodDuration: DateFormula;
        BankLedgEntry: Record "271";
        SalesTotal: Decimal;
        SalesTotalPeriod: array[5] of Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        CASH_FLOW_ANALYSISCaptionLbl: Label 'CASH FLOW ANALYSIS';
        TOYOTA_NIGERIA_LIMITEDCaptionLbl: Label 'TOYOTA NIGERIA LIMITED';
        Before___CaptionLbl: Label 'Before...';
        BalanceCaptionLbl: Label 'Balance';
        Vehicle_SalesCaptionLbl: Label 'Vehicle Sales';
        Parts_SalesCaptionLbl: Label 'Parts Sales';
        Cash_ReceiptCaptionLbl: Label 'Cash Receipt';
        Total_Sales_CaptionLbl: Label 'Total Sales ';
        In_flowCaptionLbl: Label 'In-flow';
        Cheque_ReceiptCaptionLbl: Label 'Cheque Receipt';
        Cheque__e_ReceiptCaptionLbl: Label 'Cheque  e-Receipt';
        Journal_VoucherCaptionLbl: Label 'Journal Voucher';
        Cash_RequisitionCaptionLbl: Label 'Cash Requisition';
        Out_flowCaptionLbl: Label 'Out-flow';
        Cheque_RequisitionCaptionLbl: Label 'Cheque Requisition';
        Journal_VoucherCaption_Control1000000086Lbl: Label 'Journal Voucher';
        Cheque__e_PaymentCaptionLbl: Label 'Cheque  e-Payment';
        Net_PaymentsCaptionLbl: Label 'Net Payments';
}

