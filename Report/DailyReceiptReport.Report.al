report 50418 "Daily Receipt Report "
{
    DefaultLayout = RDLC;
    RDLCLayout = './DailyReceiptReport.rdlc';

    dataset
    {
        dataitem(DataItem5195; Table50003)
        {
            DataItemTableView = SORTING (Lower Amount, Upper Amount, TableId) WHERE (Lower Amount=CONST(0));
            RequestFilterFields = Field19, "Cum. Tax Payable", Field11, "Upper Amount";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(ABS_Amount_; ABS(Amount))
            {
            }
            column(Payment_Receipt___Posting_Date_; "Posting Date")
            {
            }
            column(Payment_Receipt___Account_Description_; "Account Description")
            {
            }
            column(Payment_Receipt___Bal__Acc__Description_; "Bal. Acc. Description")
            {
            }
            column(Payment_Receipt___No__; TableId)
            {
            }
            column(Payment_Receipt___External_Document_No__; "External Document No.")
            {
            }
            column(ABS_Amount__Control1000000000; ABS(Amount))
            {
            }
            column(Daily_Receipts_ReportCaption; Daily_Receipts_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VEHICLE_SALESCaption; VEHICLE_SALESCaptionLbl)
            {
            }
            column(Doc__No_Caption; Doc__No_CaptionLbl)
            {
            }
            column(AmountCaption; AmountCaptionLbl)
            {
            }
            column(DateCaption; DateCaptionLbl)
            {
            }
            column(Customer_NameCaption; Customer_NameCaptionLbl)
            {
            }
            column(Bank_NameCaption; Bank_NameCaptionLbl)
            {
            }
            column(Receipt_No_Caption; Receipt_No_CaptionLbl)
            {
            }
            column(VEHICLE_SALESCaption_Control1000000003; VEHICLE_SALESCaption_Control1000000003Lbl)
            {
            }
            column(SUBTOTALCaption; SUBTOTALCaptionLbl)
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            column(Payment_Receipt__Document_Type; "Lower Amount")
            {
            }
            column(Payment_Receipt__Cash_Cheque; "Upper Amount")
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
        Daily_Receipts_ReportCaptionLbl: Label 'Daily Receipts Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VEHICLE_SALESCaptionLbl: Label 'VEHICLE SALES';
        Doc__No_CaptionLbl: Label 'Doc. No.';
        AmountCaptionLbl: Label 'Amount';
        DateCaptionLbl: Label 'Date';
        Customer_NameCaptionLbl: Label 'Customer Name';
        Bank_NameCaptionLbl: Label 'Bank Name';
        Receipt_No_CaptionLbl: Label 'Receipt No.';
        VEHICLE_SALESCaption_Control1000000003Lbl: Label 'VEHICLE SALES';
        SUBTOTALCaptionLbl: Label 'SUBTOTAL';
        Grand_TotalCaptionLbl: Label 'Grand Total';
}

