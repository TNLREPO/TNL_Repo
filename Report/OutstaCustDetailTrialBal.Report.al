report 50362 "Outsta.Cust- Detail Trial Bal."
{
    DefaultLayout = RDLC;
    RDLCLayout = './OutstaCustDetailTrialBal.rdlc';
    Caption = 'Outstanding Balances Customer Detail Trial Balance';

    dataset
    {
        dataitem(DataItem6836; Table18)
        {
            DataItemTableView = SORTING (No.);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Customer Posting Group", "Date Filter";
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
            column(PrintAmountsInLCY; PrintAmountsInLCY)
            {
            }
            column(PrintOnlyOnePerPage; PrintOnlyOnePerPage)
            {
            }
            column(ExcludeBalanceOnly; ExcludeBalanceOnly)
            {
            }
            column(Customer_TABLECAPTION__________CustFilter; Customer.TABLECAPTION + ': ' + CustFilter)
            {
            }
            column(CustFilter; CustFilter)
            {
            }
            column(AmountCaption; AmountCaption)
            {
            }
            column(RemainingAmtCaption; RemainingAmtCaption)
            {
            }
            column(Customer__No__; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            column(Customer__Phone_No__; "Phone No.")
            {
            }
            column(PageGroupNo; PageGroupNo)
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
            column(StartBalanceLCY___StartBalAdjLCY____Cust__Ledger_Entry___Amount__LCY_____Correction___ApplicationRounding; StartBalanceLCY + StartBalAdjLCY + "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY_Control47; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(Cust__Ledger_Entry___Amount__LCY_____Correction___ApplicationRounding; "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartBalAdjLCY_Control67; StartBalAdjLCY)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY___StartBalAdjLCY; StartBalanceLCY + StartBalAdjLCY)
            {
                AutoFormatType = 1;
            }
            column(Cust__Ledger_Entry___Amount__LCY_____Correction___ApplicationRounding_Control69; "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY____Cust__Ledger_Entry___Amount__LCY_____Correction___ApplicationRounding; StartBalanceLCY + "Cust. Ledger Entry"."Amount (LCY)" + Correction + ApplicationRounding)
            {
                AutoFormatType = 1;
            }
            column(StartBalanceLCY_Control71; StartBalanceLCY)
            {
                AutoFormatType = 1;
            }
            column(Customer___Detail_Trial_Bal_Caption; Customer___Detail_Trial_Bal_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(All_amounts_are_in_LCYCaption; All_amounts_are_in_LCYCaptionLbl)
            {
            }
            column(This_report_also_includes_customers_that_only_have_balances_Caption; This_report_also_includes_customers_that_only_have_balances_CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Posting_Date_Caption; Cust__Ledger_Entry__Posting_Date_CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Document_Type_Caption; Cust__Ledger_Entry__Document_Type_CaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Document_No__Caption; "Cust. Ledger Entry".FIELDCAPTION("Document No."))
            {
            }
            column(Cust__Ledger_Entry_DescriptionCaption; "Cust. Ledger Entry".FIELDCAPTION(Description))
            {
            }
            column(CustEntryDueDateCaption; CustEntryDueDateCaptionLbl)
            {
            }
            column(Cust__Ledger_Entry__Entry_No__Caption; "Cust. Ledger Entry".FIELDCAPTION("Entry No."))
            {
            }
            column(CustBalanceLCY_Control56Caption; CustBalanceLCY_Control56CaptionLbl)
            {
            }
            column(Customer__Phone_No__Caption; FIELDCAPTION("Phone No."))
            {
            }
            column(Adj__of_Opening_BalanceCaption; Adj__of_Opening_BalanceCaptionLbl)
            {
            }
            column(Total__LCY__Before_PeriodCaption; Total__LCY__Before_PeriodCaptionLbl)
            {
            }
            column(Total__LCY_Caption; Total__LCY_CaptionLbl)
            {
            }
            column(Total_Adj__of_Opening_BalanceCaption; Total_Adj__of_Opening_BalanceCaptionLbl)
            {
            }
            column(Total__LCY_Caption_Control30; Total__LCY_Caption_Control30Lbl)
            {
            }
            column(Total__LCY__Before_PeriodCaption_Control16; Total__LCY__Before_PeriodCaption_Control16Lbl)
            {
            }
            column(Customer_Date_Filter; "Date Filter")
            {
            }
            column(Customer_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }
            column(Customer_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            dataitem(DataItem8503; Table21)
            {
                DataItemLink = Customer No.=FIELD(No.),
                               Posting Date=FIELD(Date Filter),
                               Global Dimension 2 Code=FIELD(Global Dimension 2 Filter),
                               Global Dimension 1 Code=FIELD(Global Dimension 1 Filter),
                               Date Filter=FIELD(Date Filter);
                DataItemTableView = SORTING(Customer No.,Posting Date)
                                    WHERE(Remaining Amount=FILTER(<>0));
                column(StartBalanceLCY___StartBalAdjLCY____Amount__LCY__;StartBalanceLCY + StartBalAdjLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(Cust__Ledger_Entry__Posting_Date_;FORMAT("Posting Date"))
                {
                }
                column(Cust__Ledger_Entry__Document_Type_;"Document Type")
                {
                }
                column(Cust__Ledger_Entry__Document_No__;"Document No.")
                {
                }
                column(Cust__Ledger_Entry_Description;Description)
                {
                }
                column(CustAmount;CustAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustRemainAmount;CustRemainAmount)
                {
                    AutoFormatExpression = CustCurrencyCode;
                    AutoFormatType = 1;
                }
                column(CustEntryDueDate;FORMAT(CustEntryDueDate))
                {
                }
                column(Cust__Ledger_Entry__Entry_No__;"Entry No.")
                {
                }
                column(CustCurrencyCode;CustCurrencyCode)
                {
                }
                column(CustBalanceLCY_Control56;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY___StartBalAdjLCY____Amount__LCY___Control59;StartBalanceLCY + StartBalAdjLCY + "Amount (LCY)")
                {
                    AutoFormatType = 1;
                }
                column(ContinuedCaption;ContinuedCaptionLbl)
                {
                }
                column(ContinuedCaption_Control46;ContinuedCaption_Control46Lbl)
                {
                }
                column(Cust__Ledger_Entry_Customer_No_;"Customer No.")
                {
                }
                column(Cust__Ledger_Entry_Posting_Date;"Posting Date")
                {
                }
                column(Cust__Ledger_Entry_Global_Dimension_2_Code;"Global Dimension 2 Code")
                {
                }
                column(Cust__Ledger_Entry_Global_Dimension_1_Code;"Global Dimension 1 Code")
                {
                }
                column(Cust__Ledger_Entry_Date_Filter;"Date Filter")
                {
                }
                dataitem(DataItem6942;Table379)
                {
                    DataItemLink = Cust. Ledger Entry No.=FIELD(Entry No.);
                    DataItemTableView = SORTING(Cust. Ledger Entry No.,Entry Type,Posting Date)
                                        WHERE(Entry Type=CONST(Correction of Remaining Amount));
                    column(Cust__Ledger_Entry___Document_No__;"Cust. Ledger Entry"."Document No.")
                    {
                    }
                    column(Cust__Ledger_Entry___Document_Type_;"Cust. Ledger Entry"."Document Type")
                    {
                    }
                    column(Detailed_Cust__Ledg__Entry__Entry_Type_;"Entry Type")
                    {
                    }
                    column(Correction;Correction)
                    {
                        AutoFormatType = 1;
                    }
                    column(CustBalanceLCY_Control61;CustBalanceLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(Detailed_Cust__Ledg__Entry_Entry_No_;"Entry No.")
                    {
                    }
                    column(Detailed_Cust__Ledg__Entry_Cust__Ledger_Entry_No_;"Cust. Ledger Entry No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    var
                        DtldCustLedgEntry: Record "379";
                    begin
                        Correction := Correction + "Amount (LCY)";
                        CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETFILTER("Posting Date",CustDateFilter);
                        IF ISSERVICETIER THEN
                          Correction := 0;
                    end;
                }
                dataitem("Detailed Cust. Ledg. Entry2";Table379)
                {
                    DataItemLink = Cust. Ledger Entry No.=FIELD(Entry No.);
                    DataItemTableView = SORTING(Cust. Ledger Entry No.,Entry Type,Posting Date)
                                        WHERE(Entry Type=CONST(Appln. Rounding));
                    column(Cust__Ledger_Entry___Document_Type__Control29;"Cust. Ledger Entry"."Document Type")
                    {
                    }
                    column(Cust__Ledger_Entry___Document_No___Control31;"Cust. Ledger Entry"."Document No.")
                    {
                    }
                    column(Detailed_Cust__Ledg__Entry2__Entry_Type_;"Entry Type")
                    {
                    }
                    column(ApplicationRounding;ApplicationRounding)
                    {
                        AutoFormatType = 1;
                    }
                    column(CustBalanceLCY_Control73;CustBalanceLCY)
                    {
                        AutoFormatType = 1;
                    }
                    column(Detailed_Cust__Ledg__Entry2_Entry_No_;"Entry No.")
                    {
                    }
                    column(Detailed_Cust__Ledg__Entry2_Cust__Ledger_Entry_No_;"Cust. Ledger Entry No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        ApplicationRounding := ApplicationRounding + "Amount (LCY)";
                        CustBalanceLCY := CustBalanceLCY + "Amount (LCY)";
                        IF CONFIRM('%1 %2',TRUE,Text001,ApplicationRounding) THEN;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETFILTER("Posting Date",CustDateFilter);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    CALCFIELDS(Amount,"Remaining Amount","Amount (LCY)","Remaining Amt. (LCY)");

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
                column(Customer_Name_Control48;Customer.Name)
                {
                }
                column(CustBalanceLCY_Control62;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(StartBalanceLCY_Control80;StartBalanceLCY)
                {
                }
                column(StartBalAdjLCY_Control81;StartBalAdjLCY)
                {
                }
                column(Customer_Name_Control15;Customer.Name)
                {
                }
                column(CustBalanceLCY_StartBalanceLCY_StartBalAdjLCY;CustBalanceLCY-StartBalanceLCY-StartBalAdjLCY)
                {
                    AutoFormatType = 1;
                }
                column(CustBalanceLCY_Control63;CustBalanceLCY)
                {
                    AutoFormatType = 1;
                }
                column(Integer_Number;Number)
                {
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
                IF ISSERVICETIER THEN BEGIN
                  IF PrintOnlyOnePerPage THEN
                    PageGroupNo := PageGroupNo + 1;
                END;

                StartBalanceLCY := 0;
                StartBalAdjLCY := 0;
                IF CustDateFilter <> '' THEN BEGIN
                  IF GETRANGEMIN("Date Filter") <> 0D THEN BEGIN
                    SETRANGE("Date Filter",0D,GETRANGEMIN("Date Filter") - 1);
                    CALCFIELDS("Net Change (LCY)");
                    StartBalanceLCY := "Net Change (LCY)";
                  END;
                  SETFILTER("Date Filter",CustDateFilter);
                  CALCFIELDS("Net Change (LCY)");
                  StartBalAdjLCY := "Net Change (LCY)";
                  CustLedgEntry.SETCURRENTKEY("Customer No.","Posting Date");
                  CustLedgEntry.SETRANGE("Customer No.",Customer."No.");
                  CustLedgEntry.SETFILTER("Posting Date",CustDateFilter);
                  IF CustLedgEntry.FIND('-') THEN
                    REPEAT
                      CustLedgEntry.SETFILTER("Date Filter",CustDateFilter);
                      CustLedgEntry.CALCFIELDS("Amount (LCY)");
                      StartBalAdjLCY := StartBalAdjLCY - CustLedgEntry."Amount (LCY)";
                      "Detailed Cust. Ledg. Entry".SETCURRENTKEY("Cust. Ledger Entry No.","Entry Type","Posting Date");
                      "Detailed Cust. Ledg. Entry".SETRANGE("Cust. Ledger Entry No.",CustLedgEntry."Entry No.");
                      "Detailed Cust. Ledg. Entry".SETFILTER("Entry Type",'%1|%2',
                        "Detailed Cust. Ledg. Entry"."Entry Type"::"Correction of Remaining Amount",
                        "Detailed Cust. Ledg. Entry"."Entry Type"::"Appln. Rounding");
                      "Detailed Cust. Ledg. Entry".SETFILTER("Posting Date",CustDateFilter);
                      IF "Detailed Cust. Ledg. Entry".FIND('-') THEN
                        REPEAT
                          StartBalAdjLCY := StartBalAdjLCY - "Detailed Cust. Ledg. Entry"."Amount (LCY)";
                        UNTIL "Detailed Cust. Ledg. Entry".NEXT = 0;
                      "Detailed Cust. Ledg. Entry".RESET;
                    UNTIL CustLedgEntry.NEXT = 0;
                END;
                CurrReport.PRINTONLYIFDETAIL := ExcludeBalanceOnly OR (StartBalanceLCY = 0);
                CustBalanceLCY := StartBalanceLCY + StartBalAdjLCY
            end;

            trigger OnPreDataItem()
            begin
                PageGroupNo := 1;
                CurrReport.NEWPAGEPERRECORD := PrintOnlyOnePerPage;
                CurrReport.CREATETOTALS("Cust. Ledger Entry"."Amount (LCY)",StartBalanceLCY, StartBalAdjLCY, Correction, ApplicationRounding);
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
                    field(PrintAmountsInLCY;PrintAmountsInLCY)
                    {
                        Caption = 'Show Amounts in LCY';
                    }
                    field(PrintOnlyOnePerPage;PrintOnlyOnePerPage)
                    {
                        Caption = 'New Page per Customer';
                    }
                    field(ExcludeBalanceOnly;ExcludeBalanceOnly)
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
          END ELSE BEGIN
            AmountCaption := FIELDCAPTION(Amount);
            RemainingAmtCaption := FIELDCAPTION("Remaining Amount");
          END;
    end;

    var
        Text000: Label 'Period: %1';
        CustLedgEntry: Record "21";
        PrintAmountsInLCY: Boolean;
        PrintOnlyOnePerPage: Boolean;
        ExcludeBalanceOnly: Boolean;
        CustFilter: Text[250];
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
        Text001: Label 'Appln Rounding:';
        PageGroupNo: Integer;
        Customer___Detail_Trial_Bal_CaptionLbl: Label 'Customer - Detail Trial Bal.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        All_amounts_are_in_LCYCaptionLbl: Label 'All amounts are in LCY';
        This_report_also_includes_customers_that_only_have_balances_CaptionLbl: Label 'This report also includes customers that only have balances.';
        Cust__Ledger_Entry__Posting_Date_CaptionLbl: Label 'Posting Date';
        Cust__Ledger_Entry__Document_Type_CaptionLbl: Label 'Document Type';
        CustEntryDueDateCaptionLbl: Label 'Due Date';
        CustBalanceLCY_Control56CaptionLbl: Label 'Balance (LCY)';
        Adj__of_Opening_BalanceCaptionLbl: Label 'Adj. of Opening Balance';
        Total__LCY__Before_PeriodCaptionLbl: Label 'Total (LCY) Before Period';
        Total__LCY_CaptionLbl: Label 'Total (LCY)';
        Total_Adj__of_Opening_BalanceCaptionLbl: Label 'Total Adj. of Opening Balance';
        Total__LCY_Caption_Control30Lbl: Label 'Total (LCY)';
        Total__LCY__Before_PeriodCaption_Control16Lbl: Label 'Total (LCY) Before Period';
        ContinuedCaptionLbl: Label 'Continued';
        ContinuedCaption_Control46Lbl: Label 'Continued';
}

