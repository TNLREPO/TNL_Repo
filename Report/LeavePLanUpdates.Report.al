report 50086 "Leave PLan Updates"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LeavePLanUpdates.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5200)
        {
            DataItemTableView = WHERE (Blocked = CONST (No));

            trigger OnAfterGetRecord()
            begin
                //LeavePlanLinesRev2
                //LeavePlanLinesRevOld
                // Leaveperiod
                Leaveperiod := 0;
                Leaveperiod := DATE2DMY(PlanDate, 3);

                ////BASLAM
                LeavePlanLinesRevOld.SETCURRENTKEY("Employee No.", "Leave Period", "Entry Type");
                LeavePlanLinesRevOld.SETRANGE("Employee No.", Employee."No.");
                LeavePlanLinesRevOld.SETRANGE("Entry Type", LeavePlanLinesRevOld."Entry Type"::PLAN);
                IF LeavePlanLinesRevOld.FINDLAST THEN BEGIN
                    LeaveNo := '';
                    HumanResSetup.GET();
                    HumanResSetup.TESTFIELD("Leave Plan No");
                    LeaveNo := NoSeriesMgt.GetNextNo(HumanResSetup."Leave Plan No", 0D, TRUE);


                    LeavePlanLinesRev2.INIT;
                    LeavePlanLinesRev2.VALIDATE("Employee No.", Employee."No.");
                    LeavePlanLinesRev2.VALIDATE("Leave Period", Leaveperiod);
                    LeavePlanLinesRev2.VALIDATE("Entry Type", LeavePlanLinesRev2."Entry Type"::PLAN);
                    LeavePlanLinesRev2."Serial No" := LeaveNo;
                    LeavePlanLinesRev2."Annual Duration" := Employee."Annual Leave Duration";
                    LeavePlanLinesRev2."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
                    LeavePlanLinesRev2."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
                    LeavePlanLinesRev2."Amount Due" := LeavePlanLinesRevOld."Amount Due";
                    LeavePlanLinesRev2.Registered := TRUE;
                    LeavePlanLinesRev2.INSERT;
                END;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(PlanDate; PlanDate)
                {
                    Caption = 'Select Start Period';
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
        LeavePlanLinesRev2: Record 50075;
        LeavePlanLinesRevOld: Record 50075;
        Leaveperiod: Integer;
        PlanDate: Date;
        LeaveNo: Code[25];
        HumanResSetup: Record "5218";
        NoSeriesMgt: Codeunit 396;
}

