report 50053 "Workshop/Technician Hours"
{
    DefaultLayout = RDLC;
    RDLCLayout = './WorkshopTechnicianHours.rdlc';

    dataset
    {
        dataitem(DataItem1000000001; Table70038)
        {
            column(EntryNo_ClockingX; ClockingX."Entry No.")
            {
            }
            column(JobNo_ClockingX; ClockingX."Job No.")
            {
            }
            column(Start_ClockingX; ClockingX."Start.")
            {
            }
            column(GLAccTableCaption; TABLECAPTION + ': ' + GLFilter)
            {
            }
            column(GLFilter; GLFilter)
            {
            }
            column(End_ClockingX; ClockingX."End.")
            {
            }
            column(StartDate_ClockingX; ClockingX."Start Date")
            {
            }
            column(EndDate_ClockingX; ClockingX."End Date")
            {
            }
            column(UserID_ClockingX; ClockingX."User ID")
            {
            }
            column(ClockedTime_ClockingX; ClockingX."Clocked Time")
            {
            }
            column(TechnicianName_ClockingX; ClockingX."Technician Name")
            {
            }
            column(Technician_ClockingX; ClockingX.Technician)
            {
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

    trigger OnPreReport()
    begin
        GLFilter := ClockingX.GETFILTERS;
    end;

    var
        GLDateFilter: Text[30];
        GLFilter: Text;
        Text000: Label 'Period: %1';
        GLFilter2: Text;
}

