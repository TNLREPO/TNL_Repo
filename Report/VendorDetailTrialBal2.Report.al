report 50103 "Vendor - Detail Trial Bal.2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VendorDetailTrialBal2.rdlc';
    Caption = 'Vendor - Detail Trial Bal.2';

    dataset
    {
        dataitem(DataItem3182; Table23)
        {
            DataItemTableView = SORTING (No.);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Vendor Posting Group", "Date Filter";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(STRSUBSTNO_Text000_CustDateFilter_; STRSUBSTNO(Text000, CustDateFilter))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(USERID; USERID)
            {
            }
            column(Vendor_TABLECAPTION__________CustFilter; Vendor.TABLECAPTION + ': ' + CustFilter)
            {
            }
            column(Vendor__No__; "No.")
            {
            }
            column(Vendor_Name; Name)
            {
            }
            column(StartBalanceLCY; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY_Control29; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(Vendor_Ledger_Entry___Amount__LCY__; "Vendor Ledger Entry"."Amount (LCY)")
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY____Vendor_Ledger_Entry___Amount__LCY__; StartBalanceLCY + "Vendor Ledger Entry"."Amount (LCY)")
            {
                AutoFormatType = 1;
            }
            column(Vendor___Detail_Trial_Bal_Caption; Vendor___Detail_Trial_Bal_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(This_report_also_includes_customers_that_only_have_balances_Caption; This_report_also_includes_customers_that_only_have_balances_CaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Posting_Date_Caption; "Vendor Ledger Entry".FIELDCAPTION("Posting Date"))
            {
            }
            column(Vendor_Ledger_Entry__Document_Type_Caption; Vendor_Ledger_Entry__Document_Type_CaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Document_No__Caption; "Vendor Ledger Entry".FIELDCAPTION("Document No."))
            {
            }
            column(Vendor_Ledger_Entry_DescriptionCaption; "Vendor Ledger Entry".FIELDCAPTION(Description))
            {
            }
            column(BalanceCaption; BalanceCaptionLbl)
            {
            }
            column(CreditCaption; CreditCaptionLbl)
            {
            }
            column(DebitCaption; DebitCaptionLbl)
            {
            }
            column(Remaining_AmountCaption; Remaining_AmountCaptionLbl)
            {
            }
            column(Remaining_Amount__Naira_Caption; Remaining_Amount__Naira_CaptionLbl)
            {
            }
            column(Original_Amount__Naira_Caption; Original_Amount__Naira_CaptionLbl)
            {
            }
            column(Posting_DateCaption; Posting_DateCaptionLbl)
            {
            }
            column(Entry_NoCaption; Entry_NoCaptionLbl)
            {
            }
            column(Currency_CodeCaption; Currency_CodeCaptionLbl)
            {
            }
            column(Total__LCY_Caption; Total__LCY_CaptionLbl)
            {
            }
            column(Total__LCY__Before_PeriodCaption; Total__LCY__Before_PeriodCaptionLbl)
            {
            }
            column(Vendor_Date_Filter; "Date Filter")
            {
            }
            column(Vendor_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            column(Vendor_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            dataitem(DataItem4114; Table25)
            {
                CalcFields = Amount, Remaining Amount, Original Amt. (LCY),Remaining Amt. (LCY),Amount (LCY),Debit Amount,Credit Amount,Debit Amount (LCY),Credit Amount (LCY);
                DataItemLink = Vendor No.=FIELD(No.),
                               Posting Date=FIELD(Date Filter),
                               Global Dimension 2 Code=FIELD(Global Dimension 2 Filter),
                               Global Dimension 1 Code=FIELD(Global Dimension 1 Filter),
                               Date Filter=FIELD(Date Filter);
                DataItemTableView = SORTING(Vendor No.,Posting Date);
                column(StartBalanceLCY____Amount__LCY__;StartBalanceLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Posting_Date_;"Posting Date")
                {
                }
                column(Vendor_Ledger_Entry__Document_Type_;"Document Type")
                {
                }
                column(Vendor_Ledger_Entry__Document_No__;"Document No.")
                {
                }
                column(Vendor_Ledger_Entry_Description;Description)
                {
                }
                column(Vendor_Ledger_Entry__Debit_Amount_;"Debit Amount")
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Remaining_Amount_;"Remaining Amount")
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustEntryDueDate;CustEntryDueDate)
                {
                }
                column(Vendor_Ledger_Entry__Entry_No__;"Entry No.")
                {
                }
                column(CustCurrencyCode;CustCurrencyCode)
                {
                }
                column(CustBalance;CustBalance)
                {
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Credit_Amount_;"Credit Amount")
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Original_Amt___LCY__;"Original Amt. (LCY)")
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Vendor_Ledger_Entry__Remaining_Amt___LCY__;"Remaining Amt. (LCY)")
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY____Amount__LCY___Control47;StartBalanceLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(ContinuedCaption;ContinuedCaptionLbl)
                {
                }
                column(ContinuedCaption_Control46;ContinuedCaption_Control46Lbl)
                {
                }
                column(Vendor_Ledger_Entry_Vendor_No_;"Vendor No.")
                {
                }
                column(Vendor_Ledger_Entry_Global_Dimension_2_Code;"Global Dimension 2 Code")
                {
                }
                column(Vendor_Ledger_Entry_Global_Dimension_1_Code;"Global Dimension 1 Code")
                {
                }
                column(Vendor_Ledger_Entry_Date_Filter;"Date Filter")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    CALCFIELDS(Amount,"Remaining Amount","Amount (LCY)","Remaining Amt. (LCY)","Debit Amount","Credit Amount");
                    CALCFIELDS("Original Amount","Remaining Amt. (LCY)","Debit Amount (LCY)","Credit Amount (LCY)");

                    CustLedgEntryExists := TRUE;
                    IF PrintAmountsInLCY THEN BEGIN
                      CustAmount := "Amount (LCY)";
                      CustRemainAmount := "Remaining Amt. (LCY)";
                      CustCurrencyCode := '';
                    END ELSE BEGIN
                      CustAmount := Amount;
                      CustRemainAmount := "Remaining Amount";
                      CustCurrencyCode := "Currency Code";
                    END;
                    CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";

                    CustBalance := CustBalance + "Vendor Ledger Entry".Amount;  //sgg
                    CustCurrencyCode := "Currency Code";                       //sgg

                    IF ("Document Type" = "Document Type"::Payment) OR ("Document Type" = "Document Type"::Refund) THEN
                      CustEntryDueDate := 0D
                    ELSE
                      CustEntryDueDate := "Due Date";
                end;

                trigger OnPreDataItem()
                begin
                    CustLedgEntryExists := FALSE;
                    CurrReport.CREATETOTALS(CustAmount,"Amount (LCY)");
                end;
            }
            dataitem(DataItem5444;Table2000000026)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number=CONST(1));
                column(Vendor_Name_Control48;Vendor.Name)
                {
                }
                column(StartBalanceLCY____Vendor_Ledger_Entry___Amount__LCY___Control50;StartBalanceLCY + "Vendor Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Vendor_Name_Control15;Vendor.Name)
                {
                }
                column(StartBalanceLCY____Vendor_Ledger_Entry___Amount__LCY___Control17;StartBalanceLCY + "Vendor Ledger Entry"."Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(CustAmount;CustAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Integer_Number;Number)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT CustLedgEntryExists AND ((StartBalanceLCY = 0) OR NOT PrintAllHavingBal) THEN BEGIN
                      StartBalanceLCY := 0;
                      CurrReport.SKIP;
                    END;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                StartBalanceLCY := 0;
                IF CustDateFilter <> '' THEN
                  IF GETRANGEMIN("Date Filter") <> 0D THEN BEGIN
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change (LCY)");
                    StartBalanceLCY := "Net Change (LCY)";
                    SETFILTER("Date Filter",CustDateFilter);
                  END;
                CurrReport.PRINTONLYIFDETAIL := NOT (PrintAllHavingBal AND (StartBalanceLCY <> 0));
                CustBalanceLCY := StartBalanceLCY;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NEWPAGEPERRECORD := PrintOnlyOnePerPage;
                CurrReport.CREATETOTALS("Vendor Ledger Entry"."Amount (LCY)",StartBalanceLCY);
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
        CustFilter := Vendor.GETFILTERS;
        CustDateFilter := Vendor.GETFILTER("Date Filter");
        WITH "Vendor Ledger Entry" DO
          IF PrintAmountsInLCY THEN BEGIN
            AmountCaption := FIELDCAPTION("Amount (LCY)");
            RemainingAmtCaption := FIELDCAPTION("Remaining Amt. (LCY)");
          END ELSE BEGIN
            AmountCaption := FIELDCAPTION(Amount);
            RemainingAmtCaption := FIELDCAPTION("Remaining Amount");
          END;
    end;

    var
        Text000: Label 'Period: %1';
        PrintAmountsInLCY: Boolean;
        PrintOnlyOnePerPage: Boolean;
        PrintAllHavingBal: Boolean;
        CustFilter: Text[250];
        CustDateFilter: Text[30];
        AmountCaption: Text[30];
        RemainingAmtCaption: Text[30];
        CustAmount: Decimal;
        CustRemainAmount: Decimal;
        CustBalanceLCY: Decimal;
        CustCurrencyCode: Code[10];
        CustEntryDueDate: Date;
        StartBalanceLCY: Decimal;
        CustLedgEntryExists: Boolean;
        CustBalance: Decimal;
        Vendor___Detail_Trial_Bal_CaptionLbl: Label 'Vendor - Detail Trial Bal.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        This_report_also_includes_customers_that_only_have_balances_CaptionLbl: Label 'This report also includes customers that only have balances.';
        Vendor_Ledger_Entry__Document_Type_CaptionLbl: Label 'Document Type';
        BalanceCaptionLbl: Label 'Balance';
        CreditCaptionLbl: Label 'Credit';
        DebitCaptionLbl: Label 'Debit';
        Remaining_AmountCaptionLbl: Label 'Remaining Amount';
        Remaining_Amount__Naira_CaptionLbl: Label 'Remaining Amount (Naira)';
        Original_Amount__Naira_CaptionLbl: Label 'Original Amount (Naira)';
        Posting_DateCaptionLbl: Label 'Posting Date';
        Entry_NoCaptionLbl: Label 'Entry No';
        Currency_CodeCaptionLbl: Label 'Currency Code';
        Total__LCY_CaptionLbl: Label 'Total (LCY)';
        Total__LCY__Before_PeriodCaptionLbl: Label 'Total (LCY) Before Period';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control46Lbl: Label 'Continued';
}

