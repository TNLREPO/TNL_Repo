page 70183 "IsoloSales Order Stat"
{
    Caption = 'IsoloSales Order Stat';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = Card;
    SourceTable = Table36;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(LineAmountGeneral; TotalSalesLine[1]."Line Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text002, FALSE);
                    Editable = false;
                }
                field(InvDiscountAmount_General; TotalSalesLine[1]."Inv. Discount Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    Caption = 'Inv. Discount Amount';
                    Editable = DynamicEditable;
                    Visible = false;

                    trigger OnValidate()
                    begin
                        ActiveTab := ActiveTab::General;
                        UpdateInvDiscAmount(1);
                    end;
                }
                field(TotalAmount1[1];TotalAmount1[1])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text001,FALSE);
                    Editable = DynamicEditable;

                    trigger OnValidate()
                    begin
                        ActiveTab := ActiveTab::General;
                        UpdateTotalAmount(1);
                    end;
                }
                field(VATAmount[1];VATAmount[1])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = FORMAT(VATAmountText[1]);
                    Caption = 'VAT Amount';
                    Editable = false;
                }
                field(TotalAmount2[1];TotalAmount2[1])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text001,TRUE);
                    Editable = false;

                    trigger OnValidate()
                    begin
                        TotalAmount21OnAfterValidate;
                    end;
                }
                field(TotalSalesLineLCY[1].Amount;TotalSalesLineLCY[1].Amount)
                {
                    AutoFormatType = 1;
                    Caption = 'Sales (LCY)';
                    Editable = false;
                }
                field(ProfitLCY[1];ProfitLCY[1])
                {
                    AutoFormatType = 1;
                    Caption = 'Original Profit (LCY)';
                    Editable = false;
                }
                field(AdjProfitLCY[1];AdjProfitLCY[1])
                {
                    AutoFormatType = 1;
                    Caption = 'Adjusted Profit (LCY)';
                    Editable = false;
                }
                field(TotalSalesLine[1].Quantity;TotalSalesLine[1].Quantity)
                {
                    Caption = 'Quantity';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[1]."Units per Parcel";TotalSalesLine[1]."Units per Parcel")
                {
                    Caption = 'Parcels';
                    DecimalPlaces = 0:5;
                    Editable = false;
                    Visible = false;
                }
                field(TotalSalesLine[1]."Net Weight";TotalSalesLine[1]."Net Weight")
                {
                    Caption = 'Net Weight';
                    DecimalPlaces = 0:5;
                    Editable = false;
                    Visible = false;
                }
                field(TotalSalesLine[1]."Gross Weight";TotalSalesLine[1]."Gross Weight")
                {
                    Caption = 'Gross Weight';
                    DecimalPlaces = 0:5;
                    Editable = false;
                    Visible = false;
                }
                field(TotalSalesLine[1]."Unit Volume";TotalSalesLine[1]."Unit Volume")
                {
                    Caption = 'Volume';
                    DecimalPlaces = 0:5;
                    Editable = false;
                    Visible = false;
                }
                field(TotalSalesLineLCY[1]."Unit Cost (LCY)";TotalSalesLineLCY[1]."Unit Cost (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Original Cost (LCY)';
                    Editable = false;
                    Visible = false;
                }
                field(TotalAdjCostLCY[1];TotalAdjCostLCY[1])
                {
                    AutoFormatType = 1;
                    Caption = 'Adjusted Cost (LCY)';
                    Editable = false;
                    Visible = false;
                }
                field(TotalAdjCostLCY[1] - TotalSalesLineLCY[1]."Unit Cost (LCY)";TotalAdjCostLCY[1] - TotalSalesLineLCY[1]."Unit Cost (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Cost Adjmt. Amount (LCY)';
                    Editable = false;
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupAdjmtValueEntries(0);
                    end;
                }
                field(NoOfVATLines_General;TempVATAmountLine1.COUNT)
                {
                    Caption = 'No. of VAT Lines';
                    DrillDown = true;
                    Visible = false;

                    trigger OnDrillDown()
                    begin
                        VATLinesDrillDown(TempVATAmountLine1,FALSE);
                        UpdateHeaderInfo(1,TempVATAmountLine1);
                    end;
                }
                field(TotalSalesLine[1]."Line Amount" * 0.67;TotalSalesLine[1]."Line Amount" * 0.67)
                {
                    Caption = 'Transfer Cost';
                }
                field(Profit1;TotalSalesLine[1]."Line Amount" -(TotalSalesLine[1]."Line Amount" * 0.67))
                {
                }
                field("Profit Percentage";ProfitPercentage)
                {

                    trigger OnValidate()
                    begin

                        //ProfitPercentage := ROUND(100 * TotalSalesLine[1]."Line Amount" - (TotalSalesLine[1]."Line Amount" * 0.67) / TotalSalesLine[1]."Line Amount",1);

                        IF TotalSalesLine8.GET(TotalSalesLine8."Document No.") THEN
                        TotalSalesLine8.SETRANGE("Document No.","No.");
                        ProfitPercentage := (TotalSalesLine8."Line Amount" -  (TotalSalesLine8."Line Amount" * 0.67)) / TotalSalesLine8."Line Amount" * 100;
                    end;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                Visible = false;
                field(AmountInclVAT_Invoicing;TotalSalesLine[2]."Line Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text002,FALSE);
                    Editable = false;
                }
                field(InvDiscountAmount_Invoicing;TotalSalesLine[2]."Inv. Discount Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    Caption = 'Inv. Discount Amount';
                    Editable = DynamicEditable;

                    trigger OnValidate()
                    begin
                        ActiveTab := ActiveTab::Invoicing;
                        UpdateInvDiscAmount(2);
                    end;
                }
                field(TotalInclVAT_Invoicing;TotalAmount1[2])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text001,FALSE);
                    Editable = DynamicEditable;

                    trigger OnValidate()
                    begin
                        ActiveTab := ActiveTab::Invoicing;
                        UpdateTotalAmount(2);
                    end;
                }
                field(VATAmount_Invoicing;VATAmount[2])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = FORMAT(VATAmountText[2]);
                    Editable = false;
                }
                field(TotalExclVAT_Invoicing;TotalAmount2[2])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text001,TRUE);
                    Editable = false;
                }
                field(TotalSalesLineLCY[2].Amount;TotalSalesLineLCY[2].Amount)
                {
                    AutoFormatType = 1;
                    Caption = 'Sales (LCY)';
                    Editable = false;
                }
                field(ProfitLCY[2];ProfitLCY[2])
                {
                    AutoFormatType = 1;
                    Caption = 'Original Profit (LCY)';
                    Editable = false;
                }
                field(AdjProfitLCY[2];AdjProfitLCY[2])
                {
                    AutoFormatType = 1;
                    Caption = 'Adjusted Profit (LCY)';
                    Editable = false;
                }
                field(ProfitPct[2];ProfitPct[2])
                {
                    Caption = 'Original Profit %';
                    DecimalPlaces = 1:1;
                    Editable = false;
                }
                field(AdjProfitPct[2];AdjProfitPct[2])
                {
                    Caption = 'Adjusted Profit %';
                    DecimalPlaces = 1:1;
                    Editable = false;
                }
                field(TotalSalesLine[2].Quantity;TotalSalesLine[2].Quantity)
                {
                    Caption = 'Quantity';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[2]."Units per Parcel";TotalSalesLine[2]."Units per Parcel")
                {
                    Caption = 'Parcels';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[2]."Net Weight";TotalSalesLine[2]."Net Weight")
                {
                    Caption = 'Net Weight';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[2]."Gross Weight";TotalSalesLine[2]."Gross Weight")
                {
                    Caption = 'Gross Weight';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[2]."Unit Volume";TotalSalesLine[2]."Unit Volume")
                {
                    Caption = 'Volume';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLineLCY[2]."Unit Cost (LCY)";TotalSalesLineLCY[2]."Unit Cost (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Original Cost (LCY)';
                    Editable = false;
                }
                field(TotalAdjCostLCY[2];TotalAdjCostLCY[2])
                {
                    AutoFormatType = 1;
                    Caption = 'Adjusted Cost (LCY)';
                    Editable = false;
                }
                field(TotalAdjCostLCY[2] - TotalSalesLineLCY[2]."Unit Cost (LCY)";TotalAdjCostLCY[2] - TotalSalesLineLCY[2]."Unit Cost (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Cost Adjmt. Amount (LCY)';
                    Editable = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        LookupAdjmtValueEntries(1);
                    end;
                }
                field(NoOfVATLines_Invoicing;TempVATAmountLine2.COUNT)
                {
                    Caption = 'No. of VAT Lines';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        ActiveTab := ActiveTab::Invoicing;
                        VATLinesDrillDown(TempVATAmountLine2,TRUE);
                        UpdateHeaderInfo(2,TempVATAmountLine2);

                        IF TempVATAmountLine2.GetAnyLineModified THEN BEGIN
                          UpdateVATOnSalesLines;
                          RefreshOnAfterGetRecord;
                        END;
                    end;
                }
            }
            group(Shipping)
            {
                Caption = 'Shipping';
                Visible = false;
                field(TotalSalesLine[3]."Line Amount";TotalSalesLine[3]."Line Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text002,FALSE);
                    Editable = false;
                }
                field(TotalSalesLine[3]."Inv. Discount Amount";TotalSalesLine[3]."Inv. Discount Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    Caption = 'Inv. Discount Amount';
                    Editable = false;
                }
                field(TotalAmount1[3];TotalAmount1[3])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text001,FALSE);
                    Editable = false;
                }
                field(VATAmount[3];VATAmount[3])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = FORMAT(VATAmountText[3]);
                    Editable = false;
                }
                field(TotalAmount2[3];TotalAmount2[3])
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text001,TRUE);
                    Editable = false;
                }
                field(TotalSalesLineLCY[3].Amount;TotalSalesLineLCY[3].Amount)
                {
                    AutoFormatType = 1;
                    Caption = 'Sales (LCY)';
                    Editable = false;
                }
                field(TotalSalesLineLCY[3]."Unit Cost (LCY)";TotalSalesLineLCY[3]."Unit Cost (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Cost (LCY)';
                    Editable = false;
                }
                field(ProfitLCY[3];ProfitLCY[3])
                {
                    AutoFormatType = 1;
                    Caption = 'Profit (LCY)';
                    Editable = false;
                }
                field(ProfitPct[3];ProfitPct[3])
                {
                    Caption = 'Profit %';
                    DecimalPlaces = 1:1;
                    Editable = false;
                }
                field(TotalSalesLine[3].Quantity;TotalSalesLine[3].Quantity)
                {
                    Caption = 'Quantity';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[3]."Units per Parcel";TotalSalesLine[3]."Units per Parcel")
                {
                    Caption = 'Parcels';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[3]."Net Weight";TotalSalesLine[3]."Net Weight")
                {
                    Caption = 'Net Weight';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[3]."Gross Weight";TotalSalesLine[3]."Gross Weight")
                {
                    Caption = 'Gross Weight';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TotalSalesLine[3]."Unit Volume";TotalSalesLine[3]."Unit Volume")
                {
                    Caption = 'Volume';
                    DecimalPlaces = 0:5;
                    Editable = false;
                }
                field(TempVATAmountLine3.COUNT;TempVATAmountLine3.COUNT)
                {
                    Caption = 'No. of VAT Lines';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        VATLinesDrillDown(TempVATAmountLine3,FALSE);
                    end;
                }
            }
            group(Prepayment)
            {
                Caption = 'Prepayment';
                Visible = false;
                field(PrepmtTotalAmount;PrepmtTotalAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text006,FALSE);
                    Editable = DynamicEditable;

                    trigger OnValidate()
                    begin
                        ActiveTab := ActiveTab::Prepayment;
                        UpdatePrepmtAmount;
                    end;
                }
                field(PrepmtVATAmount;PrepmtVATAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = FORMAT(PrepmtVATAmountText);
                    Caption = 'Prepayment Amount Invoiced';
                    Editable = false;
                }
                field(PrepmtTotalAmount2;PrepmtTotalAmount2)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text006,TRUE);
                    Editable = false;
                }
                field(TotalSalesLine[1]."Prepmt. Amt. Inv.";TotalSalesLine[1]."Prepmt. Amt. Inv.")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text007,FALSE);
                    Editable = false;
                }
                field(PrepmtInvPct;PrepmtInvPct)
                {
                    Caption = 'Invoiced % of Prepayment Amt.';
                    ExtendedDatatype = Ratio;
                    ToolTip = 'Invoiced % of Prepayment Amt.';
                }
                field(TotalSalesLine[1]."Prepmt Amt Deducted";TotalSalesLine[1]."Prepmt Amt Deducted")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text008,FALSE);
                    Editable = false;
                }
                field(PrepmtDeductedPct;PrepmtDeductedPct)
                {
                    Caption = 'Deducted % of Prepayment Amt. to Deduct';
                    ExtendedDatatype = Ratio;
                    ToolTip = 'Deducted % of Prepayment Amt. to Deduct';
                }
                field(TotalSalesLine[1]."Prepmt Amt to Deduct";TotalSalesLine[1]."Prepmt Amt to Deduct")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                    CaptionClass = GetCaptionClass(Text009,FALSE);
                    Editable = false;
                }
                field(TempVATAmountLine4.COUNT;TempVATAmountLine4.COUNT)
                {
                    Caption = 'No. of VAT Lines';
                    DrillDown = true;

                    trigger OnDrillDown()
                    begin
                        VATLinesDrillDown(TempVATAmountLine4,TRUE);
                    end;
                }
            }
            group(Customer)
            {
                Caption = 'Customer';
                Visible = false;
                field(Cust."Balance (LCY)";Cust."Balance (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Balance (LCY)';
                    Editable = false;
                }
                field(Cust."Credit Limit (LCY)";Cust."Credit Limit (LCY)")
                {
                    AutoFormatType = 1;
                    Caption = 'Credit Limit (LCY)';
                    Editable = false;
                }
                field(CreditLimitLCYExpendedPct;CreditLimitLCYExpendedPct)
                {
                    Caption = 'Expended % of Credit Limit (LCY)';
                    ExtendedDatatype = Ratio;
                    ToolTip = 'Expended % of Credit Limit (LCY)';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetCurrRecord()
    begin
        DynamicEditable := CurrPage.EDITABLE;
    end;

    trigger OnAfterGetRecord()
    begin
        RefreshOnAfterGetRecord;
        //"Original Profit %" := (("Original Profit" / Amount) * 100);
    end;

    trigger OnFindRecord(Which: Text): Boolean
    begin
        //"Retail Cost" := Amount * 0.67;
        //"Original Profit" := Amount - "Retail Cost";
        //"Original Profit %" := (("Original Profit" / Amount) * 100);
    end;

    trigger OnOpenPage()
    begin
        SalesSetup.GET;
        AllowInvDisc := NOT (SalesSetup."Calc. Inv. Discount" AND CustInvDiscRecExists("Invoice Disc. Code"));
        AllowVATDifference :=
          SalesSetup."Allow VAT Difference" AND
          NOT ("Document Type" IN ["Document Type"::Quote,"Document Type"::"Blanket Order"]);
        VATLinesFormIsEditable := AllowVATDifference OR AllowInvDisc;
        CurrPage.EDITABLE := VATLinesFormIsEditable;
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        GetVATSpecification(PrevTab);
        IF TempVATAmountLine1.GetAnyLineModified OR TempVATAmountLine2.GetAnyLineModified THEN
          UpdateVATOnSalesLines;
        EXIT(TRUE);
    end;

    var
        Text000: Label 'Sales %1 Statistics';
        Text001: Label 'Total';
        Text002: Label 'Amount';
        Text003: Label '%1 must not be 0.';
        Text004: Label '%1 must not be greater than %2.';
        Text005: Label 'You cannot change the invoice discount because a customer invoice discount with the code %1 exists.';
        TotalSalesLine: array [3] of Record "37";
        TotalSalesLine8: Record "37";
        TotalSalesLineLCY: array [3] of Record "37";
        Cust: Record "18";
        TempVATAmountLine1: Record "290" temporary;
        TempVATAmountLine2: Record "290" temporary;
        TempVATAmountLine3: Record "290" temporary;
        TempVATAmountLine4: Record "290" temporary;
        SalesSetup: Record "311";
        SalesPost: Codeunit "80";
        TotalAmount1: array [3] of Decimal;
        TotalAmount2: array [3] of Decimal;
        VATAmount: array [3] of Decimal;
        PrepmtTotalAmount: Decimal;
        PrepmtVATAmount: Decimal;
        PrepmtTotalAmount2: Decimal;
        VATAmountText: array [3] of Text[30];
        PrepmtVATAmountText: Text[30];
        ProfitLCY: array [3] of Decimal;
        ProfitPct: array [3] of Decimal;
        AdjProfitLCY: array [3] of Decimal;
        AdjProfitPct: array [3] of Decimal;
        TotalAdjCostLCY: array [3] of Decimal;
        CreditLimitLCYExpendedPct: Decimal;
        PrepmtInvPct: Decimal;
        PrepmtDeductedPct: Decimal;
        i: Integer;
        PrevNo: Code[20];
        ActiveTab: Option General,Invoicing,Shipping,Prepayment;
        PrevTab: Option General,Invoicing,Shipping,Prepayment;
        VATLinesFormIsEditable: Boolean;
        AllowInvDisc: Boolean;
        AllowVATDifference: Boolean;
        Text006: Label 'Prepmt. Amount';
        Text007: Label 'Prepmt. Amt. Invoiced';
        Text008: Label 'Prepmt. Amt. Deducted';
        Text009: Label 'Prepmt. Amt. to Deduct';
        VATLinesForm: Page "9401";
                          DynamicEditable: Boolean;
                          UpdateInvDiscountQst: Label 'There are one or more invoiced lines.\Do you want to update the invoice discount?';
        ProfitPercentage: Decimal;

    local procedure RefreshOnAfterGetRecord()
    var
        SalesLine: Record "37";
        TempSalesLine: Record "37" temporary;
        SalesPostPrepayments: Codeunit "442";
    begin
        CurrPage.CAPTION(STRSUBSTNO(Text000,"Document Type"));

        IF PrevNo = "No." THEN
          EXIT;
        PrevNo := "No.";
        FILTERGROUP(2);
        SETRANGE("No.",PrevNo);
        FILTERGROUP(0);

        CLEAR(SalesLine);
        CLEAR(TotalSalesLine);
        CLEAR(TotalSalesLineLCY);

        FOR i := 1 TO 3 DO BEGIN
          TempSalesLine.DELETEALL;
          CLEAR(TempSalesLine);
          CLEAR(SalesPost);
          SalesPost.GetSalesLines(Rec,TempSalesLine,i - 1);
          CLEAR(SalesPost);
          CASE i OF
            1:
              SalesLine.CalcVATAmountLines(0,Rec,TempSalesLine,TempVATAmountLine1);
            2:
              SalesLine.CalcVATAmountLines(0,Rec,TempSalesLine,TempVATAmountLine2);
            3:
              SalesLine.CalcVATAmountLines(0,Rec,TempSalesLine,TempVATAmountLine3);
          END;

          SalesPost.SumSalesLinesTemp(
            Rec,TempSalesLine,i - 1,TotalSalesLine[i],TotalSalesLineLCY[i],
            VATAmount[i],VATAmountText[i],ProfitLCY[i],ProfitPct[i],TotalAdjCostLCY[i]);

          IF i = 3 THEN
            TotalAdjCostLCY[i] := TotalSalesLineLCY[i]."Unit Cost (LCY)";

          AdjProfitLCY[i] := TotalSalesLineLCY[i].Amount - TotalAdjCostLCY[i];
          IF TotalSalesLineLCY[i].Amount <> 0 THEN
            AdjProfitPct[i] := ROUND(AdjProfitLCY[i] / TotalSalesLineLCY[i].Amount * 100,0.1);

          IF "Prices Including VAT" THEN BEGIN
            TotalAmount2[i] := TotalSalesLine[i].Amount;
            TotalAmount1[i] := TotalAmount2[i] + VATAmount[i];
            TotalSalesLine[i]."Line Amount" := TotalAmount1[i] + TotalSalesLine[i]."Inv. Discount Amount";
          END ELSE BEGIN
            TotalAmount1[i] := TotalSalesLine[i].Amount;
            TotalAmount2[i] := TotalSalesLine[i]."Amount Including VAT";
          END;
        END;
        TempSalesLine.DELETEALL;
        CLEAR(TempSalesLine);
        SalesPostPrepayments.GetSalesLines(Rec,0,TempSalesLine);
        SalesPostPrepayments.SumPrepmt(
          Rec,TempSalesLine,TempVATAmountLine4,PrepmtTotalAmount,PrepmtVATAmount,PrepmtVATAmountText);
        PrepmtInvPct :=
          Pct(TotalSalesLine[1]."Prepmt. Amt. Inv.",PrepmtTotalAmount);
        PrepmtDeductedPct :=
          Pct(TotalSalesLine[1]."Prepmt Amt Deducted",TotalSalesLine[1]."Prepmt. Amt. Inv.");
        IF "Prices Including VAT" THEN BEGIN
          PrepmtTotalAmount2 := PrepmtTotalAmount;
          PrepmtTotalAmount := PrepmtTotalAmount + PrepmtVATAmount;
        END ELSE
          PrepmtTotalAmount2 := PrepmtTotalAmount + PrepmtVATAmount;

        IF Cust.GET("Bill-to Customer No.") THEN
          Cust.CALCFIELDS("Balance (LCY)")
        ELSE
          CLEAR(Cust);

        CASE TRUE OF
          Cust."Credit Limit (LCY)" = 0:
            CreditLimitLCYExpendedPct := 0;
          Cust."Balance (LCY)" / Cust."Credit Limit (LCY)" < 0:
            CreditLimitLCYExpendedPct := 0;
          Cust."Balance (LCY)" / Cust."Credit Limit (LCY)" > 1:
            CreditLimitLCYExpendedPct := 10000;
          ELSE
            CreditLimitLCYExpendedPct := ROUND(Cust."Balance (LCY)" / Cust."Credit Limit (LCY)" * 10000,1);
        END;

        TempVATAmountLine1.MODIFYALL(Modified,FALSE);
        TempVATAmountLine2.MODIFYALL(Modified,FALSE);
        TempVATAmountLine3.MODIFYALL(Modified,FALSE);
        TempVATAmountLine4.MODIFYALL(Modified,FALSE);

        PrevTab := -1;
    end;

    local procedure UpdateHeaderInfo(IndexNo: Integer;var VATAmountLine: Record "290")
    var
        CurrExchRate: Record "330";
        UseDate: Date;
    begin
        TotalSalesLine[IndexNo]."Inv. Discount Amount" := VATAmountLine.GetTotalInvDiscAmount;
        TotalAmount1[IndexNo] :=
          TotalSalesLine[IndexNo]."Line Amount" - TotalSalesLine[IndexNo]."Inv. Discount Amount";
        VATAmount[IndexNo] := VATAmountLine.GetTotalVATAmount;
        IF "Prices Including VAT" THEN BEGIN
          TotalAmount1[IndexNo] := VATAmountLine.GetTotalAmountInclVAT;
          TotalAmount2[IndexNo] := TotalAmount1[IndexNo] - VATAmount[IndexNo];
          TotalSalesLine[IndexNo]."Line Amount" :=
            TotalAmount1[IndexNo] + TotalSalesLine[IndexNo]."Inv. Discount Amount";
        END ELSE
          TotalAmount2[IndexNo] := TotalAmount1[IndexNo] + VATAmount[IndexNo];

        IF "Prices Including VAT" THEN
          TotalSalesLineLCY[IndexNo].Amount := TotalAmount2[IndexNo]
        ELSE
          TotalSalesLineLCY[IndexNo].Amount := TotalAmount1[IndexNo];
        IF "Currency Code" <> '' THEN
          IF "Posting Date" = 0D THEN
            UseDate := WORKDATE
          ELSE
            UseDate := "Posting Date";

        TotalSalesLineLCY[IndexNo].Amount :=
          CurrExchRate.ExchangeAmtFCYToLCY(
            UseDate,"Currency Code",TotalSalesLineLCY[IndexNo].Amount,"Currency Factor");

        ProfitLCY[IndexNo] := TotalSalesLineLCY[IndexNo].Amount - TotalSalesLineLCY[IndexNo]."Unit Cost (LCY)";
        IF TotalSalesLineLCY[IndexNo].Amount = 0 THEN
          ProfitPct[IndexNo] := 0
        ELSE
          ProfitPct[IndexNo] := ROUND(100 * ProfitLCY[IndexNo] / TotalSalesLineLCY[IndexNo].Amount,0.01);

        AdjProfitLCY[IndexNo] := TotalSalesLineLCY[IndexNo].Amount - TotalAdjCostLCY[IndexNo];
        IF TotalSalesLineLCY[IndexNo].Amount = 0 THEN
          AdjProfitPct[IndexNo] := 0
        ELSE
          AdjProfitPct[IndexNo] := ROUND(100 * AdjProfitLCY[IndexNo] / TotalSalesLineLCY[IndexNo].Amount,0.01);
    end;

    local procedure GetVATSpecification(QtyType: Option General,Invoicing,Shipping)
    begin
        CASE QtyType OF
          QtyType::General:
            BEGIN
              VATLinesForm.GetTempVATAmountLine(TempVATAmountLine1);
              UpdateHeaderInfo(1,TempVATAmountLine1);
            END;
          QtyType::Invoicing:
            BEGIN
              VATLinesForm.GetTempVATAmountLine(TempVATAmountLine2);
              UpdateHeaderInfo(2,TempVATAmountLine2);
            END;
          QtyType::Shipping:
            VATLinesForm.GetTempVATAmountLine(TempVATAmountLine3);
        END;
    end;

    local procedure UpdateTotalAmount(IndexNo: Integer)
    var
        SaveTotalAmount: Decimal;
    begin
        CheckAllowInvDisc;
        IF "Prices Including VAT" THEN BEGIN
          SaveTotalAmount := TotalAmount1[IndexNo];
          UpdateInvDiscAmount(IndexNo);
          TotalAmount1[IndexNo] := SaveTotalAmount;
        END;

        WITH TotalSalesLine[IndexNo] DO
          "Inv. Discount Amount" := "Line Amount" - TotalAmount1[IndexNo];
        UpdateInvDiscAmount(IndexNo);
    end;

    local procedure UpdateInvDiscAmount(ModifiedIndexNo: Integer)
    var
        PartialInvoicing: Boolean;
        MaxIndexNo: Integer;
        IndexNo: array [2] of Integer;
        i: Integer;
        InvDiscBaseAmount: Decimal;
    begin
        CheckAllowInvDisc;
        IF NOT (ModifiedIndexNo IN [1,2]) THEN
          EXIT;

        IF InvoicedLineExists THEN
          IF NOT CONFIRM(UpdateInvDiscountQst,FALSE) THEN
            ERROR('');

        IF ModifiedIndexNo = 1 THEN
          InvDiscBaseAmount := TempVATAmountLine1.GetTotalInvDiscBaseAmount(FALSE,"Currency Code")
        ELSE
          InvDiscBaseAmount := TempVATAmountLine2.GetTotalInvDiscBaseAmount(FALSE,"Currency Code");

        IF InvDiscBaseAmount = 0 THEN
          ERROR(Text003,TempVATAmountLine2.FIELDCAPTION("Inv. Disc. Base Amount"));

        IF TotalSalesLine[ModifiedIndexNo]."Inv. Discount Amount" / InvDiscBaseAmount > 1 THEN
          ERROR(
            Text004,
            TotalSalesLine[ModifiedIndexNo].FIELDCAPTION("Inv. Discount Amount"),
            TempVATAmountLine2.FIELDCAPTION("Inv. Disc. Base Amount"));

        PartialInvoicing := (TotalSalesLine[1]."Line Amount" <> TotalSalesLine[2]."Line Amount");

        IndexNo[1] := ModifiedIndexNo;
        IndexNo[2] := 3 - ModifiedIndexNo;
        IF (ModifiedIndexNo = 2) AND PartialInvoicing THEN
          MaxIndexNo := 1
        ELSE
          MaxIndexNo := 2;

        IF NOT PartialInvoicing THEN
          IF ModifiedIndexNo = 1 THEN
            TotalSalesLine[2]."Inv. Discount Amount" := TotalSalesLine[1]."Inv. Discount Amount"
          ELSE
            TotalSalesLine[1]."Inv. Discount Amount" := TotalSalesLine[2]."Inv. Discount Amount";

        FOR i := 1 TO MaxIndexNo DO
          WITH TotalSalesLine[IndexNo[i]] DO BEGIN
            IF (i = 1) OR NOT PartialInvoicing THEN
              IF IndexNo[i] = 1 THEN BEGIN
                TempVATAmountLine1.SetInvoiceDiscountAmount(
                  "Inv. Discount Amount","Currency Code","Prices Including VAT","VAT Base Discount %");
              END ELSE
                TempVATAmountLine2.SetInvoiceDiscountAmount(
                  "Inv. Discount Amount","Currency Code","Prices Including VAT","VAT Base Discount %");

            IF (i = 2) AND PartialInvoicing THEN
              IF IndexNo[i] = 1 THEN BEGIN
                InvDiscBaseAmount := TempVATAmountLine2.GetTotalInvDiscBaseAmount(FALSE,"Currency Code");
                IF InvDiscBaseAmount = 0 THEN
                  TempVATAmountLine1.SetInvoiceDiscountPercent(
                    0,"Currency Code","Prices Including VAT",FALSE,"VAT Base Discount %")
                ELSE
                  TempVATAmountLine1.SetInvoiceDiscountPercent(
                    100 * TempVATAmountLine2.GetTotalInvDiscAmount / InvDiscBaseAmount,
                    "Currency Code","Prices Including VAT",FALSE,"VAT Base Discount %");
              END ELSE BEGIN
                InvDiscBaseAmount := TempVATAmountLine1.GetTotalInvDiscBaseAmount(FALSE,"Currency Code");
                IF InvDiscBaseAmount = 0 THEN
                  TempVATAmountLine2.SetInvoiceDiscountPercent(
                    0,"Currency Code","Prices Including VAT",FALSE,"VAT Base Discount %")
                ELSE
                  TempVATAmountLine2.SetInvoiceDiscountPercent(
                    100 * TempVATAmountLine1.GetTotalInvDiscAmount / InvDiscBaseAmount,
                    "Currency Code","Prices Including VAT",FALSE,"VAT Base Discount %");
              END;
          END;

        UpdateHeaderInfo(1,TempVATAmountLine1);
        UpdateHeaderInfo(2,TempVATAmountLine2);

        IF ModifiedIndexNo = 1 THEN
          VATLinesForm.SetTempVATAmountLine(TempVATAmountLine1)
        ELSE
          VATLinesForm.SetTempVATAmountLine(TempVATAmountLine2);

        "Invoice Discount Calculation" := "Invoice Discount Calculation"::Amount;
        "Invoice Discount Value" := TotalSalesLine[1]."Inv. Discount Amount";
        MODIFY;

        UpdateVATOnSalesLines;
    end;

    local procedure UpdatePrepmtAmount()
    var
        TempSalesLine: Record "37" temporary;
        SalesPostPrepmt: Codeunit "442";
    begin
        SalesPostPrepmt.UpdatePrepmtAmountOnSaleslines(Rec,PrepmtTotalAmount);
        SalesPostPrepmt.GetSalesLines(Rec,0,TempSalesLine);
        SalesPostPrepmt.SumPrepmt(
          Rec,TempSalesLine,TempVATAmountLine4,PrepmtTotalAmount,PrepmtVATAmount,PrepmtVATAmountText);
        PrepmtInvPct :=
          Pct(TotalSalesLine[1]."Prepmt. Amt. Inv.",PrepmtTotalAmount);
        PrepmtDeductedPct :=
          Pct(TotalSalesLine[1]."Prepmt Amt Deducted",TotalSalesLine[1]."Prepmt. Amt. Inv.");
        IF "Prices Including VAT" THEN BEGIN
          PrepmtTotalAmount2 := PrepmtTotalAmount;
          PrepmtTotalAmount := PrepmtTotalAmount + PrepmtVATAmount;
        END ELSE
          PrepmtTotalAmount2 := PrepmtTotalAmount + PrepmtVATAmount;
        MODIFY;
    end;

    local procedure GetCaptionClass(FieldCaption: Text[100];ReverseCaption: Boolean): Text[80]
    begin
        IF "Prices Including VAT" XOR ReverseCaption THEN
          EXIT('2,1,' + FieldCaption);
        EXIT('2,0,' + FieldCaption);
    end;

    local procedure UpdateVATOnSalesLines()
    var
        SalesLine: Record "37";
    begin
        GetVATSpecification(ActiveTab);
        IF TempVATAmountLine1.GetAnyLineModified THEN
          SalesLine.UpdateVATOnLines(0,Rec,SalesLine,TempVATAmountLine1);
        IF TempVATAmountLine2.GetAnyLineModified THEN
          SalesLine.UpdateVATOnLines(1,Rec,SalesLine,TempVATAmountLine2);
        PrevNo := '';
    end;

    local procedure CustInvDiscRecExists(InvDiscCode: Code[20]): Boolean
    var
        CustInvDisc: Record "19";
    begin
        CustInvDisc.SETRANGE(Code,InvDiscCode);
        EXIT(CustInvDisc.FINDFIRST);
    end;

    local procedure CheckAllowInvDisc()
    begin
        IF NOT AllowInvDisc THEN
          ERROR(Text005,"Invoice Disc. Code");
    end;

    local procedure Pct(Numerator: Decimal;Denominator: Decimal): Decimal
    begin
        IF Denominator = 0 THEN
          EXIT(0);
        EXIT(ROUND(Numerator / Denominator * 10000,1));
    end;

    [Scope('Internal')]
    procedure VATLinesDrillDown(var VATLinesToDrillDown: Record "290";ThisTabAllowsVATEditing: Boolean)
    begin
        CLEAR(VATLinesForm);
        VATLinesForm.SetTempVATAmountLine(VATLinesToDrillDown);
        VATLinesForm.InitGlobals(
          "Currency Code",AllowVATDifference,AllowVATDifference AND ThisTabAllowsVATEditing,
          "Prices Including VAT",AllowInvDisc,"VAT Base Discount %");
        VATLinesForm.RUNMODAL;
        VATLinesForm.GetTempVATAmountLine(VATLinesToDrillDown);
    end;

    local procedure TotalAmount21OnAfterValidate()
    begin
        WITH TotalSalesLine[1] DO BEGIN
          IF "Prices Including VAT" THEN
            "Inv. Discount Amount" := "Line Amount" - "Amount Including VAT"
          ELSE
            "Inv. Discount Amount" := "Line Amount" - Amount;
        END;
        UpdateInvDiscAmount(1);
    end;
}

