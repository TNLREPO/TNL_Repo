report 50204 "Lost Sales Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LostSalesReport.rdlc';

    dataset
    {
        dataitem(DataItem2844; Table37)
        {
            DataItemTableView = SORTING (Document Type, Document No., Line No.)
                                WHERE (Document Type=CONST(6));
            RequestFilterFields = "Sell-to Customer No.", "Document No.", Type, "No.", "Shipment Date";
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
            column(Sales_Line__Sell_to_Customer_No__; "Sell-to Customer No.")
            {
            }
            column(Sales_Line__Document_No__; "Document No.")
            {
            }
            column(Sales_Line_Type; Type)
            {
            }
            column(Sales_Line__No__; "No.")
            {
            }
            column(Sales_Line_Description; Description)
            {
            }
            column(Sales_Line__Unit_of_Measure_; "Unit of Measure")
            {
            }
            column(Sales_Line_Quantity; Quantity)
            {
            }
            column(Sales_Line__Amount_Including_VAT_; "Amount Including VAT")
            {
            }
            column(Sales_Line__Outstanding_Quantity_; "Outstanding Quantity")
            {
            }
            column(Sales_Line__Outstanding_Amount__LCY__; "Outstanding Amount (LCY)")
            {
            }
            column(Sales_Line_Quantity_Control1000000007; Quantity)
            {
            }
            column(Sales_Line__Outstanding_Amount__LCY___Control1000000009; "Outstanding Amount (LCY)")
            {
            }
            column(Sales_Line__Amount_Including_VAT__Control1000000011; "Amount Including VAT")
            {
            }
            column(Sales_Line__Outstanding_Quantity__Control1000000008; "Outstanding Quantity")
            {
            }
            column(Lost_Sales_ReportCaption; Lost_Sales_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Line_TypeCaption; FIELDCAPTION(Type))
            {
            }
            column(Sales_Line__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Sales_Line_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Sales_Line__Unit_of_Measure_Caption; FIELDCAPTION("Unit of Measure"))
            {
            }
            column(Sales_Line_QuantityCaption; Sales_Line_QuantityCaptionLbl)
            {
            }
            column(Sales_Line__Amount_Including_VAT_Caption; Sales_Line__Amount_Including_VAT_CaptionLbl)
            {
            }
            column(Sales_Line__Outstanding_Quantity_Caption; Sales_Line__Outstanding_Quantity_CaptionLbl)
            {
            }
            column(Sales_Line__Outstanding_Amount__LCY__Caption; Sales_Line__Outstanding_Amount__LCY__CaptionLbl)
            {
            }
            column(Sales_Line_Document_Type; "Document Type")
            {
            }
            column(Sales_Line_Line_No_; "Line No.")
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
        LostAmount: Decimal;
        Cust: Record 18;
        Lost_Sales_ReportCaptionLbl: Label 'Lost Sales Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Sales_Line_QuantityCaptionLbl: Label 'Original Qty';
        Sales_Line__Amount_Including_VAT_CaptionLbl: Label 'Original Amount';
        Sales_Line__Outstanding_Quantity_CaptionLbl: Label 'Lost Quantity';
        Sales_Line__Outstanding_Amount__LCY__CaptionLbl: Label 'Lost Amount';
}

