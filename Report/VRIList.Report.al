report 50268 "VRI List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VRIList.rdlc';

    dataset
    {
        dataitem(DataItem2891; Table50058)
        {
            DataItemTableView = SORTING (VRI Code)
                                WHERE (Arrived = CONST (No));
            RequestFilterFields = "Model Filter", "Location Filter";
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
            column(VRI_Table__Key_No__; "Key No.")
            {
            }
            column(VRI_Table__Exterior_Colour_; "Exterior Colour")
            {
            }
            column(VRI_Table__Port_Staff_Comment_; "Port Staff Comment")
            {
            }
            column(VRI_Table2Caption; VRI_Table2CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(LIST_OF_ARRIVE_VEHICLE_IN_THE_PORTCaption; LIST_OF_ARRIVE_VEHICLE_IN_THE_PORTCaptionLbl)
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
            column(VRI_Table__Key_No__Caption; FIELDCAPTION("Key No."))
            {
            }
            column(VRI_Table__Exterior_Colour_Caption; FIELDCAPTION("Exterior Colour"))
            {
            }
            column(CommentCaption; CommentCaptionLbl)
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("VRI Code");
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
        LIST_OF_ARRIVE_VEHICLE_IN_THE_PORTCaptionLbl: Label 'LIST OF ARRIVE VEHICLE IN THE PORT';
        CommentCaptionLbl: Label 'Comment';
}

