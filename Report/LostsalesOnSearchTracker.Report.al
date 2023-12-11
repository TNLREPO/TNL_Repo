report 50160 "Lost sales On Search Tracker."
{
    DefaultLayout = RDLC;
    RDLCLayout = './LostsalesOnSearchTracker.rdlc';

    dataset
    {
        dataitem(DataItem8437; Table50095)
        {
            DataItemTableView = SORTING (Item Group, Part No)
                                WHERE (Lost Quantity=FILTER(>0));
            RequestFilterFields = "Part No","Request Date","Date Filter","Location Code","Item Group","Non Specification","Request by";
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
            column(Parts_Enquiry__Part_No_;"Part No")
            {
            }
            column(Parts_Enquiry__Part_No__Control1000000011;"Part No")
            {
            }
            column(Parts_Enquiry__Part_Description_;"Part Description")
            {
            }
            column(Parts_Enquiry__Model_No__;"Model No.")
            {
            }
            column(Parts_Enquiry__Location_Code_;"Location Code")
            {
            }
            column(Parts_Enquiry__Frequency_of_Request_;"Frequency of Request")
            {
            }
            column(Parts_Enquiry__Quantity_Demanded_;"Quantity Demanded")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Quantity_Supplied_;"Quantity Supplied")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Lost_Quantity_;"Lost Quantity")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Request_Date_;"Request Date")
            {
            }
            column(Parts_Enquiry__Request_by_;"Request by")
            {
            }
            column(Parts_Enquiry__Quantity_On_Hand_;"Quantity On Hand")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Quantity_On_Purchase_Order_;"Quantity On Purchase Order")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Item_Group_;"Item Group")
            {
            }
            column(Parts_Enquiry__Unit_Price_;"Unit Price")
            {
            }
            column(lostval;lostval)
            {
            }
            column(Parts_Enquiry__Part_No__Control1000000040;"Part No")
            {
            }
            column(Parts_Enquiry__Quantity_Demanded__Control1000000041;"Quantity Demanded")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Quantity_Supplied__Control1000000042;"Quantity Supplied")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Lost_Quantity__Control1000000043;"Lost Quantity")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Frequency_of_Request__Control1000000000;"Frequency of Request")
            {
            }
            column(Parts_Enquiry__Model_No___Control1000000019;"Model No.")
            {
            }
            column(Parts_Enquiry__Part_Description__Control1000000025;"Part Description")
            {
            }
            column(Parts_Enquiry__Quantity_On_Hand__Control1000000046;"Quantity On Hand")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Quantity_On_Purchase_Order__Control1000000047;"Quantity On Purchase Order")
            {
                DecimalPlaces = 0:0;
            }
            column(Parts_Enquiry__Item_Group__Control1000000020;"Item Group")
            {
                DecimalPlaces = 0:0;
            }
            column(lostval_Control1000000048;lostval)
            {
            }
            column(Parts_Enquiry__Unit_Price__Control1000000049;"Unit Price")
            {
            }
            column(Parts_EnquiryCaption;Parts_EnquiryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Parts_Enquiry__Part_No__Control1000000011Caption;FIELDCAPTION("Part No"))
            {
            }
            column(Parts_Enquiry__Part_Description_Caption;FIELDCAPTION("Part Description"))
            {
            }
            column(Parts_Enquiry__Model_No__Caption;FIELDCAPTION("Model No."))
            {
            }
            column(Parts_Enquiry__Location_Code_Caption;FIELDCAPTION("Location Code"))
            {
            }
            column(Parts_Enquiry__Frequency_of_Request_Caption;FIELDCAPTION("Frequency of Request"))
            {
            }
            column(Parts_Enquiry__Quantity_Demanded_Caption;FIELDCAPTION("Quantity Demanded"))
            {
            }
            column(Parts_Enquiry__Quantity_Supplied_Caption;FIELDCAPTION("Quantity Supplied"))
            {
            }
            column(Parts_Enquiry__Lost_Quantity_Caption;FIELDCAPTION("Lost Quantity"))
            {
            }
            column(Parts_Enquiry__Request_Date_Caption;FIELDCAPTION("Request Date"))
            {
            }
            column(Parts_Enquiry__Request_by_Caption;FIELDCAPTION("Request by"))
            {
            }
            column(Parts_Enquiry__Quantity_On_Hand_Caption;Parts_Enquiry__Quantity_On_Hand_CaptionLbl)
            {
            }
            column(Parts_Enquiry__Quantity_On_Purchase_Order_Caption;Parts_Enquiry__Quantity_On_Purchase_Order_CaptionLbl)
            {
            }
            column(Parts_Enquiry__Item_Group_Caption;FIELDCAPTION("Item Group"))
            {
            }
            column(Parts_Enquiry__Unit_Price_Caption;FIELDCAPTION("Unit Price"))
            {
            }
            column(lostvalCaption;lostvalCaptionLbl)
            {
            }
            column(Parts_Enquiry__Part_No_Caption;FIELDCAPTION("Part No"))
            {
            }
            column(Parts_Enquiry_Search_Code;"Search Code")
            {
            }
            column(Parts_Enquiry_Entry_No;"Entry No")
            {
            }

            trigger OnAfterGetRecord()
            begin
                lostval := 0;
                IF itemrec.GET("Part No") THEN
                BEGIN
                itemrec.CALCFIELDS(itemrec."Qty. on Purch. Order",itemrec."Net Change");
                "Quantity On Hand" := itemrec."Net Change";
                "Quantity On Purchase Order":= itemrec."Qty. on Purch. Order";
                END;
                IF (ShowQtyOO) AND (ShowQtyOH = FALSE) THEN
                BEGIN
                  IF "Quantity On Purchase Order" > 0 THEN
                  CurrReport.SKIP;
                END;
                lostval := "Unit Price"*"Lost Quantity";
                IF (ShowQtyOH) AND (ShowQtyOO = FALSE) THEN
                BEGIN
                  IF "Quantity On Hand" > 0 THEN
                  CurrReport.SKIP;
                END;
                IF (ShowQtyOO) AND (ShowQtyOH) THEN
                BEGIN
                   IF (itemrec."Qty. on Purch. Order" > 0) OR (itemrec."Net Change" > 0) THEN
                   CurrReport.SKIP;
                END;
                IF NOT showsum THEN;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Part No");
                 CurrReport.CREATETOTALS(lostval);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Show Summary";showsum)
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        ExportToExcel: Boolean;
        "==============": Integer;
        EXc: Integer;
        EXr: Integer;
        gFontSize: Integer;
        XlApp: Automation ;
        XlWorkBook: Automation ;
        XlWorkSheet: Automation ;
        XlWorksheets: Automation ;
        XlRange: Automation ;
        Bold: Boolean;
        Italic: Boolean;
        Underline: Boolean;
        Region: Code[10];
        Period: Date;
        c: Integer;
        i: Integer;
        j: Integer;
        nr: Integer;
        showsum: Boolean;
        itemrec: Record "27";
        ShowQtyOO: Boolean;
        ShowQtyOH: Boolean;
        show: Boolean;
        lostval: Decimal;
        Parts_EnquiryCaptionLbl: Label 'Parts Enquiry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Parts_Enquiry__Quantity_On_Hand_CaptionLbl: Label 'Q''ty On Hand';
        Parts_Enquiry__Quantity_On_Purchase_Order_CaptionLbl: Label 'Q''ty On Order';
        lostvalCaptionLbl: Label 'Lost Value';
}

