report 50263 "Summary Hours Worked Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SummaryHoursWorkedReport.rdlc';

    dataset
    {
        dataitem(DataItem8568; Table50124)
        {
            RequestFilterFields = "No.", "TnA ID", Designation;
            RequestFilterHeading = 'Employee';
            column(USERID; USERID)
            {
            }
            column(TODAY; TODAY)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(FromDate; FromDate)
            {
            }
            column(ToDate; ToDate)
            {
            }
            column(Employee_Mapping__No__; "No.")
            {
            }
            column(NWHR; NWHR)
            {
                DecimalPlaces = 0 : 2;
            }
            column(Employee_Mapping_Name; Name)
            {
            }
            column(NWMIN; NWMIN)
            {
                DecimalPlaces = 0 : 2;
            }
            column(WHR; WHR)
            {
                DecimalPlaces = 0 : 2;
            }
            column(WMIN; WMIN)
            {
                DecimalPlaces = 0 : 2;
            }
            column(SUMMARY_OF_HOURS_WORKEDCaption; SUMMARY_OF_HOURS_WORKEDCaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(FromDateCaption; FromDateCaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(Hours_WorkedCaption; Hours_WorkedCaptionLbl)
            {
            }
            column(Employee_Mapping__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(NWHRCaption; NWHRCaptionLbl)
            {
            }
            column(Employee_Mapping_NameCaption; FIELDCAPTION(Name))
            {
            }
            column(HR___MINCaption; HR___MINCaptionLbl)
            {
            }
            column(HR___MINCaption_Control1000000021; HR___MINCaption_Control1000000021Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000002; EmptyStringCaption_Control1000000002Lbl)
            {
            }
            column(EmptyStringCaption_Control1000000004; EmptyStringCaption_Control1000000004Lbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                QuantityDiff := 0;
                SETRANGE("Date Filter", FromDate, ToDate);
                CALCFIELDS("Mins Worked", "Mins Not Worked");
                QuantityDiff := "Mins Worked" / 60;
                HoursNotWorked := ("Mins Not Worked" / 60);
                NWHR := 0;
                NWMIN := 0;
                WHR := 0;
                WMIN := 0;

                NWHR := ("Mins Not Worked" DIV 60);
                NWMIN := ("Mins Not Worked" MOD 60);

                WHR := ("Mins Worked" DIV 60);
                WMIN := ("Mins Worked" MOD 60);

                IF NOT ShowZeroEntry THEN
                    IF (QuantityDiff = 0) AND (HoursNotWorked = 0) THEN
                        CurrReport.SKIP
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
        AttendanceReg: Record "50060";
        FromDate: Date;
        ToDate: Date;
        QuantityDiff: Decimal;
        DayType: Option "Week Days","Week-End","Public Holiday";
        ShowZeroEntry: Boolean;
        ShowHoursNotWorked: Boolean;
        HoursNotWorked: Decimal;
        WHR: Integer;
        NWHR: Decimal;
        WMIN: Integer;
        NWMIN: Decimal;
        SUMMARY_OF_HOURS_WORKEDCaptionLbl: Label 'SUMMARY OF HOURS WORKED';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        PageCaptionLbl: Label 'Page';
        FromDateCaptionLbl: Label 'Date Filter:';
        EmptyStringCaptionLbl: Label '..';
        Hours_WorkedCaptionLbl: Label 'Hours Worked';
        NWHRCaptionLbl: Label 'Hours Not Worked';
        HR___MINCaptionLbl: Label 'HR : MIN';
        HR___MINCaption_Control1000000021Lbl: Label 'HR : MIN';
        EmptyStringCaption_Control1000000002Lbl: Label ':';
        EmptyStringCaption_Control1000000004Lbl: Label ':';
}

