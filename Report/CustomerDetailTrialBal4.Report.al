report 50071 "Customer - Detail Trial Bal. 4"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerDetailTrialBal4.rdlc';
    Caption = 'Customer - Detail Trial Bal.';

    dataset
    {
        dataitem(DataItem6836; Table18)
        {
            DataItemTableView = SORTING (No.);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Customer Posting Group", "Date Filter";
            column(TodayFormatted; FORMAT(TODAY))
            {
            }
            column(PeriodCustDatetFilter; STRSUBSTNO(Text000, CustDateFilter))
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
            column(PrintAmountsInLCY; PrintAmountsInLCY)
            {
            }
            column(ExcludeBalanceOnly; ExcludeBalanceOnly)
            {
            }
            column(CustFilterCaption; TABLECAPTION + ': ' + CustFilter)
            {
            }
            column(CustFilter; CustFilter)
            {
            }
            column(RemainingAmtCaption1; RemainingAmtCaption1)
            {
            }
            column(AmountCaption1; AmountCaption1)
            {
            }
            column(AmountCaption; AmountCaption)
            {
            }
            column(RemainingAmtCaption; RemainingAmtCaption)
            {
            }
            column(No_Cust; "No.")
            {
            }
            column(Name_Cust; Name)
            {
            }
            column(PhoneNo_Cust; "Phone No.")
            {
                IncludeCaption = true;
            }
            column(PageGroupNo; PageGroupNo)
            {
            }
            column(CustBalance; CustBalance)
            {
            }
            column(StartBalanceAdj; StartBalanceAdj)
            {
            }
            column(StartBalance; StartBalance)
            {
            }
            column(StartBalanceLCY; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(StartBalAdjLCY; StartBalAdjLCY)
            {
                AutoFormatType = 1;
            }
            column(CustBalanceLCY; CustBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(CustLedgerEntryAmtLCY; "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCYAdjLCY; StartBalanceLCY + StartBalAdjLCY)
            {
                AutoFormatType = 1;
            }
            column(StrtBalLCYCustLedgEntryAmt; StartBalanceLCY + "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(CustDetailTrialBalCaption; CustDetailTrialBalCaptionLbl)
            {
            }
            column(PageNoCaption; PageNoCaptionLbl)
            {
            }
            column(AllAmtsLCYCaption; AllAmtsLCYCaptionLbl)
            {
            }
            column(RepInclCustsBalCptn; RepInclCustsBalCptnLbl)
            {
            }
            column(PostingDateCaption; PostingDateCaptionLbl)
            {
            }
            column(DueDateCaption; DueDateCaptionLbl)
            {
            }
            column(BalanceFCYCaption; BalanceFCYCaptionLbl)
            {
            }
            column(BalanceLCYCaption; BalanceLCYCaptionLbl)
            {
            }
            column(AdjOpeningBalCaption; AdjOpeningBalCaptionLbl)
            {
            }
            column(BeforePeriodCaption; BeforePeriodCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(OpeningBalCaption; OpeningBalCaptionLbl)
            {
            }
            dataitem(DataItem8503; Table21)
            {
                DataItemLink = Customer No.=FIELD(No.),
                               Posting Date=FIELD(Date Filter),
                               Global Dimension 2 Code=FIELD(Global Dimension 2 Filter),
                               Global Dimension 1 Code=FIELD(Global Dimension 1 Filter),
                               Date Filter=FIELD(Date Filter);
                DataItemTableView = SORTING(Customer No.,Posting Date);
                column(PostDate_CustLedgEntry;FORMAT("Posting Date"))
                {
                }
                column(DocType_CustLedgEntry;"Document Type")
                {
                    IncludeCaption = true;
                }
                column(DocNo_CustLedgEntry;"Document No.")
                {
                    IncludeCaption = true;
                }
                column(Desc_CustLedgEntry;Description)
                {
                    IncludeCaption = true;
                }
                column(CustRemAmount2;CustRemAmount2)
                {
                }
                column(CustAmount1;CustAmount1)
                {
                }
                column(CustAmount;CustAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(Amount_CustLedgerEntry;"Cust. Ledger Entry".Amount)
                {
                }
                column(RemainingAmount_CustLedgerEntry;"Cust. Ledger Entry"."Remaining Amount")
                {
                }
                column(CustRemainAmount;CustRemainAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustEntryDueDate;FORMAT(CustEntryDueDate))
                {
                }
                column(EntryNo_CustLedgEntry;"Entry No.")
                {
                    IncludeCaption = true;
                }
                column(CustCurrencyCode;CustCurrencyCode)
                {
                }
                column(CustBalance1;CustBalance)
                {
                }
                column(CustBalanceLCY1;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                dataitem(DataItem6942;Table379)
                {
                    DataItemLink = Cust. Ledger Entry No.=FIELD(Entry No.);
                    DataItemTableView = SORTING(Cust. Ledger Entry No.,Entry Type,Posting Date)
                                        WHERE(Entry Type=FILTER(Appln. Rounding|Correction of Remaining Amount));
                    column(EntryType_DtldCustLedgEntry;FORMAT("Entry Type"))
                    {
                    }
                    column(Correction;Correction)
                    {
                        AutoFormatType = 1;
                    }
                    column(CustBalance2;CustBalance)
                    {
                    }
                    column(CustBalanceLCY2;CustBalanceLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(ApplicationRounding;ApplicationRounding)
                    {
                        AutoFormatType = 1;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        CASE "Entry Type" OF
                          "Entry Type"::"Appln. Rounding":
                            ApplicationRounding := ApplicationRounding + "Amount (LCY)";
                          "Entry Type"::"Correction of Remaining Amount":
                            Correction := Correction + "Amount (LCY)";
                        END;
                        CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                        CustBalance := CustBalance + "Detailed Cust. Ledg. Entry".Amount;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETFILTER("Posting Date",CustDateFilter);
                        Correction := 0;
                        ApplicationRounding := 0;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CALCFIELDS(Amount,"Remaining Amount","Amount (LCY)","Remaining Amt. (LCY)");

                    CustLedgEntryExists := TRUE;
                    IF PrintAmountsInLCY THEN BEGIN
                      CustAmount := "Amount (LCY)";
                      CustRemainAmount := "Remaining Amt. (LCY)";
                      CustAmount1 := "Cust. Ledger Entry".Amount;
                      CustRemAmount2 := "Cust. Ledger Entry"."Remaining Amount";
                      CustCurrencyCode := '';
                    END ELSE BEGIN
                      CustAmount := Amount;
                      CustRemainAmount := "Remaining Amount";
                      CustAmount1 :=  "Amount (LCY)";
                      CustRemAmount2 :=   "Remaining Amt. (LCY)";
                      CustCurrencyCode := "Currency Code";
                    END;
                    CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                    CustBalance := CustBalance + "Cust. Ledger Entry".Amount;

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
                column(Name1_Cust;Customer.Name)
                {
                }
                column(CustBalance4;CustBalance)
                {
                }
                column(CustBalanceLCY4;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY2;StartBalanceLCY)
                {
                }
                column(StartBalAdjLCY2;StartBalAdjLCY)
                {
                }
                column(CustBalStBalStBalAdjLCY;CustBalanceLCY - StartBalanceLCY - StartBalAdjLCY)
                {
                    AutoFormatType = 1;
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT CustLedgEntryExists AND ((StartBalanceLCY = 0) OR ExcludeBalanceOnly) THEN BEGIN
                      StartBalanceLCY := 0;
                      CurrReport.SKIP;
                    END;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF PrintOnlyOnePerPage THEN
                  PageGroupNo := PageGroupNo + 1;


                // ADDED BY BASLAM

                StartBalance := 0;
                IF CustDateFilter <> '' THEN
                 IF GETRANGEMIN("Date Filter") <> 0D  THEN BEGIN
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change");
                    StartBalance := -"Net Change";
                    SETFILTER("Date Filter",CustDateFilter);
                  END;

                //
                StartBalanceLCY := 0;
                StartBalAdjLCY := 0;
                IF CustDateFilter <> '' THEN BEGIN
                  IF GETRANGEMIN("Date Filter") <> 0D THEN BEGIN
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change (LCY)");
                    StartBalanceLCY := "Net Change (LCY)";
                    StartBalanceAdj := "Net Change";
                  END;
                  SETFILTER("Date Filter",CustDateFilter);
                  CALCFIELDS("Net Change (LCY)");
                  StartBalAdjLCY := "Net Change (LCY)";
                  StartBalanceAdj := "Net Change";
                  CustLedgEntry.SETCURRENTKEY("Customer No.","Posting Date");
                  CustLedgEntry.SETRANGE("Customer No.","No.");
                  CustLedgEntry.SETFILTER("Posting Date",CustDateFilter);
                  IF CustLedgEntry.FIND('-') THEN
                    REPEAT
                      CustLedgEntry.SETFILTER("Date Filter",CustDateFilter);
                      CustLedgEntry.CALCFIELDS("Amount (LCY)");
                      StartBalAdjLCY := StartBalAdjLCY - CustLedgEntry."Amount (LCY)";
                       StartBalanceAdj := StartBalanceAdj - CustLedgEntry.Amount ;
                      "Detailed Cust. Ledg. Entry".SETCURRENTKEY("Cust. Ledger Entry No.","Entry Type","Posting Date");
                      "Detailed Cust. Ledg. Entry".SETRANGE("Cust. Ledger Entry No.",CustLedgEntry."Entry No.");
                      "Detailed Cust. Ledg. Entry".SETFILTER("Entry Type",'%1|%2',
                        "Detailed Cust. Ledg. Entry"."Entry Type"::"Correction of Remaining Amount",
                        "Detailed Cust. Ledg. Entry"."Entry Type"::"Appln. Rounding");
                      "Detailed Cust. Ledg. Entry".SETFILTER("Posting Date",CustDateFilter);
                      IF "Detailed Cust. Ledg. Entry".FIND('-') THEN
                        REPEAT
                          StartBalAdjLCY := StartBalAdjLCY - "Detailed Cust. Ledg. Entry"."Amount (LCY)";
                          StartBalanceAdj := StartBalanceAdj - "Detailed Cust. Ledg. Entry"."Amount (LCY)";
                        UNTIL "Detailed Cust. Ledg. Entry".NEXT = 0;
                      "Detailed Cust. Ledg. Entry".RESET;
                    UNTIL CustLedgEntry.NEXT = 0;
                END;
                CurrReport.PRINTONLYIFDETAIL := ExcludeBalanceOnly OR (StartBalanceLCY = 0);
                CustBalanceLCY := StartBalanceLCY + StartBalAdjLCY;
                CustBalance := StartBalance + StartBalanceAdj;
            end;

            trigger OnPreDataItem()
            begin
                PageGroupNo := 1;
                CurrReport.NEWPAGEPERRECORD := PrintOnlyOnePerPage;
                CurrReport.CREATETOTALS("Cust. Ledger Entry"."Amount (LCY)",StartBalanceLCY,StartBalAdjLCY,Correction,ApplicationRounding);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(ShowAmountsInLCY;PrintAmountsInLCY)
                    {
                        Caption = 'Show Amounts in LCY';
                    }
                    field(NewPageperCustomer;PrintOnlyOnePerPage)
                    {
                        Caption = 'New Page per Customer';
                    }
                    field(ExcludeCustHaveaBalanceOnly;ExcludeBalanceOnly)
                    {
                        Caption = 'Exclude Customers That Have a Balance Only';
                        MultiLine = true;
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
        CustFilter := Customer.GETFILTERS;
        CustDateFilter := Customer.GETFILTER("Date Filter");
        WITH "Cust. Ledger Entry" DO
          IF PrintAmountsInLCY THEN BEGIN
            AmountCaption := FIELDCAPTION("Amount (LCY)");
            RemainingAmtCaption := FIELDCAPTION("Remaining Amt. (LCY)");
            AmountCaption1 := FIELDCAPTION(Amount);
            RemainingAmtCaption1 := FIELDCAPTION("Remaining Amount");

          END ELSE BEGIN
            AmountCaption := FIELDCAPTION(Amount);
            RemainingAmtCaption := FIELDCAPTION("Remaining Amount");
            AmountCaption1 := FIELDCAPTION("Amount (LCY)");
            RemainingAmtCaption1 := FIELDCAPTION("Remaining Amt. (LCY)");

          END;
    end;

    var
        Text000: Label 'Period: %1';
        CustLedgEntry: Record "21";
        PrintAmountsInLCY: Boolean;
        PrintOnlyOnePerPage: Boolean;
        ExcludeBalanceOnly: Boolean;
        CustFilter: Text;
        CustDateFilter: Text[30];
        AmountCaption: Text[80];
        RemainingAmtCaption: Text[30];
        CustAmount: Decimal;
        CustRemainAmount: Decimal;
        CustBalanceLCY: Decimal;
        CustCurrencyCode: Code[10];
        CustEntryDueDate: Date;
        StartBalanceLCY: Decimal;
        StartBalAdjLCY: Decimal;
        Correction: Decimal;
        ApplicationRounding: Decimal;
        CustLedgEntryExists: Boolean;
        PageGroupNo: Integer;
        CustDetailTrialBalCaptionLbl: Label 'Customer - Detail Trial Bal.';
        PageNoCaptionLbl: Label 'Page';
        AllAmtsLCYCaptionLbl: Label 'All amounts are in LCY';
        RepInclCustsBalCptnLbl: Label 'This report also includes customers that only have balances.';
        PostingDateCaptionLbl: Label 'Posting Date';
        DueDateCaptionLbl: Label 'Due Date';
        BalanceFCYCaptionLbl: Label 'Balance (FCY)';
        BalanceLCYCaptionLbl: Label 'Balance (LCY)';
        AdjOpeningBalCaptionLbl: Label 'Adj. of Opening Balance';
        BeforePeriodCaptionLbl: Label 'Total (LCY) Before Period';
        TotalCaptionLbl: Label 'Total (LCY)';
        OpeningBalCaptionLbl: Label 'Total Adj. of Opening Balance';
        StartBalance: Decimal;
        StartBalanceAdj: Decimal;
        CustBalance: Decimal;
        CustAmount1: Decimal;
        CustRemAmount2: Decimal;
        AmountCaption1: Text[80];
        RemainingAmtCaption1: Text[30];

    [Scope('Internal')]
    procedure InitializeRequest(ShowAmountInLCY: Boolean;SetPrintOnlyOnePerPage: Boolean;SetExcludeBalanceOnly: Boolean)
    begin
        PrintOnlyOnePerPage := SetPrintOnlyOnePerPage;
        PrintAmountsInLCY := ShowAmountInLCY;
        ExcludeBalanceOnly := SetExcludeBalanceOnly;
    end;
}

