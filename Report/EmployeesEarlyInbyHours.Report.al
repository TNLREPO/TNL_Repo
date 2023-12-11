report 50265 "Employees Early-In by Hours"
{
    DefaultLayout = RDLC;
    RDLCLayout = './EmployeesEarlyInbyHours.rdlc';

    dataset
    {
        dataitem(DataItem1131; Table50060)
        {
            DataItemTableView = SORTING (Date In)
                                WHERE (Date In=FILTER(<>''));
            RequestFilterFields = "Employee No.","TnA ID","Date In","Time In","In-Terminal ID","Out-Terminal ID";
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
            column(Attendance_Register_2__Date_In_;"Date In")
            {
            }
            column(Attendance_Register_2__Date_Out_;"Date Out")
            {
            }
            column(Attendance_Register_2__Time_Out_;"Time Out")
            {
            }
            column("MIN";MIN)
            {
            }
            column(HR;HR)
            {
            }
            column(Attendance_Register_2__Time_In_;"Time In")
            {
            }
            column(Attendance_Register_2__Employee_No__;"Employee No.")
            {
            }
            column(EmployeeName;EmployeeName)
            {
            }
            column(Report_print_date_Caption;Report_print_date_CaptionLbl)
            {
            }
            column(PageCaption;PageCaptionLbl)
            {
            }
            column(EARLY_IN_BY_HOURS_REPORTCaption;EARLY_IN_BY_HOURS_REPORTCaptionLbl)
            {
            }
            column(Attendance_Register_2__Time_In_Caption;FIELDCAPTION("Time In"))
            {
            }
            column(Attendance_Register_2__Date_Out_Caption;FIELDCAPTION("Date Out"))
            {
            }
            column(Attendance_Register_2__Time_Out_Caption;FIELDCAPTION("Time Out"))
            {
            }
            column(Early_In_ByCaption;Early_In_ByCaptionLbl)
            {
            }
            column(HRCaption;HRCaptionLbl)
            {
            }
            column(MINCaption;MINCaptionLbl)
            {
            }
            column(Attendance_Register_2__Employee_No__Caption;FIELDCAPTION("Employee No."))
            {
            }
            column(Employee_NameCaption;Employee_NameCaptionLbl)
            {
            }
            column(EmptyStringCaption;EmptyStringCaptionLbl)
            {
            }
            column(DATE_IN__Caption;DATE_IN__CaptionLbl)
            {
            }
            column(EmptyStringCaption_Control1000000027;EmptyStringCaption_Control1000000027Lbl)
            {
            }
            column(Attendance_Register_2_Date;Date)
            {
            }

            trigger OnAfterGetRecord()
            begin
                HR := 0;
                MIN := 0;
                EmployeeName := '';
                IF EmployeeRec.GET("Attendance Register 2"."Employee No.") THEN
                EmployeeName := COPYSTR(EmployeeRec.Name,1,100);
                HR := "Early In/Min" DIV 60;
                MIN := "Early In/Min" MOD 60;
                IF NOT ShowZeroEntries THEN
                IF (HR = 0) AND (MIN = 0) THEN
                CurrReport.SKIP;
            end;

            trigger OnPreDataItem()
            begin
                CompanyData.GET;
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
        CompanyData: Record "79";
        FromDate: Date;
        ToDate: Date;
        EmployeeRec: Record "50124";
        EmployeeName: Text[100];
        ShowZeroEntries: Boolean;
        HR: Integer;
        "MIN": Integer;
        Report_print_date_CaptionLbl: Label 'Report print date:';
        PageCaptionLbl: Label 'Page';
        EARLY_IN_BY_HOURS_REPORTCaptionLbl: Label 'EARLY-IN BY HOURS REPORT';
        Early_In_ByCaptionLbl: Label 'Early In By';
        HRCaptionLbl: Label 'HR';
        MINCaptionLbl: Label 'MIN';
        Employee_NameCaptionLbl: Label 'Employee Name';
        EmptyStringCaptionLbl: Label '/';
        DATE_IN__CaptionLbl: Label 'DATE IN :';
        EmptyStringCaption_Control1000000027Lbl: Label ':';
}

