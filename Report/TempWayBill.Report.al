report 50278 "Temp WayBill"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TempWayBill.rdlc';

    dataset
    {
        dataitem(DataItem8280; Table83)
        {
            DataItemTableView = SORTING (Journal Template Name, Journal Batch Name, Line No.)
                                WHERE (Journal Batch Name=CONST(VRI));
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
            column(Item_Journal_Line__Document_No__; "Document No.")
            {
            }
            column(Item_Journal_Line__Item_No__; "Item No.")
            {
            }
            column(Item_Journal_Line_Description; Description)
            {
            }
            column(Item_Journal_Line_Quantity; Quantity)
            {
            }
            column(Item_Journal_Line__Chassis_No__; "Chassis No.")
            {
            }
            column(Item_Journal_Line__Variant_Code_; "Variant Code")
            {
            }
            column(Item_Journal_Line__Shelf_No__; "Shelf No.")
            {
            }
            column(Item_Journal_Line__Location_Code_; "Location Code")
            {
            }
            column(Item_Journal_Line__Unit_Cost_; "Unit Cost")
            {
            }
            column(Item_Journal_Line_Amount; Amount)
            {
            }
            column(Item_Journal_Line_Quantity_Control1000000013; Quantity)
            {
            }
            column(TotalAmount; TotalAmount)
            {
            }
            column(VRI_WAY_BILL_PICKING_LISTCaption; VRI_WAY_BILL_PICKING_LISTCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Journal_Line__Document_No__Caption; FIELDCAPTION("Document No."))
            {
            }
            column(Item_Journal_Line__Item_No__Caption; FIELDCAPTION("Item No."))
            {
            }
            column(Item_Journal_Line_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(QtyCaption; QtyCaptionLbl)
            {
            }
            column(Item_Journal_Line__Chassis_No__Caption; FIELDCAPTION("Chassis No."))
            {
            }
            column(Item_Journal_Line__Variant_Code_Caption; FIELDCAPTION("Variant Code"))
            {
            }
            column(Item_Journal_Line__Shelf_No__Caption; FIELDCAPTION("Shelf No."))
            {
            }
            column(Item_Journal_Line__Location_Code_Caption; FIELDCAPTION("Location Code"))
            {
            }
            column(Item_Journal_Line__Unit_Cost_Caption; FIELDCAPTION("Unit Cost"))
            {
            }
            column(Item_Journal_Line_AmountCaption; FIELDCAPTION(Amount))
            {
            }
            column(Total_QuantityCaption; Total_QuantityCaptionLbl)
            {
            }
            column(SALES_AUTHORIZATIONCaption; SALES_AUTHORIZATIONCaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(EmptyStringCaption_Control1000000021; EmptyStringCaption_Control1000000021Lbl)
            {
            }
            column(FINANCE_AUTHORIZATIONCaption; FINANCE_AUTHORIZATIONCaptionLbl)
            {
            }
            column(EmptyStringCaption_Control1000000023; EmptyStringCaption_Control1000000023Lbl)
            {
            }
            column(WAREHOUSE_AUTHORIZATIONCaption; WAREHOUSE_AUTHORIZATIONCaptionLbl)
            {
            }
            column(EmptyStringCaption_Control1000000031; EmptyStringCaption_Control1000000031Lbl)
            {
            }
            column(TNL_VRI_STAFFCaption; TNL_VRI_STAFFCaptionLbl)
            {
            }
            column(Item_Journal_Line_Journal_Template_Name; "Journal Template Name")
            {
            }
            column(Item_Journal_Line_Journal_Batch_Name; "Journal Batch Name")
            {
            }
            column(Item_Journal_Line_Line_No_; "Line No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Journal Template Name");
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
        TotalAmount: Decimal;
        VRI_WAY_BILL_PICKING_LISTCaptionLbl: Label 'VRI WAY-BILL/PICKING LIST';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        QtyCaptionLbl: Label 'Qty';
        Total_QuantityCaptionLbl: Label 'Total Quantity';
        SALES_AUTHORIZATIONCaptionLbl: Label 'SALES AUTHORIZATION';
        EmptyStringCaptionLbl: Label '.........................................................';
        EmptyStringCaption_Control1000000021Lbl: Label '.........................................................';
        FINANCE_AUTHORIZATIONCaptionLbl: Label 'FINANCE AUTHORIZATION';
        EmptyStringCaption_Control1000000023Lbl: Label '.........................................................';
        WAREHOUSE_AUTHORIZATIONCaptionLbl: Label 'WAREHOUSE AUTHORIZATION';
        EmptyStringCaption_Control1000000031Lbl: Label '.........................................................';
        TNL_VRI_STAFFCaptionLbl: Label 'TNL VRI STAFF';
}

