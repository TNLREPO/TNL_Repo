report 50156 "cashier listing"
{
    DefaultLayout = RDLC;
    RDLCLayout = './cashierlisting.rdlc';

    dataset
    {
        dataitem(DataItem8503; Table21)
        {
            DataItemTableView = SORTING (Customer No., Posting Date, Currency Code);
            RequestFilterFields = "Posting Date", "User ID", "External Document No.";
            column(Pages_________FORMAT_CurrReport_PAGENO_; Pages + ' ' + FORMAT(CurrReport.PAGENO))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(Cust__Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Cust__Ledger_Entry__Customer_No__; "Customer No.")
            {
            }
            column(Cust__Ledger_Entry__Credit_Amount_; "Credit Amount")
            {
            }
            column(Cust__Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Cust__Ledger_Entry__User_ID_; "User ID")
            {
            }
            column(Cust__Ledger_Entry__Document_No___Control21; "Document No.")
            {
            }
            column(CustName; CustName)
            {
            }
            column(Cust__Ledger_Entry__Credit_Amount__Control17; "Credit Amount")
            {
            }
            column(Cust__Ledger_Entry__Credit_Amount__Control26; "Credit Amount")
            {
            }
            column(Cust__Ledger_Entry__Credit_Amount__Control14; "Credit Amount")
            {
                AutoCalcField = true;
            }
            column(Daily_Cash___Cheque_Sales_Proceeds_ReportCaption; Daily_Cash___Cheque_Sales_Proceeds_ReportCaptionLbl)
            {
            }
            column(ForCaption; ForCaptionLbl)
            {
            }
            column(Account_NoCaption; Account_NoCaptionLbl)
            {
            }
            column(Amount___CashCaption; Amount___CashCaptionLbl)
            {
            }
            column(Cash_Receipt_NoCaption; Cash_Receipt_NoCaptionLbl)
            {
            }
            column(Cashier_NoCaption; Cashier_NoCaptionLbl)
            {
            }
            column(Cheque__NoCaption; Cheque__NoCaptionLbl)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(Amount_ChequeCaption; Amount_ChequeCaptionLbl)
            {
            }
            column(Total_ProceedsCaption; Total_ProceedsCaptionLbl)
            {
            }
            column(Total_for_DayCaption; Total_for_DayCaptionLbl)
            {
            }
            column(Cust__Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Cust.GET("Cust. Ledger Entry"."Customer No.") THEN
                    CustName := Cust.Name
                ELSE
                    CustName := '';

                totamt := totamt + "Credit Amount";
                tamt := tamt + "Credit Amount";
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
        Pages: Label 'Page';
        CustName: Text[30];
        Cust: Record 18;
        totamt: Decimal;
        tamt: Decimal;
        Daily_Cash___Cheque_Sales_Proceeds_ReportCaptionLbl: Label 'Daily Cash / Cheque Sales Proceeds Report';
        ForCaptionLbl: Label 'For';
        Account_NoCaptionLbl: Label 'Account No';
        Amount___CashCaptionLbl: Label 'Amount   Cash';
        Cash_Receipt_NoCaptionLbl: Label 'Cash Receipt No';
        Cashier_NoCaptionLbl: Label 'Cashier No';
        Cheque__NoCaptionLbl: Label 'Cheque  No';
        NameCaptionLbl: Label 'Name';
        Amount_ChequeCaptionLbl: Label 'Amount Cheque';
        Total_ProceedsCaptionLbl: Label 'Total Proceeds';
        Total_for_DayCaptionLbl: Label 'Total for Day';
}

