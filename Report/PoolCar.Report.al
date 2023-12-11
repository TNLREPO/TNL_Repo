report 50434 "Pool Car"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PoolCar.rdlc';

    dataset
    {
        dataitem(DataItem1000000036; Table70003)
        {
            column(CompanyData_Name; CompanyData.Name)
            {
            }
            column(CompanyData_Address; CompanyData.Address)
            {
            }
            column(CompanyData__Address_2_; CompanyData."Address 2")
            {
            }
            column(CompanyData_City; CompanyData.City)
            {
            }
            column(CompanyData__Address_4_; CompanyData."Address 4")
            {
            }
            column(Tel_____CompanyData__Internation_phone_; 'Tel.: ' + CompanyData."Internation phone")
            {
            }
            column(CompanyData__Phone_No__; CompanyData."Phone No.")
            {
            }
            column(CompanyData__Phone_No__2_; CompanyData."Phone No. 2")
            {
            }
            column(Fax____CompanyData__Fax_No__; 'Fax: ' + CompanyData."Fax No.")
            {
            }
            column(Reg__No_____CompanyData__Registration_No__; 'Reg. No.: ' + CompanyData."Registration No.")
            {
            }
            column(Vat_No_____CompanyData__VAT_Reg__No__; 'Vat No.: ' + CompanyData."VAT Reg. No.")
            {
            }
            column(CompanyAddr1; CompanyAddr[1])
            {
            }
            column(CompanyAddr2; CompanyAddr[2])
            {
            }
            column(CompanyAddr3; CompanyAddr[3])
            {
            }
            column(CompanyAddr4; CompanyAddr[4])
            {
            }
            column(CompanyAddr5; CompanyAddr[5])
            {
            }
            column(CompanyAddr6; CompanyAddr[6])
            {
            }
            column(CompanyAddr7; CompanyAddr[7])
            {
            }
            column(CompanyAddr8; CompanyAddr[8])
            {
            }
            column(CustomerAddr_1_; CustomerAddr[1])
            {
            }
            column(CustomerAddr_2_; CustomerAddr[2])
            {
            }
            column(CustomerAddr_3_; CustomerAddr[3])
            {
            }
            column(CustomerAddr_4_; CustomerAddr[4])
            {
            }
            column(CustomerAddr_5_; CustomerAddr[5])
            {
            }
            column(CustomerAddr_6_; CustomerAddr[6])
            {
            }
            column(CustomerAddr_7_; CustomerAddr[7])
            {
            }
            column(CustomerAddr_8_; CustomerAddr[8])
            {
            }
            column(AllocationNo_PoolCarAllocation; "Pool Car Allocation"."Allocation No.")
            {
            }
            column(RequestNo_PoolCarAllocation; "Pool Car Allocation"."Request No.")
            {
            }
            column(RegistrationNo_PoolCarAllocation; "Pool Car Allocation"."Registration No.")
            {
            }
            column(ModelName_PoolCarAllocation; "Pool Car Allocation"."Model Name")
            {
            }
            column(PickupDate_PoolCarAllocation; "Pool Car Allocation"."Pickup Date")
            {
            }
            column(ReturnDate_PoolCarAllocation; "Pool Car Allocation"."Return Date")
            {
            }
            column(AllocationDate_PoolCarAllocation; "Pool Car Allocation"."Allocation Date")
            {
            }
            column(RequesterName_PoolCarAllocation; "Pool Car Allocation"."Requester Name")
            {
            }
            column(Destination_PoolCarAllocation; "Pool Car Allocation".Destination)
            {
            }
            column(DriverName_PoolCarAllocation; "Pool Car Allocation"."Driver Name")
            {
            }
            column(Hours_PoolCarAllocation; "Pool Car Allocation"."Expected Hours")
            {
            }
            column(MileageCovered_PoolCarAllocation; "Pool Car Allocation"."Mileage Covered")
            {
            }
            column(InitialMileage_PoolCarAllocation; "Pool Car Allocation"."Initial Mileage")
            {
            }
            column(MileageonReturn_PoolCarAllocation; "Pool Car Allocation"."Mileage on Return")
            {
            }
            column(ActualReturnTime_PoolCarAllocation; "Pool Car Allocation"."Actual Return Time")
            {
            }
            column(ReturnTime; "Pool Car Allocation"."Return Time")
            {
            }
            column(TakeoffLocation; "Pool Car Allocation"."Take-off Location")
            {
            }
            column(Reason_PoolCarAllocation; "Pool Car Allocation".Reason)
            {
            }
            column(PickupTime_PoolCarAllocation; "Pool Car Allocation"."Pickup Time")
            {
            }
            column(AllocatorName_PoolCarAllocation; "Pool Car Allocation"."Allocator Name")
            {
            }
            dataitem(DataItem1000000038; Table70002)
            {
                DataItemLink = Request No.=FIELD(Request No.);
                column(GlobalDimension1code_PoolCarRegister; "Pool Car Register"."Global Dimension 1 code")
                {
                }
                column(Purpose_PoolCarRegister; "Pool Car Register"."Request Type")
                {
                }
            }

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
        CompanyAddr: array[8] of Text[40];
        CustomerAddr: array[8] of Text[40];
}

