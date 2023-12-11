report 50316 "COF Opened"
{
    DefaultLayout = RDLC;
    RDLCLayout = './COFOpened.rdlc';

    dataset
    {
        dataitem(DataItem7672; Table50119)
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
            column(Customer_Order_Table___Customer_Order_Form_No__; "Customer Order Form No.")
            {
            }
            column(Customer_Order_Table___Customer_Name_; "Customer Name")
            {
            }
            column(Customer_Order_Table___Model_Name_; "Model Name")
            {
            }
            column(Customer_Order_Table___Vehicle_Registration_No__; "Vehicle Registration No.")
            {
            }
            column(Customer_Order_Table___Contact_Telephone_No__; "Contact Telephone No.")
            {
            }
            column(Customer_Order_Table___Frame_No__VIN_; "Frame No./VIN")
            {
            }
            column(Customer_Order_Table____Engine_No__; "(Engine No)")
            {
            }
            column(Customer_Order_Table___Job_Details_; "Job Details")
            {
            }
            column(Customer_Order_Table___Appointment_Date_; "Appointment Date")
            {
            }
            column(Customer_Order_Table___Appointment_Time_; "Appointment Time")
            {
            }
            column(Customer_Order_Table_Caption; Customer_Order_Table_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(COF_No_Caption; COF_No_CaptionLbl)
            {
            }
            column(Customer_Order_Table___Customer_Name_Caption; FIELDCAPTION("Customer Name"))
            {
            }
            column(Customer_Order_Table___Model_Name_Caption; FIELDCAPTION("Model Name"))
            {
            }
            column(Reg_No_Caption; Reg_No_CaptionLbl)
            {
            }
            column(TelephoneCaption; TelephoneCaptionLbl)
            {
            }
            column(Customer_Order_Table___Frame_No__VIN_Caption; FIELDCAPTION("Frame No./VIN"))
            {
            }
            column(Engine_No_Caption; Engine_No_CaptionLbl)
            {
            }
            column(Customer_Order_Table___Job_Details_Caption; FIELDCAPTION("Job Details"))
            {
            }
            column(Appt_DateCaption; Appt_DateCaptionLbl)
            {
            }
            column(Appt_TimeCaption; Appt_TimeCaptionLbl)
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Customer Order Form No.");
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
        Customer_Order_Table_CaptionLbl: Label 'Customer Order Table.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        COF_No_CaptionLbl: Label 'COF No.';
        Reg_No_CaptionLbl: Label 'Reg No.';
        TelephoneCaptionLbl: Label 'Telephone';
        Engine_No_CaptionLbl: Label 'Engine No.';
        Appt_DateCaptionLbl: Label 'Appt Date';
        Appt_TimeCaptionLbl: Label 'Appt Time';
}

