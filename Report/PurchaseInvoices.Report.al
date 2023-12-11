report 50190 "Purchase Invoices"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseInvoices.rdlc';
    Caption = 'Purchase Invoices';

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
            column(Vendor_Ledger_Entry___Amount__LCY__; -"Vendor Ledger Entry"."Amount (LCY)")
            {
            }
            column(Vendor_Ledger_Entry___Original_Amount_; -"Vendor Ledger Entry"."Original Amount")
            {
            }
            column(Purch__Inv__Header__Total_Item_Qty_; "External Document No.")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purchase_InvoicesCaption; Purchase_InvoicesCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Vendor_Ledger_Entry__Currency_Code_Caption; "Vendor Ledger Entry".FIELDCAPTION("Currency Code"))
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
            column(Vendor_Ledger_Entry__Posting_Date_Caption; "Vendor Ledger Entry".FIELDCAPTION("Posting Date"))
            {
            }
            column(QTYCaption; QTYCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Purch__Inv__Header_No_; "No.")
            {
            }
            dataitem(DataItem4114; Table25)
            {
                CalcFields = Amount (LCY),Original Amount;
                DataItemLink = Document No.=FIELD(No.);
                column(Vendor_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(Vendor_Ledger_Entry__Vendor_No__; "Vendor No.")
                {
                }
                column(Amount__LCY__; -"Amount (LCY)")
                {
                }
                column(Original_Amount_; -"Original Amount")
                {
                }
                column(Vendor_Ledger_Entry__Currency_Code_; "Currency Code")
                {
                }
                column(Purch__Inv__Header___Pay_to_Name_; "Purch. Inv. Header"."Pay-to Name")
                {
                }
                column(Vendor_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Purch__Inv__Header___Total_Item_Qty_; "Purch. Inv. Header"."External Document No.")
                {
                    DecimalPlaces = 0 : 0;
                }
                column(Vendor_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
            }

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS("Vendor Ledger Entry"."Amount (LCY)", "Vendor Ledger Entry"."Original Amount");
                GLSetup.FIND('-');
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
        PurchInvHeaderFilter := "Purch. Inv. Header".GETFILTERS;
    end;

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
        TotalCaptionLbl: Label 'Total';

    local procedure AddError(Text: Text[250])
    begin
    end;
}

