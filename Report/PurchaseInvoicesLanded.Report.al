report 50119 "Purchase Invoices(Landed)"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseInvoicesLanded.rdlc';
    Caption = 'Purchase Invoices(Landed)';

    dataset
    {
        dataitem(DataItem3733; Table122)
        {
            CalcFields = Total Cost(LCY),External Document No.;
            DataItemTableView = SORTING (No.);
            RequestFilterFields = "No.", "Buy-from Vendor No.", "Posting Date", "Location Code", "Shortcut Dimension 1 Code";
            RequestFilterHeading = 'Posted Purchase Invoice';
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
            column(STRSUBSTNO_Text004_PurchInvHeaderFilter_; STRSUBSTNO(Text004, PurchInvHeaderFilter))
            {
            }
            column(Amount_In_____GLSetup__LCY_Code_; 'Amount In ' + GLSetup."LCY Code")
            {
            }
            column(Purch__Inv__Header__No__; "No.")
            {
            }
            column(Purch__Inv__Header__Buy_from_Vendor_No__; "Buy-from Vendor No.")
            {
            }
            column(Purch__Inv__Header__Total_Cost_LCY__; "Total Cost(LCY)")
            {
            }
            column(Purch__Inv__Header__Amount_Including_VAT_; "Amount Including VAT")
            {
            }
            column(Purch__Inv__Header__Currency_Code_; "Currency Code")
            {
            }
            column(Purch__Inv__Header__Purch__Inv__Header___Pay_to_Name_; "Purch. Inv. Header"."Pay-to Name")
            {
            }
            column(Purch__Inv__Header__Posting_Date_; "Posting Date")
            {
            }
            column(Purch__Inv__Header__Purch__Inv__Header___Total_Item_Qty_; "Purch. Inv. Header"."External Document No.")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Inv__Header__Total_Item_Qty_; "External Document No.")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Inv__Header__Total_Cost_LCY___Control1000000013; "Total Cost(LCY)")
            {
            }
            column(Purch__Inv__Header__Amount_Including_VAT__Control1000000014; "Amount Including VAT")
            {
            }
            column(Purchase_InvoicesCaption; Purchase_InvoicesCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purch__Inv__Header__Currency_Code_Caption; FIELDCAPTION("Currency Code"))
            {
            }
            column(Original_AmountCaption; Original_AmountCaptionLbl)
            {
            }
            column(Supplier_NumberCaption; Supplier_NumberCaptionLbl)
            {
            }
            column(Invoice_NoCaption; Invoice_NoCaptionLbl)
            {
            }
            column(Supplier_NameCaption; Supplier_NameCaptionLbl)
            {
            }
            column(Purch__Inv__Header__Posting_Date_Caption; FIELDCAPTION("Posting Date"))
            {
            }
            column(QTYCaption; QTYCaptionLbl)
            {
            }
            column(Purchase_InvoicesCaption_Control1000000054; Purchase_InvoicesCaption_Control1000000054Lbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
        }
        dataitem(DataItem9869; Table124)
        {
            CalcFields = Total Cost(LCY),Total Item Qty,Amount,Amount Including VAT;
            DataItemTableView = SORTING (No.);
            RequestFilterFields = "No.", "Buy-from Vendor No.", "Posting Date", "Location Code", "Shortcut Dimension 1 Code";
            column(FORMAT_TODAY_0_4__Control1000000036; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME_Control1000000037; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO_Control1000000038; CurrReport.PAGENO)
            {
            }
            column(USERID_Control1000000040; USERID)
            {
            }
            column(Amount_In_____GLSetup__LCY_Code__Control1000000047; 'Amount In ' + GLSetup."LCY Code")
            {
            }
            column(Purch__Cr__Memo_Hdr___No__; "No.")
            {
            }
            column(Purch__Cr__Memo_Hdr___Buy_from_Vendor_No__; "Buy-from Vendor No.")
            {
            }
            column(Purch__Cr__Memo_Hdr___Total_Cost_LCY__; "Total Cost(LCY)")
            {
            }
            column(Purch__Cr__Memo_Hdr___Amount_Including_VAT_; "Amount Including VAT")
            {
            }
            column(Purch__Cr__Memo_Hdr___Currency_Code_; "Currency Code")
            {
            }
            column(Purch__Cr__Memo_Hdr___Pay_to_Name_; "Pay-to Name")
            {
            }
            column(Purch__Cr__Memo_Hdr___Posting_Date_; "Posting Date")
            {
            }
            column(Purch__Cr__Memo_Hdr___Total_Item_Qty_; "Total Item Qty")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Cr__Memo_Hdr___Total_Item_Qty__Control1000000032; "Total Item Qty")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Cr__Memo_Hdr___Total_Cost_LCY___Control1000000033; "Total Cost(LCY)")
            {
            }
            column(Purch__Cr__Memo_Hdr___Amount_Including_VAT__Control1000000034; "Amount Including VAT")
            {
            }
            column(Purch__Inv__Header___Amount_Including_VAT_; "Purch. Inv. Header"."Amount Including VAT")
            {
            }
            column(Purch__Inv__Header___Total_Cost_LCY__; "Purch. Inv. Header"."Total Cost(LCY)")
            {
            }
            column(Purch__Inv__Header___Total_Item_Qty_; "Purch. Inv. Header"."External Document No.")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Inv__Header___Amount_Including_VAT___Amount_Including_VAT_; "Purch. Inv. Header"."Amount Including VAT" - "Amount Including VAT")
            {
            }
            column(Purch__Inv__Header___Total_Cost_LCY____Total_Cost_LCY__; "Purch. Inv. Header"."Total Cost(LCY)" - "Total Cost(LCY)")
            {
            }
            column(Purch__Inv__Header___Total_Item_Qty___Total_Item_Qty_; "Purch. Inv. Header"."External Document No." - "Total Item Qty")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purchase_InvoicesCaption_Control1000000035; Purchase_InvoicesCaption_Control1000000035Lbl)
            {
            }
            column(CurrReport_PAGENO_Control1000000038Caption; CurrReport_PAGENO_Control1000000038CaptionLbl)
            {
            }
            column(Curency_CodeCaption; Curency_CodeCaptionLbl)
            {
            }
            column(Original_AmountCaption_Control1000000043; Original_AmountCaption_Control1000000043Lbl)
            {
            }
            column(Supplier_NumberCaption_Control1000000044; Supplier_NumberCaption_Control1000000044Lbl)
            {
            }
            column(Credit_Memo_No_Caption; Credit_Memo_No_CaptionLbl)
            {
            }
            column(Supplier_NameCaption_Control1000000046; Supplier_NameCaption_Control1000000046Lbl)
            {
            }
            column(Posting_DateCaption; Posting_DateCaptionLbl)
            {
            }
            column(QTYCaption_Control1000000050; QTYCaption_Control1000000050Lbl)
            {
            }
            column(Credit_MemosCaption; Credit_MemosCaptionLbl)
            {
            }
            column(Total_Credit_MemoCaption; Total_Credit_MemoCaptionLbl)
            {
            }
            column(Total_InvoiceCaption; Total_InvoiceCaptionLbl)
            {
            }
            column(Total_Purchase___Total_Credit_MemoCaption; Total_Purchase___Total_Credit_MemoCaptionLbl)
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

    var
        Text000: Label 'No number series has been used for the following entries:';
        Text001: Label 'The number series %1 %2 has been used for the following entries:';
        Text002: Label 'There is a gap in the number series.';
        Text003: Label 'The documents are not listed according to Posting Date because they were not entered in that order.';
        Text004: Label 'Posted Purchase Invoice: %1';
        NoSeries: Record 308;
        SourceCode: Record 230;
        PurchInvHeaderFilter: Text[250];
        LastNo: Code[20];
        LastPostingDate: Date;
        LastNoSeriesCode: Code[10];
        FirstRecord: Boolean;
        NewPage: Boolean;
        ErrorText: array[10] of Text[250];
        ErrorCounter: Integer;
        GLSetup: Record "98";
        Purchase_InvoicesCaptionLbl: Label 'Purchase Invoices';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Original_AmountCaptionLbl: Label 'Original Amount';
        Supplier_NumberCaptionLbl: Label 'Supplier Number';
        Invoice_NoCaptionLbl: Label 'Invoice No';
        Supplier_NameCaptionLbl: Label 'Supplier Name';
        QTYCaptionLbl: Label 'QTY';
        Purchase_InvoicesCaption_Control1000000054Lbl: Label 'Purchase Invoices';
        TotalCaptionLbl: Label 'Total';
        Purchase_InvoicesCaption_Control1000000035Lbl: Label 'Purchase Invoices';
        CurrReport_PAGENO_Control1000000038CaptionLbl: Label 'Page';
        Curency_CodeCaptionLbl: Label 'Curency Code';
        Original_AmountCaption_Control1000000043Lbl: Label 'Original Amount';
        Supplier_NumberCaption_Control1000000044Lbl: Label 'Supplier Number';
        Credit_Memo_No_CaptionLbl: Label 'Credit Memo No.';
        Supplier_NameCaption_Control1000000046Lbl: Label 'Supplier Name';
        Posting_DateCaptionLbl: Label 'Posting Date';
        QTYCaption_Control1000000050Lbl: Label 'QTY';
        Credit_MemosCaptionLbl: Label 'Credit Memos';
        Total_Credit_MemoCaptionLbl: Label 'Total Credit Memo';
        Total_InvoiceCaptionLbl: Label 'Total Invoice';
        Total_Purchase___Total_Credit_MemoCaptionLbl: Label 'Total Purchase - Total Credit Memo';

    local procedure AddError(Text: Text[250])
    begin
    end;
}

