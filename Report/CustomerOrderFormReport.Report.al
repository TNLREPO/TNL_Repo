report 50305 "Customer Order Form Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerOrderFormReport.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50119)
        {
            column(CustomerOrderFormNo_CustomerOrderTable; "Customer Order Table."."Customer Order Form No.")
            {
            }
            column(ReceptionDate_CustomerOrderTable; "Customer Order Table."."Reception Date")
            {
            }
            column(ReceptionTime_CustomerOrderTable; "Customer Order Table."."Reception Time")
            {
            }
            column(ReceptionType_CustomerOrderTable; "Customer Order Table."."Reception Type")
            {
            }
            column(CourtesyVehicle_CustomerOrderTable; "Customer Order Table."."Courtesy Vehicle")
            {
            }
            column(DeliveryType_CustomerOrderTable; "Customer Order Table."."Delivery Type")
            {
            }
            column(CustomerNo_CustomerOrderTable; "Customer Order Table."."Customer No.")
            {
            }
            column(CustomerName_CustomerOrderTable; "Customer Order Table."."Customer Name")
            {
            }
            column(Address_CustomerOrderTable; "Customer Order Table.".Address)
            {
            }
            column(CustomerOrderFormDate_CustomerOrderTable; "Customer Order Table."."Customer Order Form Date")
            {
            }
            column(ConfirmationDate_CustomerOrderTable; "Customer Order Table."."Confirmation Date")
            {
            }
            column(ConfirmationTime_CustomerOrderTable; "Customer Order Table."."Confirmation Time")
            {
            }
            column(ConfirmationStaffName_CustomerOrderTable; "Customer Order Table."."Confirmation Staff Name")
            {
            }
            column(PartsOrderedDate_CustomerOrderTable; "Customer Order Table."."Parts Ordered Date")
            {
            }
            column(PartsOrderedTime_CustomerOrderTable; "Customer Order Table."."Parts Ordered Time")
            {
            }
            column(PartsOrderedStaffName_CustomerOrderTable; "Customer Order Table."."Parts Ordered Staff Name")
            {
            }
            column(PartsArrivedDate_CustomerOrderTable; "Customer Order Table."."Parts Arrived Date")
            {
            }
            column(PartsArrivedTime_CustomerOrderTable; "Customer Order Table."."Parts Arrived Time")
            {
            }
            column(PartsArrivedStaffName_CustomerOrderTable; "Customer Order Table."."Parts Arrived Staff Name")
            {
            }
            column(ModelNo_CustomerOrderTable; "Customer Order Table."."Model No")
            {
            }
            column(ModelName_CustomerOrderTable; "Customer Order Table."."Model Name")
            {
            }
            column(VehicleRegistrationNo_CustomerOrderTable; "Customer Order Table."."Vehicle Registration No.")
            {
            }
            column(ContactTelephoneNo_CustomerOrderTable; "Customer Order Table."."Contact Telephone No.")
            {
            }
            column(ContactTelephoneNoType_CustomerOrderTable; "Customer Order Table."."Contact Telephone No. Type")
            {
            }
            column(AvailableTimeFrom_CustomerOrderTable; "Customer Order Table."."Available Time From")
            {
            }
            column(AvailableTimeTo_CustomerOrderTable; "Customer Order Table."."Available Time To")
            {
            }
            column(VehicleDrivenBy_CustomerOrderTable; "Customer Order Table."."Vehicle Driven By")
            {
            }
            column(VehicleDrivenByType_CustomerOrderTable; "Customer Order Table."."Vehicle Driven By Type")
            {
            }
            column(IfOtherType_CustomerOrderTable; "Customer Order Table."."If Other Type")
            {
            }
            column(OdometerReadingAtAppointmen_CustomerOrderTable; "Customer Order Table."."Odometer Reading At Appointmen")
            {
            }
            column(VehicleRegisteredDate_CustomerOrderTable; "Customer Order Table."."Vehicle Registered Date")
            {
            }
            column(FrameNoVIN_CustomerOrderTable; "Customer Order Table."."Frame No./VIN")
            {
            }
            column(EngineNo_CustomerOrderTable; "Customer Order Table."."(Engine No)")
            {
            }
            column(Email_CustomerOrderTable; "Customer Order Table."."E-mail")
            {
            }
            column(CurrentServiceDueDate_CustomerOrderTable; "Customer Order Table."."Current Service Due Date")
            {
            }
            column(CurrentServiceKilometre_CustomerOrderTable; "Customer Order Table."."Current Service Kilometre")
            {
            }
            column(JobType_CustomerOrderTable; "Customer Order Table."."Job Type")
            {
            }
            column(OdometerReading_CustomerOrderTable; "Customer Order Table."."Odometer Reading")
            {
            }
            column(ServiceHistory_CustomerOrderTable; "Customer Order Table."."Service History")
            {
            }
            column(SSCSCInformation_CustomerOrderTable; "Customer Order Table."."SSC/SC Information")
            {
            }
            column(CustomersRequests_CustomerOrderTable; "Customer Order Table."."Customer's Requests")
            {
            }
            column(Maintenance_CustomerOrderTable; "Customer Order Table.".Maintenance)
            {
            }
            column(GeneralRepair_CustomerOrderTable; "Customer Order Table."."General Repair")
            {
            }
            column(Internal_CustomerOrderTable; "Customer Order Table.".Internal)
            {
            }
            column(Warranty_CustomerOrderTable; "Customer Order Table.".Warranty)
            {
            }
            column(CustomerWaiting_CustomerOrderTable; "Customer Order Table."."Customer Waiting")
            {
            }
            column(RepeatRepair_CustomerOrderTable; "Customer Order Table."."Repeat Repair")
            {
            }
            column(JobDetails_CustomerOrderTable; "Customer Order Table."."Job Details")
            {
            }
            column(AppointmentDate_CustomerOrderTable; "Customer Order Table."."Appointment Date")
            {
            }
            column(AppointmentTime_CustomerOrderTable; "Customer Order Table."."Appointment Time")
            {
            }
            column(AppointmentStaffName_CustomerOrderTable; "Customer Order Table."."Appointment Staff Name")
            {
            }
            column(EstimatedJobTime_CustomerOrderTable; "Customer Order Table."."Estimated Job Time")
            {
            }
            column(TimeChanged_CustomerOrderTable; "Customer Order Table."."Time Changed")
            {
            }
            column(ModelYear_CustomerOrderTable; "Customer Order Table."."Model Year")
            {
            }
            column(CostChanged_CustomerOrderTable; "Customer Order Table."."Cost Changed")
            {
            }
            column(AppointmentOffering1Date_CustomerOrderTable; "Customer Order Table."."Appointment Offering 1 Date")
            {
            }
            column(AppointmentOffering1Time_CustomerOrderTable; "Customer Order Table."."Appointment Offering 1 Time")
            {
            }
            column(AppointmentOffering2Date_CustomerOrderTable; "Customer Order Table."."Appointment Offering 2 Date")
            {
            }
            column(AppointmentOffering2Time_CustomerOrderTable; "Customer Order Table."."Appointment Offering 2 Time")
            {
            }
            column(Quantity1_CustomerOrderTable; "Customer Order Table.".Quantity1)
            {
            }
            column(Quantity2_CustomerOrderTable; "Customer Order Table.".Quantity2)
            {
            }
            column(Stock1_CustomerOrderTable; "Customer Order Table.".Stock1)
            {
            }
            column(Stock2_CustomerOrderTable; "Customer Order Table.".Stock2)
            {
            }
            column(ETA1_CustomerOrderTable; "Customer Order Table.".ETA1)
            {
            }
            column(ETA2_CustomerOrderTable; "Customer Order Table.".ETA2)
            {
            }
            column(WalkAroundCheck_CustomerOrderTable; "Customer Order Table."."Walk Around Check")
            {
            }
            column(AdditionalJobConfirmation_CustomerOrderTable; "Customer Order Table."."Additional Job Confirmation")
            {
            }
            column(CarWash_CustomerOrderTable; "Customer Order Table."."Car Wash")
            {
            }
            column(Valuables_CustomerOrderTable; "Customer Order Table.".Valuables)
            {
            }
            column(PresentEstimatewExplanation_CustomerOrderTable; "Customer Order Table."."Present Estimate w/Explanation")
            {
            }
            column(Memo_CustomerOrderTable; "Customer Order Table.".Memo)
            {
            }
            column(CourtesyItems_CustomerOrderTable; "Customer Order Table."."Courtesy Items")
            {
            }
            column(PaymentMethod_CustomerOrderTable; "Customer Order Table."."Payment Method")
            {
            }
            column(IfOtherMethod_CustomerOrderTable; "Customer Order Table."."If Other Method")
            {
            }
            column(OdometerReadingAtReception_CustomerOrderTable; "Customer Order Table."."Odometer Reading At Reception")
            {
            }
            column(WalkAroundReceptionDate_CustomerOrderTable; "Customer Order Table."."Walk Around Reception Date")
            {
            }
            column(WalkAroundReceptionTime_CustomerOrderTable; "Customer Order Table."."Walk Around Reception Time")
            {
            }
            column(ReceptionStaffName_CustomerOrderTable; "Customer Order Table."."Reception Staff Name")
            {
            }
            column(CustomerSignature_CustomerOrderTable; "Customer Order Table."."Customer Signature")
            {
            }
            column(ExpectedDeliveryDate_CustomerOrderTable; "Customer Order Table."."Expected Delivery Date")
            {
            }
            column(ExpectedDeliveryTime_CustomerOrderTable; "Customer Order Table."."Expected Delivery Time")
            {
            }
            column(IfOtherCustomersRequests_CustomerOrderTable; "Customer Order Table."."If Other Customer's Requests")
            {
            }
            column(Estimation_CustomerOrderTable; "Customer Order Table.".Estimation)
            {
            }
            column(ReplacePartsKeep_CustomerOrderTable; "Customer Order Table."."Replace Parts Keep")
            {
            }
            column(NoSeries_CustomerOrderTable; "Customer Order Table."."No. Series")
            {
            }
            column(Maintenance2_CustomerOrderTable; "Customer Order Table.".Maintenance2)
            {
            }
            column(CustomerName2_CustomerOrderTable; "Customer Order Table."."Customer Name2")
            {
            }
            column(CustomerAddress_CustomerOrderTable; "Customer Order Table."."Customer Address")
            {
            }
            column(CustomerAddress2_CustomerOrderTable; "Customer Order Table."."Customer Address2")
            {
            }
            column(CustomerTelephoneNo_CustomerOrderTable; "Customer Order Table."."Customer Telephone No.")
            {
            }
            column(ModelName2_CustomerOrderTable; "Customer Order Table."."Model Name2")
            {
            }
            column(VehicleRegistrationNo2_CustomerOrderTable; "Customer Order Table."."Vehicle Registration No.2")
            {
            }
            column(UpdateCustomerRecord_CustomerOrderTable; "Customer Order Table."."Update Customer Record")
            {
            }
            column(SeatCover_CustomerOrderTable; "Customer Order Table."."Seat Cover")
            {
            }
            column(FloorMat_CustomerOrderTable; "Customer Order Table."."Floor Mat")
            {
            }
            column(JobNo1_CustomerOrderTable; "Customer Order Table."."Job No.1")
            {
            }
            column(JobNo2_CustomerOrderTable; "Customer Order Table."."Job No.2")
            {
            }
            column(JobNo3_CustomerOrderTable; "Customer Order Table."."Job No.3")
            {
            }
            column(Odometer1_CustomerOrderTable; "Customer Order Table.".Odometer1)
            {
            }
            column(Odometer2_CustomerOrderTable; "Customer Order Table.".Odometer2)
            {
            }
            column(Odometer3_CustomerOrderTable; "Customer Order Table.".Odometer3)
            {
            }
            column(Date1_CustomerOrderTable; "Customer Order Table.".Date1)
            {
            }
            column(Date2_CustomerOrderTable; "Customer Order Table.".Date2)
            {
            }
            column(Date3_CustomerOrderTable; "Customer Order Table.".Date3)
            {
            }
            column(ItemNo_CustomerOrderTable; "Customer Order Table."."Item No.")
            {
            }
            column(Description_CustomerOrderTable; "Customer Order Table.".Description)
            {
            }
            column(Quantity_CustomerOrderTable; "Customer Order Table.".Quantity)
            {
            }
            column(Stock_CustomerOrderTable; "Customer Order Table.".Stock)
            {
            }
            column(EDA_CustomerOrderTable; "Customer Order Table.".EDA)
            {
            }
            column(Cheque_CustomerOrderTable; "Customer Order Table.".Cheque)
            {
            }
            column(Cash_CustomerOrderTable; "Customer Order Table.".Cash)
            {
            }
            column(JobDescription1_CustomerOrderTable; "Customer Order Table."."Job Description1")
            {
            }
            column(JobDescription2_CustomerOrderTable; "Customer Order Table."."Job Description2")
            {
            }
            column(JobDescription3_CustomerOrderTable; "Customer Order Table."."Job Description3")
            {
            }
            column(Maintenance1_CustomerOrderTable; "Customer Order Table.".Maintenance1)
            {
            }
            column(JobTypeDescription_CustomerOrderTable; "Customer Order Table."."Job Type Description")
            {
            }
            column(ContactHome_CustomerOrderTable; "Customer Order Table."."Contact Home")
            {
            }
            column(ContactBusiness_CustomerOrderTable; "Customer Order Table."."Contact Business")
            {
            }
            column(ContactMobile_CustomerOrderTable; "Customer Order Table."."Contact Mobile")
            {
            }
            column(Home_CustomerOrderTable; "Customer Order Table.".Home)
            {
            }
            column(Business_CustomerOrderTable; "Customer Order Table.".Business)
            {
            }
            column(Mobile_CustomerOrderTable; "Customer Order Table.".Mobile)
            {
            }
            column(EstimateNo_CustomerOrderTable; "Customer Order Table."."Estimate No.")
            {
            }
            column(TotalEstimation_CustomerOrderTable; "Customer Order Table."."Total Estimation")
            {
            }
            column(LocationCode_CustomerOrderTable; "Customer Order Table."."Location Code")
            {
            }
            column(FeedingLocation_CustomerOrderTable; "Customer Order Table."."Feeding Location")
            {
            }
            column(EstimateFactor_CustomerOrderTable; "Customer Order Table."."Estimate Factor")
            {
            }
            column(AddJobsEstimation_CustomerOrderTable; "Customer Order Table."."Add. Jobs Estimation")
            {
            }
            column(Total_CustomerOrderTable; "Customer Order Table.".Total)
            {
            }
            column(ServiceLocation_CustomerOrderTable; "Customer Order Table."."Service Location")
            {
            }
            column(CustomerType_CustomerOrderTable; "Customer Order Table."."Customer Type")
            {
            }
            column(Other_CustomerOrderTable; "Customer Order Table.".Other)
            {
            }
            column(IfOtherDeliveryType_CustomerOrderTable; "Customer Order Table."."If Other Delivery Type")
            {
            }
            column(JobInstructionNo_CustomerOrderTable; "Customer Order Table."."Job Instruction No.")
            {
            }
            column(JobInstructionDate_CustomerOrderTable; "Customer Order Table."."Job Instruction Date")
            {
            }
            column(EstimatedCompletionDate_CustomerOrderTable; "Customer Order Table."."Estimated Completion Date")
            {
            }
            column(EstimatedCompletionTime_CustomerOrderTable; "Customer Order Table."."Estimated Completion Time")
            {
            }
            column(KeyAssignedNo_CustomerOrderTable; "Customer Order Table."."Key Assigned No.")
            {
            }
            column(StallNo_CustomerOrderTable; "Customer Order Table."."Stall No.")
            {
            }
            column(JobStartDate_CustomerOrderTable; "Customer Order Table."."Job Start Date")
            {
            }
            column(JobStartTime_CustomerOrderTable; "Customer Order Table."."Job Start Time")
            {
            }
            column(CompletionChangedDate_CustomerOrderTable; "Customer Order Table."."Completion Changed Date")
            {
            }
            column(CompletionChangedTime_CustomerOrderTable; "Customer Order Table."."Completion Changed Time")
            {
            }
            column(DeliveryChangedDate_CustomerOrderTable; "Customer Order Table."."Delivery Changed Date")
            {
            }
            column(DeliveryChangedTime_CustomerOrderTable; "Customer Order Table."."Delivery Changed Time")
            {
            }
            column(CCDate_CustomerOrderTable; "Customer Order Table."."CC Date")
            {
            }
            column(CCTime_CustomerOrderTable; "Customer Order Table."."CC Time")
            {
            }
            column(CCStaffName_CustomerOrderTable; "Customer Order Table."."CC Staff Name")
            {
            }
            column(JCDate_CustomerOrderTable; "Customer Order Table."."JC Date")
            {
            }
            column(JCTime_CustomerOrderTable; "Customer Order Table."."JC Time")
            {
            }
            column(ActualHoursClocked_CustomerOrderTable; "Customer Order Table."."Actual Hours Clocked")
            {
            }
            column(OtherFindingsAdvice_CustomerOrderTable; "Customer Order Table."."Other Findings/Advice")
            {
            }
            column(QCStaff_CustomerOrderTable; "Customer Order Table."."QC Staff")
            {
            }
            column(PredCStaffName_CustomerOrderTable; "Customer Order Table."."Pre-d C Staff Name")
            {
            }
            column(PredCConfirmedby_CustomerOrderTable; "Customer Order Table."."Pre-d C Confirmed by")
            {
            }
            column(Cleanliness_CustomerOrderTable; "Customer Order Table.".Cleanliness)
            {
            }
            column(CleanlinessType_CustomerOrderTable; "Customer Order Table."."Cleanliness Type")
            {
            }
            column(Cleanliness2_CustomerOrderTable; "Customer Order Table.".Cleanliness2)
            {
            }
            column(CourtesyItemsRemoval_CustomerOrderTable; "Customer Order Table."."Courtesy Items Removal")
            {
            }
            column(CourtesyItemsRemoval2_CustomerOrderTable; "Customer Order Table."."Courtesy Items Removal2")
            {
            }
            column(OuterMinorPSeatP_CustomerOrderTable; "Customer Order Table."."Outer Minor P / Seat P")
            {
            }
            column(OuterMinorPSeatP2_CustomerOrderTable; "Customer Order Table."."Outer Minor P / Seat P2")
            {
            }
            column(ClockAdjRadioSetting_CustomerOrderTable; "Customer Order Table."."Clock Adj / Radio Setting")
            {
            }
            column(ClockAdjRadioSetting2_CustomerOrderTable; "Customer Order Table."."Clock Adj / Radio Setting2")
            {
            }
            column(JobCNDate_CustomerOrderTable; "Customer Order Table."."Job CN Date")
            {
            }
            column(JobCNTime_CustomerOrderTable; "Customer Order Table."."Job CN Time")
            {
            }
            column(JobCNStaffName_CustomerOrderTable; "Customer Order Table."."Job CN Staff Name")
            {
            }
            column(JobDetailsExplanation_CustomerOrderTable; "Customer Order Table."."Job Details Explanation")
            {
            }
            column(FeeExplanation_CustomerOrderTable; "Customer Order Table."."Fee Explanation")
            {
            }
            column(ResultsConfirmationwCust_CustomerOrderTable; "Customer Order Table."."Results Confirmation w / Cust.")
            {
            }
            column(PSFUPlan_CustomerOrderTable; "Customer Order Table."."P.S.F.U. (Plan)")
            {
            }
            column(Levelup_CustomerOrderTable; "Customer Order Table."."Level-up")
            {
            }
            column(JREStaffCode_CustomerOrderTable; "Customer Order Table."."JRE Staff Code")
            {
            }
            column(ActualDeliveryDate_CustomerOrderTable; "Customer Order Table."."Actual Delivery Date")
            {
            }
            column(ActualDeliveryTime_CustomerOrderTable; "Customer Order Table."."Actual Delivery Time")
            {
            }
            column(DeliveryCustomer_CustomerOrderTable; "Customer Order Table."."Delivery Customer")
            {
            }
            column(IfOtherCustomer_CustomerOrderTable; "Customer Order Table."."If Other Customer")
            {
            }
            column(DeliveryStaffName_CustomerOrderTable; "Customer Order Table."."Delivery Staff Name")
            {
            }
            column(PSFUStaffName_CustomerOrderTable; "Customer Order Table."."P.S.F.U. Staff Name")
            {
            }
            column(PSFUConfirmedby_CustomerOrderTable; "Customer Order Table."."P.S.F.U. Confirmed by")
            {
            }
            column(JobType2_CustomerOrderTable; "Customer Order Table."."Job Type2")
            {
            }
            column(PartsDesciption_CustomerOrderTable; "Customer Order Table."."Parts Desciption")
            {
            }
            column(JobCategory_CustomerOrderTable; "Customer Order Table."."Job Category")
            {
            }
            column(IfOtherJobCategory_CustomerOrderTable; "Customer Order Table."."If Other Job Category")
            {
            }
            column(Fixed_CustomerOrderTable; "Customer Order Table.".Fixed)
            {
            }
            column(NoFixed_CustomerOrderTable; "Customer Order Table."."No Fixed")
            {
            }
            column(PSFUPlanDate_CustomerOrderTable; "Customer Order Table."."P.S.F.U. (Plan) Date")
            {
            }
            column(PSFUPlanTime_CustomerOrderTable; "Customer Order Table."."P.S.F.U. (Plan) Time")
            {
            }
            column(PSFUOther_CustomerOrderTable; "Customer Order Table."."P.S.F.U Other")
            {
            }
            column(PSFUActualDate_CustomerOrderTable; "Customer Order Table."."P.S.F.U. (Actual) Date")
            {
            }
            column(PSFUActualTime_CustomerOrderTable; "Customer Order Table."."P.S.F.U. (Actual) Time")
            {
            }
            column(CTHome_CustomerOrderTable; "Customer Order Table."."CT Home")
            {
            }
            column(CTMobile_CustomerOrderTable; "Customer Order Table."."CT Mobile")
            {
            }
            column(CTBusiness_CustomerOrderTable; "Customer Order Table."."CT Business")
            {
            }
            column(ContactTelephone_CustomerOrderTable; "Customer Order Table."."Contact Telephone")
            {
            }
            column(JIEmail_CustomerOrderTable; "Customer Order Table."."JI E-mail")
            {
            }
            column(JIOther_CustomerOrderTable; "Customer Order Table."."JI Other")
            {
            }
            column(JIOtherII_CustomerOrderTable; "Customer Order Table."."JI Other II")
            {
            }
            column(JIEMail2_CustomerOrderTable; "Customer Order Table."."JI EMail2")
            {
            }
            column(ServiceType_CustomerOrderTable; "Customer Order Table."."Service Type")
            {
            }
            column(OtherPaymentType_CustomerOrderTable; "Customer Order Table."."Other Payment Type")
            {
            }
            column(ReceptionDate2_CustomerOrderTable; "Customer Order Table."."Reception Date2")
            {
            }
            column(ReceptionTime2_CustomerOrderTable; "Customer Order Table."."Reception Time2")
            {
            }
            column(CustomerIntentionJobDetails_CustomerOrderTable; "Customer Order Table."."Customer Intention/Job Details")
            {
            }
            column(CustomerandVehicleInfo_CustomerOrderTable; "Customer Order Table."."Customer and Vehicle Info")
            {
            }
            column(Score_CustomerOrderTable; "Customer Order Table.".Score)
            {
            }
            column(AdjustVehReceptionDateTime_CustomerOrderTable; "Customer Order Table."."Adjust Veh Reception DateTime")
            {
            }
            column(ConfirmContactInfoDriver_CustomerOrderTable; "Customer Order Table."."Confirm Contact Info/Driver")
            {
            }
            column(EnterRecptnAppntmtDateTime_CustomerOrderTable; "Customer Order Table."."Enter Recptn Appntmt DateTime")
            {
            }
            column(PrintCustomerandVehInfo_CustomerOrderTable; "Customer Order Table."."Print Customer and Veh. Info")
            {
            }
            column(PrintEstimateI_CustomerOrderTable; "Customer Order Table."."Print Estimate I")
            {
            }
            column(PartsReqCompletionDateTime_CustomerOrderTable; "Customer Order Table."."Parts Req./Completion DateTime")
            {
            }
            column(RecptnConfirmPaymentMethod_CustomerOrderTable; "Customer Order Table."."Recptn Confirm/Payment Method")
            {
            }
            column(PartsOrderingCompletionDate_CustomerOrderTable; "Customer Order Table."."Parts Ordering/Completion Date")
            {
            }
            column(PreparationStatusPartsReq_CustomerOrderTable; "Customer Order Table."."Preparation Status Parts Req.")
            {
            }
            column(ConfirmandEnterOdometer_CustomerOrderTable; "Customer Order Table."."Confirm and Enter Odometer")
            {
            }
            column(ConductEntrerWalkaroundChec_CustomerOrderTable; "Customer Order Table."."Conduct/Entrer Walkaround Chec")
            {
            }
            column(AddJobValuabesCourtesyIt_CustomerOrderTable; "Customer Order Table."."Add Job, Valuabes/ Courtesy It")
            {
            }
            column(PresentEstimateIandXplain_CustomerOrderTable; "Customer Order Table."."Present Estimate I and Xplain")
            {
            }
            column(EnterVehDeliveryDateTime_CustomerOrderTable; "Customer Order Table."."Enter Veh Delivery DateTime")
            {
            }
            column(ReconfirmPaymentMethod_CustomerOrderTable; "Customer Order Table."."Reconfirm Payment Method")
            {
            }
            column(ConfirmifCarwashisneeded_CustomerOrderTable; "Customer Order Table."."Confirm if Car wash is needed")
            {
            }
            column(NecessityofreturninReplPar_CustomerOrderTable; "Customer Order Table."."Necessity of returnin Repl Par")
            {
            }
            column(RecptnDetlCompletioDateTime_CustomerOrderTable; "Customer Order Table."."Recptn Detl/Completio DateTime")
            {
            }
            column(ObtainCustomerSignature_CustomerOrderTable; "Customer Order Table."."Obtain Customer Signature")
            {
            }
            column(TechnicianName_CustomerOrderTable; "Customer Order Table."."Technician Name")
            {
            }
            column(Delivered_CustomerOrderTable; "Customer Order Table.".Delivered)
            {
            }
            column(ServiceAdvisor_CustomerOrderTable; "Customer Order Table."."Service Advisor")
            {
            }
            column(CreateServiceOrder_CustomerOrderTable; "Customer Order Table."."Create Service Order")
            {
            }
            column(ServiceOrderNo_CustomerOrderTable; "Customer Order Table."."Service Order No.")
            {
            }
            column(PostServiceInvoice_CustomerOrderTable; "Customer Order Table."."Post Service Invoice")
            {
            }
            column(Teams_CustomerOrderTable; "Customer Order Table.".Teams)
            {
            }
            column(Status_CustomerOrderTable; "Customer Order Table.".Status)
            {
            }
            column(JobOpened_CustomerOrderTable; "Customer Order Table."."Job Opened")
            {
            }
            column(ServiceAdvisorsName_CustomerOrderTable; "Customer Order Table."."Service Advisor's Name")
            {
            }
            column(Estimate_CustomerOrderTable; "Customer Order Table.".Estimate)
            {
            }
            column(AdditionalJobDetails_CustomerOrderTable; "Customer Order Table."."Additional Job Details")
            {
            }
            column(NextJobType_CustomerOrderTable; "Customer Order Table."."Next Job Type")
            {
            }
            column(NextServiceDate_CustomerOrderTable; "Customer Order Table."."Next Service Date")
            {
            }
            column(Technician_CustomerOrderTable; "Customer Order Table.".Technician)
            {
            }
            column(QualityControlStaffCode_CustomerOrderTable; "Customer Order Table."."Quality Control Staff Code")
            {
            }
            column(JobProgress_CustomerOrderTable; "Customer Order Table."."Job Progress")
            {
            }
            column(JREStaffName_CustomerOrderTable; "Customer Order Table."."JRE Staff Name")
            {
            }
            column(TotalAppointmentTime_CustomerOrderTable; "Customer Order Table."."Total Appointment Time")
            {
            }
            column(TotalRemApptTime_CustomerOrderTable; "Customer Order Table."."Total Rem Appt Time")
            {
            }
            column(TotalWalkinTime_CustomerOrderTable; "Customer Order Table."."Total Walk in Time")
            {
            }
            column(TotalRemWITime_CustomerOrderTable; "Customer Order Table."."Total Rem W/I Time")
            {
            }
            column(CustomerComplaint_CustomerOrderTable; "Customer Order Table."."Customer Complaint")
            {
            }
            column(ServiceDuration_CustomerOrderTable; "Customer Order Table."."Service Duration")
            {
            }
            column(DiagEst_CustomerOrderTable; "Customer Order Table."."Diag/Est")
            {
            }
            column(BP_CustomerOrderTable; "Customer Order Table."."B & P")
            {
            }
            column(PriorityClass_CustomerOrderTable; "Customer Order Table."."Priority Class")
            {
            }
            column(Memo2_CustomerOrderTable; "Customer Order Table.".Memo2)
            {
            }
            column(Rescheduling_CustomerOrderTable; "Customer Order Table.".Rescheduling)
            {
            }
            column(NewCustomer_CustomerOrderTable; "Customer Order Table."."New Customer")
            {
            }
            column(ForDeliveryPreparation_CustomerOrderTable; "Customer Order Table."."For Delivery Preparation")
            {
            }
            column(ForInvoice_CustomerOrderTable; "Customer Order Table."."For Invoice")
            {
            }
            column(ApptConfirmed_CustomerOrderTable; "Customer Order Table."."Appt Confirmed")
            {
            }
            column(ForPartOrder_CustomerOrderTable; "Customer Order Table."."For Part Order")
            {
            }
            column(ForPartArrival_CustomerOrderTable; "Customer Order Table."."For Part Arrival")
            {
            }
            column(ForReception_CustomerOrderTable; "Customer Order Table."."For Reception")
            {
            }
            column(ForProduction_CustomerOrderTable; "Customer Order Table."."For Production")
            {
            }
            column(ForQualityControl_CustomerOrderTable; "Customer Order Table."."For Quality Control")
            {
            }
            column(ForPayment_CustomerOrderTable; "Customer Order Table."."For Payment")
            {
            }
            column(TransfertoTA_CustomerOrderTable; "Customer Order Table."."Transfer to TA")
            {
            }
            column(TACode_CustomerOrderTable; "Customer Order Table."."TA Code")
            {
            }
            column(TAName_CustomerOrderTable; "Customer Order Table."."TA Name")
            {
            }
            column(ShortcutDimension1Code_CustomerOrderTable; "Customer Order Table."."Shortcut Dimension 1 Code")
            {
            }
            column(ShortcutDimension2Code_CustomerOrderTable; "Customer Order Table."."Shortcut Dimension 2 Code")
            {
            }
            column(RequestBatchName_CustomerOrderTable; "Customer Order Table."."Request Batch Name")
            {
            }
            column(PartsArrived_CustomerOrderTable; "Customer Order Table."."Parts Arrived")
            {
            }
            column(ForApptConfirmation_CustomerOrderTable; "Customer Order Table."."For Appt Confirmation")
            {
            }
            column(SSCAvailable_CustomerOrderTable; "Customer Order Table."."SSC Available")
            {
            }
            column(DateDiff_CustomerOrderTable; "Customer Order Table.".DateDiff)
            {
            }
            column(OrderLineUpdated_CustomerOrderTable; "Customer Order Table."."Order Line Updated")
            {
            }
            column(EstReqBatchName_CustomerOrderTable; "Customer Order Table."."Est. Req. Batch Name")
            {
            }
            column(FANo_CustomerOrderTable; "Customer Order Table."."FA No.")
            {
            }
            column(LabourEstimate_CustomerOrderTable; "Customer Order Table."."Labour Estimate")
            {
            }
            column(ItemEstimate_CustomerOrderTable; "Customer Order Table."."Item Estimate")
            {
            }
            column(DateDelivered_CustomerOrderTable; "Customer Order Table."."Date Delivered")
            {
            }
            column(TimeDelivered_CustomerOrderTable; "Customer Order Table."."Time Delivered")
            {
            }
            column(VDS_CustomerOrderTable; "Customer Order Table.".VDS)
            {
            }
            column(VIS_CustomerOrderTable; "Customer Order Table.".VIS)
            {
            }
            column(VMI_CustomerOrderTable; "Customer Order Table.".VMI)
            {
            }
            column(CustomerOrderFormType_CustomerOrderTable; "Customer Order Table."."Customer Order Form Type")
            {
            }
            column(ServiceReqCode_CustomerOrderTable; "Customer Order Table."."Service Req. Code")
            {
            }
            column(VRIEstimateApproved_CustomerOrderTable; "Customer Order Table."."VRI Estimate Approved")
            {
            }
            column(COFOrigin_CustomerOrderTable; "Customer Order Table."."COF Origin")
            {
            }
            column(FuelLevel_CustomerOrderTable; "Customer Order Table."."Fuel Level")
            {
            }
            column(NoVAT_CustomerOrderTable; "Customer Order Table."."No VAT")
            {
            }
            column(GSM_CustomerOrderTable; "Customer Order Table.".GSM)
            {
            }
            column(TelephoneNo_CustomerOrderTable; "Customer Order Table."."Telephone No.")
            {
            }
            column(Address2_CustomerOrderTable; "Customer Order Table.".Address2)
            {
            }
            dataitem(DataItem1000000012; Table50122)
            {
                DataItemLink = Customer Order Form No.=FIELD(Customer Order Form No.);
                column(CustomerOrderFormNo_CustomerOrderLine; "Customer Order Line"."Customer Order Form No.")
                {
                }
                column(No_CustomerOrderLine; "Customer Order Line"."No.")
                {
                }
                column(Description_CustomerOrderLine; "Customer Order Line".Description)
                {
                }
                column(Quantity_CustomerOrderLine; "Customer Order Line".Quantity)
                {
                }
                column(Stock_CustomerOrderLine; "Customer Order Line".Stock)
                {
                }
                column(EDA_CustomerOrderLine; "Customer Order Line".EDA)
                {
                }
                column(LineNo_CustomerOrderLine; "Customer Order Line"."Line No.")
                {
                }
                column(OperationCode_CustomerOrderLine; "Customer Order Line"."Operation Code")
                {
                }
                column(LineType_CustomerOrderLine; "Customer Order Line"."Line Type")
                {
                }
                column(AdditionalJobs_CustomerOrderLine; "Customer Order Line"."Additional Jobs")
                {
                }
                column(UnitPrice_CustomerOrderLine; "Customer Order Line"."Unit Price")
                {
                }
                column(Amount_CustomerOrderLine; "Customer Order Line".Amount)
                {
                }
                column(EstimateFactor_CustomerOrderLine; "Customer Order Line"."Estimate Factor")
                {
                }
                column(LocationCode_CustomerOrderLine; "Customer Order Line"."Location Code")
                {
                }
                column(Variant_CustomerOrderLine; "Customer Order Line".Variant)
                {
                }
                column(AvailableQuantity_CustomerOrderLine; "Customer Order Line"."Available Quantity")
                {
                }
                column(StockStatus_CustomerOrderLine; "Customer Order Line"."Stock Status")
                {
                }
                column(FeedingLocation_CustomerOrderLine; "Customer Order Line"."Feeding Location")
                {
                }
                column(Difference_CustomerOrderLine; "Customer Order Line".Difference)
                {
                }
                column(JobInstructionNo_CustomerOrderLine; "Customer Order Line"."Job Instruction No.")
                {
                }
                column(JobDetailsReplacedParts_CustomerOrderLine; "Customer Order Line"."Job Details / Replaced Parts")
                {
                }
                column(Results_CustomerOrderLine; "Customer Order Line".Results)
                {
                }
                column(UnitCost_CustomerOrderLine; "Customer Order Line"."Unit Cost")
                {
                }
                column(CostAmount_CustomerOrderLine; "Customer Order Line"."Cost Amount")
                {
                }
                column(ServiceType_CustomerOrderLine; "Customer Order Line"."Service Type")
                {
                }
                column(VatAmount_CustomerOrderLine; "Customer Order Line"."Vat Amount")
                {
                }
                column(AmountIncVAT_CustomerOrderLine; "Customer Order Line"."Amount Inc. VAT")
                {
                }
                column(PartCollected_CustomerOrderLine; "Customer Order Line"."Part Collected")
                {
                }
                column(ServiceOrder_CustomerOrderLine; "Customer Order Line"."Service Order")
                {
                }
                column(ETA_CustomerOrderLine; "Customer Order Line".ETA)
                {
                }
                column(DurationinHrs_CustomerOrderLine; "Customer Order Line"."Duration in Hrs")
                {
                }
                column(DealerHourlyRate_CustomerOrderLine; "Customer Order Line"."Dealer Hourly Rate")
                {
                }
                column(FlatRate_CustomerOrderLine; "Customer Order Line"."Flat Rate")
                {
                }
                column(FRAmount_CustomerOrderLine; "Customer Order Line"."FR Amount")
                {
                }
                column(FRVATAmount_CustomerOrderLine; "Customer Order Line"."FR VAT Amount")
                {
                }
                column(FRAmountIncVAT_CustomerOrderLine; "Customer Order Line"."FR Amount Inc VAT")
                {
                }
                column(Confirmed_CustomerOrderLine; "Customer Order Line".Confirmed)
                {
                }
                column(Confirmedby_CustomerOrderLine; "Customer Order Line"."Confirmed by")
                {
                }
                column(BinShelfNo_CustomerOrderLine; "Customer Order Line"."Bin/Shelf No.")
                {
                }
                column(ModelNo_CustomerOrderLine; "Customer Order Line"."Model No.")
                {
                }
                column(ModelDescription_CustomerOrderLine; "Customer Order Line"."Model Description")
                {
                }
                column(JobType_CustomerOrderLine; "Customer Order Line"."Job Type")
                {
                }
                column(PRRaised_CustomerOrderLine; "Customer Order Line"."PR Raised")
                {
                }
                column(OnPartOrder_CustomerOrderLine; "Customer Order Line"."On Part Order")
                {
                }
                column(ModelName_CustomerOrderLine; "Customer Order Line"."Model Name")
                {
                }
                column(CustomerClass_CustomerOrderLine; "Customer Order Line"."Customer Class")
                {
                }
                column(ForSublet_CustomerOrderLine; "Customer Order Line"."For Sublet")
                {
                }
                column(SubletOrderNo_CustomerOrderLine; "Customer Order Line"."Sublet Order No.")
                {
                }
                column(SubletLineNo_CustomerOrderLine; "Customer Order Line"."Sublet Line No.")
                {
                }
                column(Subletto_CustomerOrderLine; "Customer Order Line"."Sublet to")
                {
                }
                column(SubletCode_CustomerOrderLine; "Customer Order Line"."Sublet Code")
                {
                }
                column(UnitofMeasure_CustomerOrderLine; "Customer Order Line"."Unit of Measure")
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
}

