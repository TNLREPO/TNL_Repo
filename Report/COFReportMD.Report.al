report 50319 "COF Report MD"
{
    DefaultLayout = RDLC;
    RDLCLayout = './COFReportMD.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70034)
        {
            DataItemTableView = WHERE (Posted = CONST (Yes));
            RequestFilterFields = "Actual Delivery Date", "B & P", "General Repair", "DADs Only", "Repeat Repair";
            column(No_CustomerOrderHeaderX; "Customer Order HeaderX"."No.")
            {
            }
            column(ReceptionDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Reception Date")
            {
            }
            column(ReceptionTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Reception Time")
            {
            }
            column(CustomerNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer No.")
            {
            }
            column(CustomerName_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Name")
            {
            }
            column(Address_CustomerOrderHeaderX; "Customer Order HeaderX".Address)
            {
            }
            column(TelephoneNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Telephone No.")
            {
            }
            column(Address2_CustomerOrderHeaderX; "Customer Order HeaderX".Address2)
            {
            }
            column(ReceptionType_CustomerOrderHeaderX; "Customer Order HeaderX"."Reception Type")
            {
            }
            column(PartsOrderedDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Ordered Date")
            {
            }
            column(PartsOrderedTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Ordered Time")
            {
            }
            column(PartsOrderedStaffName_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Ordered Staff Name")
            {
            }
            column(PartsArrivedDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Arrived Date")
            {
            }
            column(PartsArrivedTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Arrived Time")
            {
            }
            column(PartsArrivedStaffName_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Arrived Staff Name")
            {
            }
            column(ServiceAdvisorsName_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Advisor's Name")
            {
            }
            column(ModelNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Model No.")
            {
            }
            column(ModelName_CustomerOrderHeaderX; "Customer Order HeaderX"."Model Name")
            {
            }
            column(VehicleRegistrationNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Vehicle Registration No.")
            {
            }
            column(OdometerAtAppointment_CustomerOrderHeaderX; "Customer Order HeaderX"."Odometer At Appointment")
            {
            }
            column(VehicleRegisteredDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Vehicle Registered Date")
            {
            }
            column(EngineNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Engine No.")
            {
            }
            column(Email_CustomerOrderHeaderX; "Customer Order HeaderX"."E-mail")
            {
            }
            column(OperationCode_CustomerOrderHeaderX; "Customer Order HeaderX"."Operation Code")
            {
            }
            column(OdometerReading_CustomerOrderHeaderX; "Customer Order HeaderX"."Odometer Reading")
            {
            }
            column(JobDetails_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Details")
            {
            }
            column(EstimatedJobTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Estimated Job Time")
            {
            }
            column(ModelYear_CustomerOrderHeaderX; "Customer Order HeaderX"."Model Year")
            {
            }
            column(Brand_CustomerOrderHeaderX; "Customer Order HeaderX".Brand)
            {
            }
            column(ETA1_CustomerOrderHeaderX; "Customer Order HeaderX".ETA1)
            {
            }
            column(ETA2_CustomerOrderHeaderX; "Customer Order HeaderX".ETA2)
            {
            }
            column(PaymentMethod_CustomerOrderHeaderX; "Customer Order HeaderX"."Payment Method")
            {
            }
            column(IfOtherMethod_CustomerOrderHeaderX; "Customer Order HeaderX"."If Other Method")
            {
            }
            column(OdometerAtReception_CustomerOrderHeaderX; "Customer Order HeaderX"."Odometer At Reception")
            {
            }
            column(ReceptionStaffName_CustomerOrderHeaderX; "Customer Order HeaderX"."Reception Staff Name")
            {
            }
            column(IfOtherCustomersRequests_CustomerOrderHeaderX; "Customer Order HeaderX"."If Other Customer's Requests")
            {
            }
            column(Estimation_CustomerOrderHeaderX; "Customer Order HeaderX".Estimation)
            {
            }
            column(CustomerName2_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Name2")
            {
            }
            column(CustomerAddress_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Address")
            {
            }
            column(CustomerTelephoneNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Telephone No.")
            {
            }
            column(ModelName2_CustomerOrderHeaderX; "Customer Order HeaderX"."Model Name2")
            {
            }
            column(VehicleRegistrationNo2_CustomerOrderHeaderX; "Customer Order HeaderX"."Vehicle Registration No.2")
            {
            }
            column(ItemNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Item No.")
            {
            }
            column(Description_CustomerOrderHeaderX; "Customer Order HeaderX".Description)
            {
            }
            column(Quantity_CustomerOrderHeaderX; "Customer Order HeaderX".Quantity)
            {
            }
            column(Cheque_CustomerOrderHeaderX; "Customer Order HeaderX".Cheque)
            {
            }
            column(Cash_CustomerOrderHeaderX; "Customer Order HeaderX".Cash)
            {
            }
            column(Maintenance1_CustomerOrderHeaderX; "Customer Order HeaderX".Maintenance1)
            {
            }
            column(OperationCodeDescription_CustomerOrderHeaderX; "Customer Order HeaderX"."Operation Code Description")
            {
            }
            column(ContactMobile_CustomerOrderHeaderX; "Customer Order HeaderX"."Contact Mobile")
            {
            }
            column(EstimateNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Estimate No.")
            {
            }
            column(TotalEstimation_CustomerOrderHeaderX; "Customer Order HeaderX"."Total Estimation")
            {
            }
            column(LocationCode_CustomerOrderHeaderX; "Customer Order HeaderX"."Location Code")
            {
            }
            column(EstimateFactor_CustomerOrderHeaderX; "Customer Order HeaderX"."Estimate Factor")
            {
            }
            column(AddJobsEstimation_CustomerOrderHeaderX; "Customer Order HeaderX"."Add. Jobs Estimation")
            {
            }
            column(Total_CustomerOrderHeaderX; "Customer Order HeaderX".Total)
            {
            }
            column(ServiceLocation_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Location")
            {
            }
            column(CustomerType_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Type")
            {
            }
            column(Other_CustomerOrderHeaderX; "Customer Order HeaderX".Other)
            {
            }
            column(IfOtherDeliveryType_CustomerOrderHeaderX; "Customer Order HeaderX"."If Other Delivery Type")
            {
            }
            column(JobInstructionNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Instruction No.")
            {
            }
            column(JobInstructionDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Instruction Date")
            {
            }
            column(EstimatedCompletionDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Estimated Completion Date")
            {
            }
            column(EstimatedCompletionTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Estimated Completion Time")
            {
            }
            column(KeyAssignedNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Key Assigned No.")
            {
            }
            column(StallNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Stall No.")
            {
            }
            column(CCStaffName_CustomerOrderHeaderX; "Customer Order HeaderX"."CC Staff Name")
            {
            }
            column(ActualHoursClocked_CustomerOrderHeaderX; "Customer Order HeaderX"."Actual Hours Clocked")
            {
            }
            column(JobCNStaffName_CustomerOrderHeaderX; "Customer Order HeaderX"."Job CN Staff Name")
            {
            }
            column(ActualDeliveryDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Actual Delivery Date")
            {
            }
            column(ActualDeliveryTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Actual Delivery Time")
            {
            }
            column(JobType2_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Type2")
            {
            }
            column(JobCategory_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Category")
            {
            }
            column(ServiceType_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Type")
            {
            }
            column(ReceptionDate2_CustomerOrderHeaderX; "Customer Order HeaderX"."Reception Date2")
            {
            }
            column(ReceptionTime2_CustomerOrderHeaderX; "Customer Order HeaderX"."Reception Time2")
            {
            }
            column(CustomerIntentionJobDetails_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Intention/Job Details")
            {
            }
            column(CustomerandVehicleInfo_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer and Vehicle Info")
            {
            }
            column(Score_CustomerOrderHeaderX; "Customer Order HeaderX".Score)
            {
            }
            column(AdjustVehReceptionDateTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Adjust Veh Reception DateTime")
            {
            }
            column(ConfirmContactInfoDriver_CustomerOrderHeaderX; "Customer Order HeaderX"."Confirm Contact Info/Driver")
            {
            }
            column(EnterRecptnAppntmtDateTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Enter Recptn Appntmt DateTime")
            {
            }
            column(PrintCustomerandVehInfo_CustomerOrderHeaderX; "Customer Order HeaderX"."Print Customer and Veh. Info")
            {
            }
            column(PrintEstimateI_CustomerOrderHeaderX; "Customer Order HeaderX"."Print Estimate I")
            {
            }
            column(PartsReqCompletionDateTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Parts Req./Completion DateTime")
            {
            }
            column(TechnicianName_CustomerOrderHeaderX; "Customer Order HeaderX"."Technician Name")
            {
            }
            column(ServiceAdvisor_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Advisor")
            {
            }
            column(CreateServiceOrder_CustomerOrderHeaderX; "Customer Order HeaderX"."Create Service Order")
            {
            }
            column(ServiceOrderNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Order No.")
            {
            }
            column(PostServiceInvoice_CustomerOrderHeaderX; "Customer Order HeaderX"."Post Service Invoice")
            {
            }
            column(Teams_CustomerOrderHeaderX; "Customer Order HeaderX".Teams)
            {
            }
            column(Status2_CustomerOrderHeaderX; "Customer Order HeaderX".Status2)
            {
            }
            column(JobOpened_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Opened")
            {
            }
            column(Estimate_CustomerOrderHeaderX; "Customer Order HeaderX".Estimate)
            {
            }
            column(NextServiceDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Next Service Date")
            {
            }
            column(Technician_CustomerOrderHeaderX; "Customer Order HeaderX".Technician)
            {
            }
            column(QCStaffName_CustomerOrderHeaderX; "Customer Order HeaderX"."QC Staff Name")
            {
            }
            column(TotalAppointmentTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Total Appointment Time")
            {
            }
            column(ServiceDuration_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Duration")
            {
            }
            column(Memo2_CustomerOrderHeaderX; "Customer Order HeaderX".Memo2)
            {
            }
            column(TACode_CustomerOrderHeaderX; "Customer Order HeaderX"."TA Code")
            {
            }
            column(TAName_CustomerOrderHeaderX; "Customer Order HeaderX"."TA Name")
            {
            }
            column(ShortcutDimension1Code_CustomerOrderHeaderX; "Customer Order HeaderX"."Shortcut Dimension 1 Code")
            {
            }
            column(ShortcutDimension2Code_CustomerOrderHeaderX; "Customer Order HeaderX"."Shortcut Dimension 2 Code")
            {
            }
            column(FANo_CustomerOrderHeaderX; "Customer Order HeaderX"."FA No.")
            {
            }
            column(LabourEstimate_CustomerOrderHeaderX; "Customer Order HeaderX"."Labour Estimate")
            {
            }
            column(ItemEstimate_CustomerOrderHeaderX; "Customer Order HeaderX"."Item Estimate")
            {
            }
            column(DateDelivered_CustomerOrderHeaderX; "Customer Order HeaderX"."Date Delivered")
            {
            }
            column(TimeDelivered_CustomerOrderHeaderX; "Customer Order HeaderX"."Time Delivered")
            {
            }
            column(CustomerOrderType_CustomerOrderHeaderX; "Customer Order HeaderX"."Customer Order Type")
            {
            }
            column(ServiceReqCode_CustomerOrderHeaderX; "Customer Order HeaderX"."Service Req. Code")
            {
            }
            column(Stage_CustomerOrderHeaderX; "Customer Order HeaderX".Stage)
            {
            }
            column(Posted_CustomerOrderHeaderX; "Customer Order HeaderX".Posted)
            {
            }
            column(TotalLineDiscount_CustomerOrderHeaderX; "Customer Order HeaderX"."Total Line Discount")
            {
            }
            column(PostedBy_CustomerOrderHeaderX; "Customer Order HeaderX"."Posted By")
            {
            }
            column(PostedDateTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Posted DateTime")
            {
            }
            column(DADsOnly_CustomerOrderHeaderX; "Customer Order HeaderX"."DADs Only")
            {
            }
            column(TotalTimeTaken_CustomerOrderHeaderX; "Customer Order HeaderX"."Total Time Taken")
            {
            }
            column(InitialJobNo_CustomerOrderHeaderX; "Customer Order HeaderX"."Total Time Taken")
            {
            }
            column(Maintenance_CustomerOrderHeaderX; "Customer Order HeaderX".Maintenance)
            {
            }
            column(GeneralRepair_CustomerOrderHeaderX; "Customer Order HeaderX"."General Repair")
            {
            }
            column(Internal_CustomerOrderHeaderX; "Customer Order HeaderX".Internal)
            {
            }
            column(Warranty_CustomerOrderHeaderX; "Customer Order HeaderX".Warranty)
            {
            }
            column(RepeatRepair_CustomerOrderHeaderX; "Customer Order HeaderX"."Repeat Repair")
            {
            }
            column(VehicleClassification_CustomerOrderHeaderX; "Customer Order HeaderX"."Vehicle Classification")
            {
            }
            column(DiagEst_CustomerOrderHeaderX; "Customer Order HeaderX"."Diag/Est")
            {
            }
            column(BP_CustomerOrderHeaderX; "Customer Order HeaderX"."B & P")
            {
            }
            column(JobClockTime_CustomerOrderHeaderX; "Customer Order HeaderX"."Job Clock Time")
            {
            }
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
            }
        }

        actions
        {
        }
    }

    labels
    {
    }
}

