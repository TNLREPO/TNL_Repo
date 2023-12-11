report 50264 "Time Card Detail Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TimeCardDetailReport.rdlc';

    dataset
    {
        dataitem(DataItem5154; Table50123)
        {
            DataItemTableView = SORTING (TnA ID);
            RequestFilterFields = "Terminal ID", "TnA ID", "Attendance Date", "Attendance Time";
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(USERID; USERID)
            {
            }
            column(TODAY; TODAY)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(TimeFilter; TimeFilter)
            {
            }
            column(Data_Capture__TnA_ID_; "TnA ID")
            {
            }
            column(Data_Capture__Attendance_Time_; "Attendance Time")
            {
            }
            column(Data_Capture__Attendance_Date_; "Attendance Date")
            {
            }
            column(Data_Capture_Name; Name)
            {
            }
            column(TIME_CARD_DETAIL_REPORTCaption; TIME_CARD_DETAIL_REPORTCaptionLbl)
            {
            }
            column(Report_print_date_Caption; Report_print_date_CaptionLbl)
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(Data_Capture__Attendance_Time_Caption; FIELDCAPTION("Attendance Time"))
            {
            }
            column(Data_Capture__Attendance_Date_Caption; FIELDCAPTION("Attendance Date"))
            {
            }
            column(Data_Capture_NameCaption; FIELDCAPTION(Name))
            {
            }
            column(Data_Capture__TnA_ID_Caption; FIELDCAPTION("TnA ID"))
            {
            }
            column(Data_Capture_Terminal_ID; "Terminal ID")
            {
            }
            column(Data_Capture_Attendance_Date_Time; "Attendance Date Time")
            {
            }

            trigger OnAfterGetRecord()
            begin
                TimeFilter := "Data Capture".GETFILTERS;
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
        TimeFilter: Text[100];
        TIME_CARD_DETAIL_REPORTCaptionLbl: Label 'TIME CARD DETAIL REPORT';
        Report_print_date_CaptionLbl: Label 'Report print date:';
        PageCaptionLbl: Label 'Page';
}

