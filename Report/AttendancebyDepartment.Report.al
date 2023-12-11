report 50262 "Attendance by Department"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AttendancebyDepartment.rdlc';

    dataset
    {
        dataitem(DataItem1131; Table50060)
        {
            DataItemTableView = SORTING (Global Dimension 1 Code, Date, Employee No.);
            RequestFilterFields = "Employee No.";
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
            column(Attendance_Register_2__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(Attendance_Register_2__Employee_No__; "Employee No.")
            {
            }
            column(Attendance_Register_2__Global_Dimension_1_Code__Control1000000014; "Global Dimension 1 Code")
            {
            }
            column(Attendance_Register_2__Date_In_; "Date In")
            {
            }
            column(Attendance_Register_2__Time_In_; "Time In")
            {
            }
            column(Attendance_Register_2__Date_Out_; "Date Out")
            {
            }
            column(Attendance_Register_2__Time_Out_; "Time Out")
            {
            }
            column(Attendance_Register_2__Late_In_Min_; "Late In/Min")
            {
            }
            column(Attendance_Register_2_Name; Name)
            {
            }
            column(Attendance_Register_2Caption; Attendance_Register_2CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Attendance_Register_2__Employee_No__Caption; FIELDCAPTION("Employee No."))
            {
            }
            column(Department_CodeCaption; Department_CodeCaptionLbl)
            {
            }
            column(Attendance_Register_2__Date_In_Caption; FIELDCAPTION("Date In"))
            {
            }
            column(Attendance_Register_2__Time_In_Caption; FIELDCAPTION("Time In"))
            {
            }
            column(Attendance_Register_2__Date_Out_Caption; FIELDCAPTION("Date Out"))
            {
            }
            column(Attendance_Register_2__Time_Out_Caption; FIELDCAPTION("Time Out"))
            {
            }
            column(Attendance_Register_2__Late_In_Min_Caption; FIELDCAPTION("Late In/Min"))
            {
            }
            column(Attendance_Register_2_NameCaption; FIELDCAPTION(Name))
            {
            }
            column(DepartmentCaption; DepartmentCaptionLbl)
            {
            }
            column(Attendance_Register_2_Date; Date)
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Employee No.");
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
        Attendance_Register_2CaptionLbl: Label 'Attendance Register 2';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Department_CodeCaptionLbl: Label 'Department Code';
        DepartmentCaptionLbl: Label 'Department';
}

