report 50609 "Delivery Check List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DeliveryCheckList.rdlc';

    dataset
    {
        dataitem(DataItem1; Table50160)
        {
            RequestFilterFields = "VRI Code";
            column(VRIDate_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."VRI Date")
            {
            }
            column(ItemNo_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."Item No.")
            {
            }
            column(ModelNo_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."Model No.")
            {
            }
            column(ModelName_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."Model Name")
            {
            }
            column(Description_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Description)
            {
            }
            column(ItemSerialNo_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."Item Serial No.")
            {
            }
            column(Walk0011_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0011)
            {
            }
            column(Walk0012_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0012)
            {
            }
            column(Walk0013_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0013)
            {
            }
            column(Walk0021_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0021)
            {
            }
            column(Walk0022_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0022)
            {
            }
            column(Walk0023_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0023)
            {
            }
            column(Walk0031_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0031)
            {
            }
            column(Walk0032_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0032)
            {
            }
            column(Walk0033_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0033)
            {
            }
            column(Walk0041_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0041)
            {
            }
            column(Walk0042_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0042)
            {
            }
            column(Walk0043_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0043)
            {
            }
            column(Walk0051_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0051)
            {
            }
            column(Walk0052_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0052)
            {
            }
            column(Walk0053_VRITableDeliveryCheckList; "VRI Table Delivery Check List".Walk0053)
            {
            }
            column(LOAD0011_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0011)
            {
            }
            column(LOAD0012_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0012)
            {
            }
            column(LOAD0013_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0013)
            {
            }
            column(LOAD0021_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0021)
            {
            }
            column(LOAD0022_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0022)
            {
            }
            column(LOAD0023_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0023)
            {
            }
            column(LOAD0031_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0031)
            {
            }
            column(LOAD0032_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0032)
            {
            }
            column(VRISupervisorNo_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."VRI Supervisor No")
            {
            }
            column(VRISupervisorName_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."VRI Supervisor Name")
            {
            }
            column(VRIInspectorCode_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."VRI Inspector Code")
            {
            }
            column(VRIInspectorName_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."VRI Inspector Name")
            {
            }
            column(VRIInspectorDepartment_VRITableDeliveryCheckList; "VRI Table Delivery Check List"."VRI Inspector Department")
            {
            }
            column(LOAD0033_VRITableDeliveryCheckList; "VRI Table Delivery Check List".LOAD0033)
            {
            }
            column(ENG0011_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0011)
            {
            }
            column(ENG0012_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0012)
            {
            }
            column(ENG0013_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0013)
            {
            }
            column(ENG0021_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0021)
            {
            }
            column(ENG0022_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0022)
            {
            }
            column(ENG0023_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0023)
            {
            }
            column(ENG0031_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0031)
            {
            }
            column(ENG0032_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0032)
            {
            }
            column(ENG0033_VRITableDeliveryCheckList; "VRI Table Delivery Check List".ENG0033)
            {
            }
            column(IV0011_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0011)
            {
            }
            column(IV0012_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0012)
            {
            }
            column(IV0013_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0013)
            {
            }
            column(IV0021_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0021)
            {
            }
            column(IV0022_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0022)
            {
            }
            column(IV0023_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0023)
            {
            }
            column(IV0031_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0031)
            {
            }
            column(IV0032_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0032)
            {
            }
            column(IV0033_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0033)
            {
            }
            column(IV0041_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0041)
            {
            }
            column(IV0042_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0042)
            {
            }
            column(IV0043_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0043)
            {
            }
            column(IV0051_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0051)
            {
            }
            column(IV0052_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0052)
            {
            }
            column(IV0053_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0053)
            {
            }
            column(IV0061_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0061)
            {
            }
            column(IV0062_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0062)
            {
            }
            column(IV0063_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0063)
            {
            }
            column(IV0071_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0071)
            {
            }
            column(IV0072_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0072)
            {
            }
            column(IV0073_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0073)
            {
            }
            column(IV0081_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0081)
            {
            }
            column(IV0082_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0082)
            {
            }
            column(IV0083_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0083)
            {
            }
            column(IV0091_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0091)
            {
            }
            column(IV0092_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0092)
            {
            }
            column(IV0093_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV0093)
            {
            }
            column(IV00101_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00101)
            {
            }
            column(IV00102_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00102)
            {
            }
            column(IV00103_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00103)
            {
            }
            column(IV00201_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00201)
            {
            }
            column(IV00202_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00202)
            {
            }
            column(IV00203_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00203)
            {
            }
            column(IV00301_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00301)
            {
            }
            column(IV00302_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00302)
            {
            }
            column(IV00303_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00303)
            {
            }
            column(IV00401_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00401)
            {
            }
            column(IV00402_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00402)
            {
            }
            column(IV00403_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00403)
            {
            }
            column(BOOT0011_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0011)
            {
            }
            column(BOOT0012_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0012)
            {
            }
            column(BOOT0013_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0013)
            {
            }
            column(IV00501_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00501)
            {
            }
            column(IV00502_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00502)
            {
            }
            column(IV00503_VRITableDeliveryCheckList; "VRI Table Delivery Check List".IV00503)
            {
            }
            column(BOOT0021_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0021)
            {
            }
            column(BOOT0022_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0022)
            {
            }
            column(BOOT0023_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0023)
            {
            }
            column(BOOT0031_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0031)
            {
            }
            column(BOOT0032_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0032)
            {
            }
            column(BOOT0033_VRITableDeliveryCheckList; "VRI Table Delivery Check List".BOOT0033)
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

