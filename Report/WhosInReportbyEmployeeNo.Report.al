report 50261 "Who's In Report by Employee No"
{
    DefaultLayout = RDLC;
    RDLCLayout = './WhosInReportbyEmployeeNo.rdlc';

    dataset
    {
        dataitem(DataItem1131; Table50060)
        {
            DataItemTableView = SORTING (Employee No., Date)
                                WHERE (Date In=FILTER(<>''));
            RequestFilterFields = "Employee No.","TnA ID","Date In","Time In","Global Dimension 1 Code";
            column(USERID;USERID)
            {
            }
            column(CompanyData_Name;CompanyData.Name)
            {
            }
            column(TODAY;TODAY)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(GETFILTERS;GETFILTERS)
            {
            }
            column(Attendance_Register_2__Employee_No__;"Employee No.")
            {
            }
            column(EmployeeName;EmployeeName)
            {
            }
            column(Attendance_Register_2__Time_Out_;"Time Out")
            {
            }
            column(Attendance_Register_2__Time_In_;"Time In")
            {
            }
            column(Attendance_Register_2__Mins_At_Work_;"Mins At Work")
            {
                DecimalPlaces = 0:5;
            }
            column(Attendance_Register_2__Out_Terminal_ID_;"Out-Terminal ID")
            {
            }
            column(Attendance_Register_2__In_Terminal_ID_;"In-Terminal ID")
            {
            }
            column(Attendance_Register_2__Date_Out_;"Date Out")
            {
            }
            column(Attendance_Register_2__Late_In_Min_;"Late In/Min")
            {
            }
            column(Attendance_Register_2__Date_In_;"Date In")
            {
            }
            column(Attendance_Register_2__Late_In_Min__Control1000000021;"Late In/Min")
            {
            }
            column(PageCaption;PageCaptionLbl)
            {
            }
            column(WHO_S_IN_REPORT_BY_EMPLOYEE_NOCaption;WHO_S_IN_REPORT_BY_EMPLOYEE_NOCaptionLbl)
            {
            }
            column(Attendance_Register_2__Time_In_Caption;FIELDCAPTION("Time In"))
            {
            }
            column(Attendance_Register_2__Time_Out_Caption;FIELDCAPTION("Time Out"))
            {
            }
            column(Employee_NameCaption;Employee_NameCaptionLbl)
            {
            }
            column(Attendance_Register_2__Mins_At_Work_Caption;FIELDCAPTION("Mins At Work"))
            {
            }
            column(Attendance_Register_2__In_Terminal_ID_Caption;FIELDCAPTION("In-Terminal ID"))
            {
            }
            column(Attendance_Register_2__Out_Terminal_ID_Caption;FIELDCAPTION("Out-Terminal ID"))
            {
            }
            column(Employee_No_Caption;Employee_No_CaptionLbl)
            {
            }
            column(Attendance_Register_2__Date_Out_Caption;FIELDCAPTION("Date Out"))
            {
            }
            column(Filter_Caption;Filter_CaptionLbl)
            {
            }
            column(Attendance_Register_2__Late_In_Min_Caption;FIELDCAPTION("Late In/Min"))
            {
            }
            column(Attendance_Register_2__Date_In_Caption;FIELDCAPTION("Date In"))
            {
            }
            column(TotalCaption;TotalCaptionLbl)
            {
            }
            column(Attendance_Register_2_Date;Date)
            {
            }

            trigger OnAfterGetRecord()
            begin
                EmployeeName := '';
                IF EmployeeRec.GET("Attendance Register 2"."Employee No.") THEN
                EmployeeName := COPYSTR(EmployeeRec.Name,1,100);
                IF NOT ShowIncompleteEntries THEN
                  IF "Attendance Register 2".Status <> "Attendance Register 2".Status::Complete THEN
                    CurrReport.SKIP;
            end;

            trigger OnPreDataItem()
            begin
                CompanyData.GET;
                /*IF "Attendance Register".GETFILTER("Attendance Register"."Date In") = '' THEN
                ERROR('Date In must be Specified!');
                */

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

    trigger OnInitReport()
    begin
        ShowIncompleteEntries := TRUE;
    end;

    var
        CompanyData: Record "79";
        FromDate: Date;
        ToDate: Date;
        EmployeeRec: Record "50124";
        EmployeeName: Text[100];
        ShowZeroEntries: Boolean;
        ShowIncompleteEntries: Boolean;
        ShowOnlyIncompleteEntries: Boolean;
        ScheduleDescription: Text[50];
        OffDuty: Boolean;
        PageCaptionLbl: Label 'Page';
        WHO_S_IN_REPORT_BY_EMPLOYEE_NOCaptionLbl: Label 'WHO''S IN REPORT BY EMPLOYEE NO';
        Employee_NameCaptionLbl: Label 'Employee Name';
        Employee_No_CaptionLbl: Label 'Employee No.';
        Filter_CaptionLbl: Label 'Filter:';
        TotalCaptionLbl: Label 'Total';
}

