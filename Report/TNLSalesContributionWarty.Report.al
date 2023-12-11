report 50193 "TNL Sales Contribution & Warty"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TNLSalesContributionWarty.rdlc';

    dataset
    {
        dataitem(DataItem5444; Table2000000026)
        {
            DataItemTableView = SORTING (Number);
            MaxIteration = 1;
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
            column(TNL_CONTRIBUTIONCaption; TNL_CONTRIBUTIONCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Invoice_Header__No__Caption; "Sales Invoice Header".FIELDCAPTION("No."))
            {
            }
            column(Customer_No_Caption; Customer_No_CaptionLbl)
            {
            }
            column(AmtCaption; AmtCaptionLbl)
            {
            }
            column(Sales_Invoice_Header__Cost_Value_Caption; "Sales Invoice Header".FIELDCAPTION("Cost Value"))
            {
            }
            column(Customer_NameCaption; Customer_NameCaptionLbl)
            {
            }
            column(ShowInvoice; ShowInvoice)
            {
            }
            column(ShowCreditMemo; ShowCreditMemo)
            {
            }
            column(ShowWarranty; ShowWarranty)
            {
            }
            column(Contribution_MarginCaption; Contribution_MarginCaptionLbl)
            {
            }
            column(Contr___Caption; Contr___CaptionLbl)
            {
            }
            column(Line_Item_CountCaption; Line_Item_CountCaptionLbl)
            {
            }
            column(Sales_Invoice_Header__Posting_Date_Caption; "Sales Invoice Header".FIELDCAPTION("Posting Date"))
            {
            }
            column(Integer_Number; Number)
            {
            }
            dataitem(DataItem5581; Table112)
            {
                CalcFields = Amount, Cost Value, Quantity, Line Item Count;
                DataItemTableView = SORTING (Posting Date, No.)
                                    WHERE (Source Code=FILTER(<>*DELETED));
                RequestFilterFields = "No.","Sell-to Customer No.","Shortcut Dimension 1 Code","Order Type","Gen. Bus. Posting Group","Customer Posting Group","Location Code","Shortcut Dimension 2 Code";
                column(FILTERS_______GETFILTERS__;'FILTERS := ' +GETFILTERS())
                {
                }
                column(Sales_Invoice_Header__No__;"No.")
                {
                }
                column(Sales_Invoice_Header__Sell_to_Customer_No__;"Sell-to Customer No.")
                {
                }
                column(Amt;Amt)
                {
                }
                column(Sales_Invoice_Header__Cost_Value_;"Cost Value")
                {
                }
                column(Cont;Cont)
                {
                }
                column(ContPercent;ContPercent)
                {
                }
                column(Sales_Invoice_Header__Sell_to_Customer_Name_;"Sell-to Customer Name")
                {
                }
                column(Sales_Invoice_Header__Line_Item_Count_;"Line Item Count")
                {
                    DecimalPlaces = 0:0;
                }
                column(Sales_Invoice_Header__Posting_Date_;"Posting Date")
                {
                }
                column(TAmountInv;TAmountInv)
                {
                }
                column(TCostInv;TCostInv)
                {
                }
                column(TContInv;TContInv)
                {
                }
                column(TContPctInv;TContPctInv)
                {
                }
                column(L1;L1)
                {
                    DecimalPlaces = 0:0;
                }
                column(Total_For_____FORMAT_InvCount______Invoices_;'Total For ' + FORMAT(InvCount) + ' Invoices')
                {
                    DecimalPlaces = 0:0;
                }
                column(Sales_InvoiceCaption;Sales_InvoiceCaptionLbl)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT ShowInvoice THEN CurrReport.SKIP;

                    IF ("Sales Invoice Header"."Currency Factor"<>0) THEN
                      Amt := "Sales Invoice Header".Amount/"Sales Invoice Header"."Currency Factor"
                    ELSE
                      Amt := "Sales Invoice Header".Amount;

                    Cont := Amt - "Sales Invoice Header"."Cost Value";

                    IF Amt<>0 THEN
                      ContPercent := (Cont/Amt)*100
                    ELSE
                      Cont := 0;


                    InvCount := InvCount + 1;
                    L1 := L1 + "Sales Invoice Header"."Line Item Count";
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CREATETOTALS(Cont);

                    CASE ItemType OF
                     1:
                      BEGIN
                        "Sales Invoice Header".SETRANGE("Sales Invoice Header"."Shortcut Dimension 1 Code",'05PARTS');
                      END;
                     2:
                      BEGIN
                      "Sales Invoice Header".SETRANGE("Sales Invoice Header"."Shortcut Dimension 1 Code",'09MARKET');
                      END;
                     3:
                      BEGIN
                      "Sales Invoice Header".SETRANGE("Sales Invoice Header"."Shortcut Dimension 1 Code",'06SERVICE');

                      END;
                    END;

                    "Sales Invoice Header".SETFILTER("Sales Invoice Header"."Posting Date",'%1..%2',StartDate,EndDate);
                    IF CustPGrp<>'' THEN
                      "Sales Invoice Header".SETRANGE("Sales Invoice Header"."Customer Posting Group",CustPGrp);


                    InvCount := 0;
                    CrCount := 0;
                end;
            }
            dataitem(DataItem8098;Table114)
            {
                CalcFields = Lines Shortcut Dimension 1,Cost Value,Amount,Quantity,Line Item Count;
                DataItemTableView = SORTING(Posting Date,No.)
                                    WHERE(Source Code=FILTER(<>*DELETED));
                RequestFilterFields = "No.","Sell-to Customer No.","Shortcut Dimension 1 Code","Order Type","Gen. Bus. Posting Group","Customer Posting Group","Location Code","Shortcut Dimension 2 Code";
                column(FILTERS_______GETFILTERS___Control1000000050;'FILTERS := ' +GETFILTERS())
                {
                }
                column(Sales_Cr_Memo_Header__No__;"No.")
                {
                }
                column(Sales_Cr_Memo_Header__Sell_to_Customer_No__;"Sell-to Customer No.")
                {
                }
                column(Amt_Control1000000023;Amt)
                {
                }
                column(Sales_Cr_Memo_Header__Cost_Value_;"Cost Value")
                {
                }
                column(Cont_Control1000000025;Cont)
                {
                }
                column(ContPercent_Control1000000026;ContPercent)
                {
                }
                column(Sales_Cr_Memo_Header__Sell_to_Customer_Name_;"Sell-to Customer Name")
                {
                }
                column(Sales_Cr_Memo_Header__Line_Item_Count_;"Line Item Count")
                {
                    DecimalPlaces = 0:0;
                }
                column(Sales_Cr_Memo_Header__Posting_Date_;"Posting Date")
                {
                }
                column(TAmountCr;TAmountCr)
                {
                }
                column(TCostCr;TCostCr)
                {
                }
                column(TContCr;TContCr)
                {
                }
                column(TContPctCr;TContPctCr)
                {
                }
                column(L2;L2)
                {
                    DecimalPlaces = 0:0;
                }
                column(Total_For_____FORMAT_CrCount______Credit_Notes_;'Total For ' + FORMAT(CrCount) + ' Credit Notes')
                {
                    DecimalPlaces = 0:0;
                }
                column(TAmountInv_Control1000000028;TAmountInv)
                {
                }
                column(TCostInv_Control1000000029;TCostInv)
                {
                }
                column(TContInv_Control1000000034;TContInv)
                {
                }
                column(TContPctInv_Control1000000035;TContPctInv)
                {
                }
                column(TAmountCr_Control1000000046;TAmountCr)
                {
                }
                column(TCostCr_Control1000000047;TCostCr)
                {
                }
                column(TContCr_Control1000000048;TContCr)
                {
                }
                column(TContPctCr_Control1000000049;TContPctCr)
                {
                }
                column(AllAmount;AllAmount)
                {
                }
                column(AllCost;AllCost)
                {
                }
                column(AllCont;AllCont)
                {
                }
                column(AllPct;AllPct)
                {
                }
                column(L1_Control1000000068;L1)
                {
                    DecimalPlaces = 0:0;
                }
                column(L2_Control1000000069;L2)
                {
                    DecimalPlaces = 0:0;
                }
                column(InvCount;InvCount)
                {
                    DecimalPlaces = 0:0;
                }
                column(CrCount;CrCount)
                {
                    DecimalPlaces = 0:0;
                }
                column(Credit_MemoCaption;Credit_MemoCaptionLbl)
                {
                }
                column(Total_Sales_InvoiceCaption;Total_Sales_InvoiceCaptionLbl)
                {
                }
                column(Total_Credit_MemoCaption;Total_Credit_MemoCaptionLbl)
                {
                }
                column(Overall_SalesCaption;Overall_SalesCaptionLbl)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT ShowCreditMemo THEN CurrReport.SKIP;

                    IF ("Sales Cr.Memo Header"."Currency Factor"<>0) THEN
                      Amt := "Sales Cr.Memo Header".Amount/"Sales Cr.Memo Header"."Currency Factor"
                    ELSE
                      Amt := "Sales Cr.Memo Header".Amount;

                    Cont := Amt - "Sales Cr.Memo Header"."Cost Value";

                    IF Amt<>0 THEN
                      ContPercent := (Cont/Amt)*100
                    ELSE
                      ContPercent := 0;

                    CrCount := CrCount +1;
                    L2 := L2 + "Sales Cr.Memo Header"."Line Item Count";
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CREATETOTALS(Cont);
                    Cont := 0;
                    Amount := 0;
                    TContCr :=   0;
                    TAmountCr := 0;

                    CASE ItemType OF
                     1:
                      "Sales Cr.Memo Header".SETRANGE("Sales Cr.Memo Header"."Shortcut Dimension 1 Code",'05PARTS');
                     2:
                      "Sales Cr.Memo Header".SETRANGE("Sales Cr.Memo Header"."Shortcut Dimension 1 Code",'09MARKET');
                     3:
                      "Sales Cr.Memo Header".SETRANGE("Sales Cr.Memo Header"."Shortcut Dimension 1 Code",'06SERVICE');
                    END;


                    //"Sales Invoice Header".SETrange("Sales Invoice Header"."Posting Date",StartDate,EndDate);
                    "Sales Cr.Memo Header".SETFILTER("Sales Cr.Memo Header"."Posting Date",'%1..%2',StartDate,EndDate);
                    IF CustPGrp<>'' THEN
                      "Sales Cr.Memo Header".SETRANGE("Sales Cr.Memo Header"."Customer Posting Group",CustPGrp);
                end;
            }
            dataitem(DataItem7515;Table50038)
            {
                CalcFields = Total Material Claim cost,Line Item Count;
                DataItemTableView = SORTING(Claim No.);
                RequestFilterFields = "Dealer Code","Process Date","Material Posting Date";
                column(FILTERS_______GETFILTERS___Control1000000078;'FILTERS := ' +GETFILTERS())
                {
                }
                column(Warranty_Claim_Header__Claim_No__;"Claim No.")
                {
                }
                column(Warranty_Claim_Header__Dealer_Code_;"Dealer Code")
                {
                }
                column(Warranty_Claim_Header__Dealer_Name_;"Dealer Name")
                {
                }
                column(Warranty_Claim_Header__Material_Posting_Date_;"Material Posting Date")
                {
                }
                column(Warranty_Claim_Header__Total_Material_Claim_cost_;"Total Material Claim cost")
                {
                }
                column(Warranty_Claim_Header__Total_Material_Claim_cost__Control1000000080;"Total Material Claim cost")
                {
                }
                column(Warranty_Claim_Header__Line_Item_Count_;"Line Item Count")
                {
                }
                column(TAmountWt;TAmountWt)
                {
                }
                column(L3;L3)
                {
                    DecimalPlaces = 0:0;
                }
                column(Total_For_____FORMAT_WtCount______Warranty__;'Total For ' + FORMAT(WtCount) + ' Warranty ')
                {
                    DecimalPlaces = 0:0;
                }
                column(TCostWt;TCostWt)
                {
                }
                column(TAmountInv_Control1000000103;TAmountInv)
                {
                }
                column(TCostInv_Control1000000104;TCostInv)
                {
                }
                column(TContInv_Control1000000105;TContInv)
                {
                }
                column(TContPctInv_Control1000000106;TContPctInv)
                {
                }
                column(TAmountCr_Control1000000107;TAmountCr)
                {
                }
                column(TCostCr_Control1000000108;TCostCr)
                {
                }
                column(TContCr_Control1000000109;TContCr)
                {
                }
                column(TContPctCr_Control1000000110;TContPctCr)
                {
                }
                column(AllAmount_Control1000000111;AllAmount)
                {
                }
                column(AllCost_Control1000000112;AllCost)
                {
                }
                column(AllCont_Control1000000113;AllCont)
                {
                }
                column(AllPct_Control1000000114;AllPct)
                {
                }
                column(L1_Control1000000118;L1)
                {
                    DecimalPlaces = 0:0;
                }
                column(L2_Control1000000119;L2)
                {
                    DecimalPlaces = 0:0;
                }
                column(InvCount_Control1000000122;InvCount)
                {
                    DecimalPlaces = 0:0;
                }
                column(CrCount_Control1000000123;CrCount)
                {
                    DecimalPlaces = 0:0;
                }
                column(WtCount;WtCount)
                {
                    DecimalPlaces = 0:0;
                }
                column(L3_Control1000000126;L3)
                {
                    DecimalPlaces = 0:0;
                }
                column(TAmountWt_Control1000000127;TAmountWt)
                {
                }
                column(TCostWt_Control1000000081;TCostWt)
                {
                }
                column(Warranty_ClaimCaption;Warranty_ClaimCaptionLbl)
                {
                }
                column(Total_Sales_InvoiceCaption_Control1000000115;Total_Sales_InvoiceCaption_Control1000000115Lbl)
                {
                }
                column(Total_Credit_MemoCaption_Control1000000116;Total_Credit_MemoCaption_Control1000000116Lbl)
                {
                }
                column(Overall_SalesCaption_Control1000000117;Overall_SalesCaption_Control1000000117Lbl)
                {
                }
                column(Total_Warranty_ClaimCaption;Total_Warranty_ClaimCaptionLbl)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    WtCount := WtCount + 1;
                    L3 := L3 + "Warranty Claim Header"."Line Item Count";
                end;

                trigger OnPreDataItem()
                begin
                    IF NOT ShowWarranty THEN CurrReport.SKIP;
                    SETFILTER("Material Posting Date",'%1..%2',StartDate,EndDate);
                end;
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Start Date";StartDate)
                {
                }
                field("End Date";EndDate)
                {
                }
                group()
                {
                }
                field("Item Type";ItemType)
                {
                }
                field("Customer Posting Group";CustPGrp)
                {
                }
                group()
                {
                }
                field("Show Invoice";ShowInvoice)
                {
                }
                field("Show Credit Memo";ShowCreditMemo)
                {
                }
                field("Show Warranty";ShowWarranty)
                {
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

    var
        Cont: Decimal;
        ContCr: Decimal;
        ContPercent: Decimal;
        TContPctInv: Decimal;
        TContPctCr: Decimal;
        TContInv: Decimal;
        TAmountInv: Decimal;
        TContCr: Decimal;
        TAmountCr: Decimal;
        TCostInv: Decimal;
        TCostCr: Decimal;
        AllAmount: Decimal;
        AllCost: Decimal;
        AllCont: Decimal;
        AllPct: Decimal;
        StartDate: Date;
        EndDate: Date;
        ItemType: Option All,"Spare Parts",Vehicles,Training;
        CustFilter: Code[100];
        InvoiceFilter: Code[100];
        CrMemoFilter: Code[100];
        CustPGrp: Code[20];
        ShowCreditMemo: Boolean;
        ShowInvoice: Boolean;
        "Inv Line Item Count": Integer;
        "Cr Line Item Count": Integer;
        InvCount: Integer;
        CrCount: Integer;
        L1: Decimal;
        L2: Decimal;
        Amt: Decimal;
        WtCount: Integer;
        L3: Decimal;
        "Warranty Line Item Count": Integer;
        TAmountWt: Decimal;
        TCostWt: Decimal;
        ShowWarranty: Boolean;
        TNL_CONTRIBUTIONCaptionLbl: Label 'TNL CONTRIBUTION';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Customer_No_CaptionLbl: Label 'Customer No.';
        AmtCaptionLbl: Label 'Amount';
        Customer_NameCaptionLbl: Label 'Customer Name';
        Contribution_MarginCaptionLbl: Label 'Contribution Margin';
        Contr___CaptionLbl: Label 'Contr. %';
        Line_Item_CountCaptionLbl: Label 'Line Item Count';
        Sales_InvoiceCaptionLbl: Label 'Sales Invoice';
        Credit_MemoCaptionLbl: Label 'Credit Memo';
        Total_Sales_InvoiceCaptionLbl: Label 'Total Sales Invoice';
        Total_Credit_MemoCaptionLbl: Label 'Total Credit Memo';
        Overall_SalesCaptionLbl: Label 'Overall Sales';
        Warranty_ClaimCaptionLbl: Label 'Warranty Claim';
        Total_Sales_InvoiceCaption_Control1000000115Lbl: Label 'Total Sales Invoice';
        Total_Credit_MemoCaption_Control1000000116Lbl: Label 'Total Credit Memo';
        Overall_SalesCaption_Control1000000117Lbl: Label 'Overall Sales';
        Total_Warranty_ClaimCaptionLbl: Label 'Total Warranty Claim';
}

