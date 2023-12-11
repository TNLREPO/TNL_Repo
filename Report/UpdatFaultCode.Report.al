report 50377 "Updat Fault Code"
{
    DefaultLayout = RDLC;
    RDLCLayout = './UpdatFaultCode.rdlc';

    dataset
    {
        dataitem(DataItem3147; Table50109)
        {
            DataItemTableView = SORTING (Operation Code, Model No.);
            RequestFilterFields = "Operation Code";
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
            column(Faulty_Material_setup_Header__Operation_Code_; "Operation Code")
            {
            }
            column(Faulty_Material_setup_Header__Operation_Code__Control1000000011; "Operation Code")
            {
            }
            column(Faulty_Material_setup_Header__Service_Item_Model_; "Model No.")
            {
            }
            column(Faulty_Material_setup_Header__Service_Item_Make_; "Model Name")
            {
            }
            column(Faulty_Material_setup_HeaderCaption; Faulty_Material_setup_HeaderCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Faulty_Material_setup_Header__Operation_Code__Control1000000011Caption; FIELDCAPTION("Operation Code"))
            {
            }
            column(Faulty_Material_setup_Header__Service_Item_Model_Caption; FIELDCAPTION("Model No."))
            {
            }
            column(Faulty_Material_setup_Header__Service_Item_Make_Caption; FIELDCAPTION("Model Name"))
            {
            }
            column(Faulty_Material_setup_Header__Operation_Code_Caption; FIELDCAPTION("Operation Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                FaultCode.INIT;
                FaultCode."Fault Area Code" := "Faulty Area";
                FaultCode."Symptom Code" := Symptoms;
                FaultCode.Code := "Operation Code";
                FaultCode.Description := Description;
                FaultCode.Model := "Model No.";
                IF FaultCode.INSERT(TRUE) THEN;
                FaultCode.MODIFY;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Operation Code");
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
        FaultCode: Record "5918";
        Faulty_Material_setup_HeaderCaptionLbl: Label 'Faulty Material setup Header';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

