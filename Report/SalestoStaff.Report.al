report 50378 "Sales to Staff"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SalestoStaff.rdlc';

    dataset
    {
        dataitem(DataItem1570; Table113)
        {
            DataItemTableView = SORTING (Sell-to Customer No.)
                                WHERE (Posting Group=FILTER(N_PARTS));
            RequestFilterFields = "Posting Date";
            RequestFilterHeading = 'Staff Sales';
            column(FORMAT_TODAY_0_4_;FORMAT(TODAY,0,4))
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(USERID;USERID)
            {
            }
            column(StaffName;StaffName)
            {
            }
            column(Sales_Invoice_Line__Document_No__;"Document No.")
            {
            }
            column(Sales_Invoice_Line__Posting_Date_;"Posting Date")
            {
            }
            column(Sales_Invoice_Line__Sell_to_Customer_No__;"Sell-to Customer No.")
            {
            }
            column(Sales_Invoice_Line__No__;"No.")
            {
            }
            column(Sales_Invoice_Line_Description;Description)
            {
            }
            column(Sales_Invoice_Line_Quantity;Quantity)
            {
            }
            column(Sales_Invoice_Line__Amount_Including_VAT_;"Amount Including VAT")
            {
            }
            column(StaffName_Control1000000007;StaffName)
            {
            }
            column(Sales_Invoice_Line_Quantity_Control1000000032;Quantity)
            {
            }
            column(Sales_Invoice_Line__Amount_Including_VAT__Control1000000033;"Amount Including VAT")
            {
            }
            column(Staff_SalesCaption;Staff_SalesCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Invoice_No_Caption;Invoice_No_CaptionLbl)
            {
            }
            column(DateCaption;DateCaptionLbl)
            {
            }
            column(Staff_No_Caption;Staff_No_CaptionLbl)
            {
            }
            column(Staff_NameCaption;Staff_NameCaptionLbl)
            {
            }
            column(Item_No_Caption;Item_No_CaptionLbl)
            {
            }
            column(Sales_Invoice_Line_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Sales_Invoice_Line_QuantityCaption;FIELDCAPTION(Quantity))
            {
            }
            column(AmountCaption;AmountCaptionLbl)
            {
            }
            column(TotalCaption;TotalCaptionLbl)
            {
            }
            column(Sales_Invoice_Line_Line_No_;"Line No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF CustRec.GET("Sales Invoice Line"."Sell-to Customer No.") THEN
                  StaffName := CustRec.Name;

                IF CustRec.GET("Sell-to Customer No.") THEN
                  IF CustRec."Gen. Bus. Posting Group" <> 'STAFF' THEN
                    CurrReport.SKIP;

                SalesCredit.SETCURRENTKEY("Applies-to Doc. No.");
                SalesCredit.SETRANGE("Applies-to Doc. No.","Sales Invoice Line"."Document No.");
                IF SalesCredit.FINDFIRST THEN
                  CurrReport.SKIP;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Sell-to Customer No.");
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        StaffName: Text[50];
        CustRec: Record "18";
        SalesCredit: Record "114";
        Staff_SalesCaptionLbl: Label 'Staff Sales';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Invoice_No_CaptionLbl: Label 'Invoice No.';
        DateCaptionLbl: Label 'Date';
        Staff_No_CaptionLbl: Label 'Staff No.';
        Staff_NameCaptionLbl: Label 'Staff Name';
        Item_No_CaptionLbl: Label 'Item No.';
        AmountCaptionLbl: Label 'Amount';
        TotalCaptionLbl: Label 'Total';
}

