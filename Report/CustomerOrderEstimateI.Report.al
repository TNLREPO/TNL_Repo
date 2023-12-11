report 50057 "Customer Order Estimate I."
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerOrderEstimateI.rdlc';

    dataset
    {
        dataitem("<Customer Order Table.>"; Table50119)
        {
            DataItemTableView = SORTING (Customer Order Form No.);
            RequestFilterFields = "Customer Order Form No.";
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
            column(Customer_Order_Table____Customer_Order_Form_No__; "Customer Order Form No.")
            {
            }
            column(Customer_Order_Table____Customer_Order_Form_Date_; "Customer Order Form Date")
            {
            }
            column(Customer_Order_Table____Customer_No__; "Customer No.")
            {
            }
            column(Customer_Order_Table____Customer_Name_; "Customer Name")
            {
            }
            column(Customer_Order_Table___Address; Address)
            {
            }
            column(Customer_Order_Table___Address2; Address2)
            {
            }
            column(Customer_Order_Table____Model_No_; "Model No")
            {
            }
            column(Customer_Order_Table____Model_Name_; "Model Name")
            {
            }
            column(Customer_Order_Table____Vehicle_Registration_No__; "Vehicle Registration No.")
            {
            }
            column(Customer_Order_Table____Vehicle_Registered_Date_; "Vehicle Registered Date")
            {
            }
            column(Customer_Order_Table____Frame_No__VIN_; "Frame No./VIN")
            {
            }
            column(Customer_Order_Table_____Engine_No__; "(Engine No)")
            {
            }
            column(Customer_Order_Table____Job_Type_; "Job Type")
            {
            }
            column(Customer_Order_Table____Odometer_Reading_; "Odometer Reading")
            {
            }
            column(Customer_Order_Table____Telephone_No__; "Telephone No.")
            {
            }
            column(Customer_Order_Table____Estimate_No__; "Estimate No.")
            {
            }
            column(Customer_Order_Table___Cheque; Cheque)
            {
            }
            column(Customer_Order_Table___Cash; Cash)
            {
            }
            column(Customer_Order_Table____If_Other_Method_; "If Other Method")
            {
            }
            column(Customer_Order_Table____Expected_Delivery_Date_; "Expected Delivery Date")
            {
            }
            column(Customer_Order_Table____Expected_Delivery_Time_; "Expected Delivery Time")
            {
            }
            column(Customer_Order_Table____Total_Estimation_; "Total Estimation")
            {
            }
            column(Customer_Order_Table____Add__Jobs_Estimation_; "Add. Jobs Estimation")
            {
            }
            column(Add__Jobs_Estimation_____Total_Estimation_; "Add. Jobs Estimation" + "Total Estimation")
            {
            }
            column(Total_Estimation___0_05; "Total Estimation" * 0.05)
            {
            }
            column(Total_Estimation___0_05___Total_Estimation_; ("Total Estimation" * 0.05) + "Total Estimation")
            {
            }
            column(Customer_Order_Table____Job_Details_; "Job Details")
            {
            }
            column(TOYOTA_ESTIMATION_ICaption; TOYOTA_ESTIMATION_ICaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Customer_Order_Table____Customer_Order_Form_No__Caption; FIELDCAPTION("Customer Order Form No."))
            {
            }
            column(Customer_Order_Table____Customer_Order_Form_Date_Caption; FIELDCAPTION("Customer Order Form Date"))
            {
            }
            column(Customer_Order_Table____Customer_No__Caption; FIELDCAPTION("Customer No."))
            {
            }
            column(Customer_Order_Table____Customer_Name_Caption; FIELDCAPTION("Customer Name"))
            {
            }
            column(Customer_Order_Table___AddressCaption; FIELDCAPTION(Address))
            {
            }
            column(Customer_Order_Table____Model_No_Caption; FIELDCAPTION("Model No"))
            {
            }
            column(Customer_Order_Table____Model_Name_Caption; FIELDCAPTION("Model Name"))
            {
            }
            column(Customer_Order_Table____Vehicle_Registration_No__Caption; FIELDCAPTION("Vehicle Registration No."))
            {
            }
            column(Customer_Order_Table____Vehicle_Registered_Date_Caption; FIELDCAPTION("Vehicle Registered Date"))
            {
            }
            column(Customer_Order_Table____Frame_No__VIN_Caption; FIELDCAPTION("Frame No./VIN"))
            {
            }
            column(Customer_Order_Table_____Engine_No__Caption; FIELDCAPTION("(Engine No)"))
            {
            }
            column(Customer_Order_Table____Job_Type_Caption; FIELDCAPTION("Job Type"))
            {
            }
            column(Customer_Order_Table____Odometer_Reading_Caption; FIELDCAPTION("Odometer Reading"))
            {
            }
            column(Customer_Order_Table____Telephone_No__Caption; FIELDCAPTION("Telephone No."))
            {
            }
            column(Customer_Order_Table____Estimate_No__Caption; FIELDCAPTION("Estimate No."))
            {
            }
            column(Customer_Order_Table___ChequeCaption; FIELDCAPTION(Cheque))
            {
            }
            column(Customer_Order_Table___CashCaption; FIELDCAPTION(Cash))
            {
            }
            column(OtherCaption; OtherCaptionLbl)
            {
            }
            column(Payment_MethodCaption; Payment_MethodCaptionLbl)
            {
            }
            column(Customer_Order_Table____Expected_Delivery_Date_Caption; FIELDCAPTION("Expected Delivery Date"))
            {
            }
            column(Customer_Order_Table____Expected_Delivery_Time_Caption; FIELDCAPTION("Expected Delivery Time"))
            {
            }
            column(Customer_Order_Table____Total_Estimation_Caption; FIELDCAPTION("Total Estimation"))
            {
            }
            column(Additional_JobsCaption; Additional_JobsCaptionLbl)
            {
            }
            column(Customer_Order_Table____Add__Jobs_Estimation_Caption; FIELDCAPTION("Add. Jobs Estimation"))
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Total_Estimation___0_05Caption; Total_Estimation___0_05CaptionLbl)
            {
            }
            column(Total_Estimation___0_05___Total_Estimation_Caption; Total_Estimation___0_05___Total_Estimation_CaptionLbl)
            {
            }
            column(Customer_Order_Table____Job_Details_Caption; FIELDCAPTION("Job Details"))
            {
            }
            column(Customer_s_SignatureCaption; Customer_s_SignatureCaptionLbl)
            {
            }
            dataitem(DataItem6850; Table50122)
            {
                DataItemLink = Customer Order Form No.=FIELD(Customer Order Form No.);
                DataItemTableView = WHERE (Additional Jobs=CONST(No));
                column(Customer_Order_Line__No__; "No.")
                {
                }
                column(Customer_Order_Line_Description; Description)
                {
                }
                column(Customer_Order_Line_Quantity; Quantity)
                {
                }
                column(Customer_Order_Line__Unit_Price_; "Unit Price")
                {
                }
                column(Customer_Order_Line_Amount; Amount)
                {
                }
                column(Customer_Order_Line__Available_Quantity_; "Available Quantity")
                {
                }
                column(Customer_Order_Line__Additional_Jobs_; "Additional Jobs")
                {
                }
                column(Customer_Order_Line__No__Caption; FIELDCAPTION("No."))
                {
                }
                column(Customer_Order_Line_DescriptionCaption; FIELDCAPTION(Description))
                {
                }
                column(Customer_Order_Line_QuantityCaption; FIELDCAPTION(Quantity))
                {
                }
                column(Customer_Order_Line__Unit_Price_Caption; FIELDCAPTION("Unit Price"))
                {
                }
                column(Customer_Order_Line_AmountCaption; FIELDCAPTION(Amount))
                {
                }
                column(Avail__QuantityCaption; Avail__QuantityCaptionLbl)
                {
                }
                column(Add_JobsCaption; Add_JobsCaptionLbl)
                {
                }
                column(Customer_Order_Line_Customer_Order_Form_No_; "Customer Order Line"."Customer Order Form No.")
                {
                }
                column(Customer_Order_Line_Line_No_; "Customer Order Line"."Line No.")
                {
                }
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
        TOYOTA_ESTIMATION_ICaptionLbl: Label 'TOYOTA ESTIMATION I';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        OtherCaptionLbl: Label 'Other';
        Payment_MethodCaptionLbl: Label 'Payment Method';
        Additional_JobsCaptionLbl: Label 'Additional Jobs';
        TotalCaptionLbl: Label 'Total';
        Total_Estimation___0_05CaptionLbl: Label 'VAT';
        Total_Estimation___0_05___Total_Estimation_CaptionLbl: Label 'Estimate Inc VAT';
        Customer_s_SignatureCaptionLbl: Label 'Customer''s Signature';
        Avail__QuantityCaptionLbl: Label 'Avail. Quantity';
        Add_JobsCaptionLbl: Label 'Add Jobs';
}

