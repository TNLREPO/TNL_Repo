report 50107 "Purchase Invoices Statistics"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseInvoicesStatistics.rdlc';

    dataset
    {
        dataitem(DataItem3733; Table122)
        {
            RequestFilterFields = "No.", "Posting Date", "Purchaser Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code";
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
            column(GETFILTERS; GETFILTERS)
            {
            }
            column(Purch__Inv__Header__No__; "No.")
            {
            }
            column(Purch__Inv__Header__Posting_Date_; "Posting Date")
            {
            }
            column(Purch__Inv__Header__Buy_from_Vendor_No__; "Buy-from Vendor No.")
            {
            }
            column(Purch__Inv__Header__Pay_to_Name_; "Pay-to Name")
            {
            }
            column(Purch__Inv__Header__Consignment_No__; "Consignment No.")
            {
            }
            column(Purch__Inv__Header__Currency_Code_; "Currency Code")
            {
            }
            column(Purch__Inv__Header__Amount_Including_VAT_; "Amount Including VAT")
            {
            }
            column(Purch__Inv__Header__Total_Cost_LCY__; "Total Cost(LCY)")
            {
            }
            column(Purch__Inv__Header__Total_Item_Qty_; "External Document No.")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Inv__Header__Vendor_Invoice_No__; "Vendor Invoice No.")
            {
            }
            column(Purch__Inv__Header__Amount_Including_VAT__Control1000000022; "Amount Including VAT")
            {
            }
            column(Purch__Inv__Header__Total_Cost_LCY___Control1000000025; "Total Cost(LCY)")
            {
            }
            column(Purch__Inv__Header__Total_Item_Qty__Control1000000028; "External Document No.")
            {
                DecimalPlaces = 0 : 0;
            }
            column(Purch__Inv__StatisticsCaption; Purch__Inv__StatisticsCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purch__Inv__Header__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Purch__Inv__Header__Posting_Date_Caption; FIELDCAPTION("Posting Date"))
            {
            }
            column(Purch__Inv__Header__Buy_from_Vendor_No__Caption; FIELDCAPTION("Buy-from Vendor No."))
            {
            }
            column(Purch__Inv__Header__Pay_to_Name_Caption; FIELDCAPTION("Pay-to Name"))
            {
            }
            column(Purch__Inv__Header__Consignment_No__Caption; FIELDCAPTION("Consignment No."))
            {
            }
            column(Purch__Inv__Header__Currency_Code_Caption; FIELDCAPTION("Currency Code"))
            {
            }
            column(Purch__Inv__Header__Amount_Including_VAT_Caption; FIELDCAPTION("Amount Including VAT"))
            {
            }
            column(Purch__Inv__Header__Total_Cost_LCY__Caption; FIELDCAPTION("Total Cost(LCY)"))
            {
            }
            column(Purch__Inv__Header__Total_Item_Qty_Caption; FIELDCAPTION("External Document No."))
            {
            }
            column(Purch__Inv__Header__Vendor_Invoice_No__Caption; FIELDCAPTION("Vendor Invoice No."))
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
        Purch__Inv__StatisticsCaptionLbl: Label 'Purch. Inv. Statistics';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

