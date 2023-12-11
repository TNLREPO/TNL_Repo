report 50331 "Print Diagonistic Questionaire"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PrintDiagonisticQuestionaire.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50120)
        {
            RequestFilterFields = "Diagnostic Questionnier No.";
            column(DiagnosticQuestionnierNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Diagnostic Questionnier No.")
            {
            }
            column(Date_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Date)
            {
            }
            column(SAName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."SA Name")
            {
            }
            column(ReceptionDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Reception Date")
            {
            }
            column(ReceptionTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Reception Time")
            {
            }
            column(ReceptionType_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Reception Type")
            {
            }
            column(CourtesyVehicle_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Courtesy Vehicle")
            {
            }
            column(DeliveryType_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Delivery Type")
            {
            }
            column(DeliveryDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Delivery Date")
            {
            }
            column(DeliveryTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Delivery Time")
            {
            }
            column(ConfirmationDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmation Date")
            {
            }
            column(CustomerOrderNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Customer Order No.")
            {
            }
            column(VehicleDrivenBy_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Vehicle Driven By")
            {
            }
            column(OdometerReadingatAppointmen_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Odometer Reading at Appointmen")
            {
            }
            column(CustomerNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Customer No.")
            {
            }
            column(CustomerName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Customer Name")
            {
            }
            column(Address_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Address)
            {
            }
            column(Telephone_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Telephone)
            {
            }
            column(VehicleRegistrationNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Vehicle Registration No.")
            {
            }
            column(RegisteredDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Registered Date")
            {
            }
            column(ModelName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Model Name")
            {
            }
            column(ModelCode_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Model Code")
            {
            }
            column(EngineNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Engine No.")
            {
            }
            column(ConfirmationTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmation Time")
            {
            }
            column(Phenomena_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Phenomena)
            {
            }
            column(FromWhen_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."From When")
            {
            }
            column(StateifOther_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."State if Other")
            {
            }
            column(Frequency_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Frequency)
            {
            }
            column(StateOtherFrequency_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."State Other Frequency")
            {
            }
            column(Place_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Place)
            {
            }
            column(WarningLamp_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Warning Lamp")
            {
            }
            column(Starting_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Starting)
            {
            }
            column(IfMoving_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."If Moving")
            {
            }
            column(Stopped_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Stopped)
            {
            }
            column(Speedmeter_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Speedmeter)
            {
            }
            column(Tachometer_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Tachometer)
            {
            }
            column(Advancing_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Advancing)
            {
            }
            column(ShiftingGear_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Shifting Gear")
            {
            }
            column(BackingUp_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Backing Up")
            {
            }
            column(Bracking_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Bracking)
            {
            }
            column(NumberofOccupants_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Number of Occupants")
            {
            }
            column(VehicleLoad_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Vehicle Load")
            {
            }
            column(TowingLoad_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Towing Load")
            {
            }
            column(Surface_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Surface)
            {
            }
            column(IfOtherSurfaceState_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."If Other Surface (State)")
            {
            }
            column(Weather_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Weather)
            {
            }
            column(ACTempSetting_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."A/C Temp Setting")
            {
            }
            column(FanSpeedSetting_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Fan Speed Setting")
            {
            }
            column(RecirPosition_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Recir. Position")
            {
            }
            column(AirFlowMode_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Air Flow Mode")
            {
            }
            column(ConditionStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Condition Staff Name")
            {
            }
            column(ConditionDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Condition Date")
            {
            }
            column(ConditionTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Condition Time")
            {
            }
            column(ContactTelephone_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Contact Telephone")
            {
            }
            column(ContactAvailableTimeto_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Contact Available Time to")
            {
            }
            column(ContactStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Contact Staff Name")
            {
            }
            column(ContactDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Contact Date")
            {
            }
            column(ContactTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Contact Time")
            {
            }
            column(ConfirmedwithCustomer_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmed with Customer")
            {
            }
            column(AdditionalJobConfirmation_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Additional Job Confirmation")
            {
            }
            column(Valuable_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Valuable)
            {
            }
            column(SeatCover_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Seat Cover")
            {
            }
            column(FloorMat_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Floor Mat")
            {
            }
            column(WalkArroundCheck_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Walk-Arround Check")
            {
            }
            column(InspectionDetaileResult_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Inspection Detaile/Result")
            {
            }
            column(KeyAssinedNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Key Assined No.")
            {
            }
            column(StallNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Stall No.")
            {
            }
            column(Reappearance_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Reappearance)
            {
            }
            column(ResultDiscoveredPrediction_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Result Discovered/Prediction")
            {
            }
            column(MainCause1_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Main Cause1")
            {
            }
            column(MainCause2_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Main Cause2")
            {
            }
            column(MainCause3_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Main Cause3")
            {
            }
            column(MainCause4_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Main Cause4")
            {
            }
            column(StartDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Start Date")
            {
            }
            column(StartTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Start Time")
            {
            }
            column(EndDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."End Date")
            {
            }
            column(EndTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."End Time")
            {
            }
            column(TimeRequired_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Time Required")
            {
            }
            column(DTR_DiagnosticQuestionnaire; "Diagnostic Questionnaire".DTR)
            {
            }
            column(InstructionStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Instruction Staff Name")
            {
            }
            column(ConfirmedBy_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmed By")
            {
            }
            column(ConfirmedDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmed Date")
            {
            }
            column(ConfirmedTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmed Time")
            {
            }
            column(Warranty_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Warranty)
            {
            }
            column(Destination_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Destination)
            {
            }
            column(InCharge_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."In Charge")
            {
            }
            column(ReceivingStatus_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Receiving Status")
            {
            }
            column(ReceivingStatusDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Receiving Status Date")
            {
            }
            column(ReceivingStatusTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Receiving Status Time")
            {
            }
            column(VehicleStatus_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Vehicle Status")
            {
            }
            column(Requests_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Requests)
            {
            }
            column(IfRequestsisOtherPlsState_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."If Requests is Other Pls State")
            {
            }
            column(SupportRequestDate_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Support Request Date")
            {
            }
            column(SupportRequestTime_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Support Request Time")
            {
            }
            column(SupportStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Support Staff Name")
            {
            }
            column(IfShiftPosition_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."If Shift Position")
            {
            }
            column(OutsideTempt_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Outside Tempt.")
            {
            }
            column(OdometerReadingatReception_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Odometer Reading at Reception")
            {
            }
            column(JobInstruction_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Job Instruction")
            {
            }
            column(DTC1_DiagnosticQuestionnaire; "Diagnostic Questionnaire".DTC1)
            {
            }
            column(DTC2_DiagnosticQuestionnaire; "Diagnostic Questionnaire".DTC2)
            {
            }
            column(DTC3_DiagnosticQuestionnaire; "Diagnostic Questionnaire".DTC3)
            {
            }
            column(DTC4_DiagnosticQuestionnaire; "Diagnostic Questionnaire".DTC4)
            {
            }
            column(Status1_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Status1)
            {
            }
            column(Status2_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Status2)
            {
            }
            column(Status3_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Status3)
            {
            }
            column(Status4_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Status4)
            {
            }
            column(FreezeFrameDataSaved1_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Freeze Frame Data Saved1")
            {
            }
            column(FreezeFrameDataSaved2_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Freeze Frame Data Saved2")
            {
            }
            column(FreezeFrameDataSaved3_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Freeze Frame Data Saved3")
            {
            }
            column(FreezeFrameDataSaved4_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Freeze Frame Data Saved4")
            {
            }
            column(SupportRequestStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Support Request Staff Name")
            {
            }
            column(ConfirmationStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Confirmation Staff Name")
            {
            }
            column(Condition_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Condition)
            {
            }
            column(Shift_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Shift)
            {
            }
            column(JobInstructionStaffName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Job Instruction Staff Name")
            {
            }
            column(NoSeries_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."No. Series")
            {
            }
            column(IfOtherDrivenby_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."If Other, Driven by")
            {
            }
            column(ContactAvailableTimefrom_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Contact Available Time from")
            {
            }
            column(MultipleFlashing_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Multiple Flashing")
            {
            }
            column(Condition1_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Condition1)
            {
            }
            column(Condition2_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Condition2)
            {
            }
            column(WalkAroundCheck_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Walk-Around Check")
            {
            }
            column(Result_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Result)
            {
            }
            column(IfPrediction_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."If Prediction")
            {
            }
            column(DriversName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Driver's Name")
            {
            }
            column(ModelYear_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Model Year")
            {
            }
            column(ChassisNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Chassis No.")
            {
            }
            column(SACode_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."SA Code")
            {
            }
            column(COFNo_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."COF No.")
            {
            }
            column(VehicleDrivenbyName_DiagnosticQuestionnaire; "Diagnostic Questionnaire"."Vehicle Driven by Name")
            {
            }
            column(Traffic_DiagnosticQuestionnaire; "Diagnostic Questionnaire".Traffic)
            {
            }
            column(Mode_Year; "Diagnostic Questionnaire"."Model Year")
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
}

