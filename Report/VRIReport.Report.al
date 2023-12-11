report 50269 "VRI Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VRIReport.rdlc';

    dataset
    {
        dataitem(DataItem2891; Table50058)
        {
            DataItemTableView = SORTING (Model Name, Location)
                                ORDER(Ascending)
                                WHERE (Arrived = CONST (Yes));
            RequestFilterFields = "Model Name", "VRI Location";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(VRI_Table_Location; Location)
            {
            }
            column(VRI_Table__VRI_Code_; "VRI Code")
            {
            }
            column(VRI_Table__VRI_Location_; "VRI Location")
            {
            }
            column(VRI_Table__VRI_Date_; "VRI Date")
            {
            }
            column(VRI_Table__Item_No__; "Item No.")
            {
            }
            column(VRI_Table__Model_No__; "Model No.")
            {
            }
            column(VRI_Table__Model_Name_; "Model Name")
            {
            }
            column(VRI_Table__Item_Serial_No__; "Item Serial No.")
            {
            }
            column(VRI_Table__Engine_No__; "Engine No.")
            {
            }
            column(VRI_Table_Arrived; Arrived)
            {
            }
            column(VRI_Table__Arrive_Approve_by_; "Arrive Approve by")
            {
            }
            column(VRI_Table2Caption; VRI_Table2CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(VRI_LIST_ARRIVED_VEHICLECaption; VRI_LIST_ARRIVED_VEHICLECaptionLbl)
            {
            }
            column(VRI_Table__VRI_Code_Caption; FIELDCAPTION("VRI Code"))
            {
            }
            column(VRI_Table__VRI_Location_Caption; FIELDCAPTION("VRI Location"))
            {
            }
            column(VRI_Table__VRI_Date_Caption; FIELDCAPTION("VRI Date"))
            {
            }
            column(VRI_Table__Item_No__Caption; FIELDCAPTION("Item No."))
            {
            }
            column(VRI_Table__Model_No__Caption; FIELDCAPTION("Model No."))
            {
            }
            column(VRI_Table__Model_Name_Caption; FIELDCAPTION("Model Name"))
            {
            }
            column(VRI_Table__Item_Serial_No__Caption; FIELDCAPTION("Item Serial No."))
            {
            }
            column(VRI_Table__Engine_No__Caption; FIELDCAPTION("Engine No."))
            {
            }
            column(VRI_Table_ArrivedCaption; FIELDCAPTION(Arrived))
            {
            }
            column(VRI_Table__Arrive_Approve_by_Caption; FIELDCAPTION("Arrive Approve by"))
            {
            }
            column(VRI_Table_LocationCaption; FIELDCAPTION(Location))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO(Location);
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        VRI_Table2CaptionLbl: Label 'VRI Table2';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        VRI_LIST_ARRIVED_VEHICLECaptionLbl: Label 'VRI LIST ARRIVED VEHICLE';
}

