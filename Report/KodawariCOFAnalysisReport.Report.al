report 50363 "Kodawari COF Analysis Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './KodawariCOFAnalysisReport.rdlc';

    dataset
    {
        dataitem(DataItem7672; Table50119)
        {
            DataItemTableView = SORTING (Customer Order Form No.);
            RequestFilterFields = "Customer Order Form No.";
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
            column(Customer_Order_Table___Customer_Order_Form_No__; "Customer Order Form No.")
            {
            }
            column(Customer_Order_Table___Customer_Order_Form_Date_; "Customer Order Form Date")
            {
            }
            column(Customer_Order_Table___Job_Details_; "Job Details")
            {
            }
            column(Customer_Order_Table__Estimation; Estimation)
            {
            }
            column(Customer_Order_Table___Service_Order_No__; "Service Order No.")
            {
            }
            column(Customer_Order_Table___Customer_Name_; "Customer Name")
            {
            }
            column(Customer_Order_Table___Shortcut_Dimension_1_Code_; "Shortcut Dimension 1 Code")
            {
            }
            column(Customer_Order_Table___Telephone_No__; "Telephone No.")
            {
            }
            column(Customer_Order_Table___Model_Name_; "Model Name")
            {
            }
            column(Customer_Order_Table___Vehicle_Registration_No__; "Vehicle Registration No.")
            {
            }
            column(Customer_Order_Table___Frame_No__VIN_; "Frame No./VIN")
            {
            }
            column(Customer_Order_Table____Engine_No__; "(Engine No)")
            {
            }
            column(Customer_Order_Table___FA_No__; "FA No.")
            {
            }
            column(Customer_Order_Table___Odometer_Reading_At_Appointmen_; "Odometer Reading At Appointmen")
            {
            }
            column(AmtLabour; AmtLabour)
            {
            }
            column(AmtPart; AmtPart)
            {
            }
            column(AmtSublet; AmtSublet)
            {
            }
            column(AmtTot; AmtTot)
            {
            }
            column(AmtLabour_Control1000000051; AmtLabour)
            {
            }
            column(AmtSublet_Control1000000054; AmtSublet)
            {
            }
            column(AmtPart_Control1000000055; AmtPart)
            {
            }
            column(AmtTot_Control1000000057; AmtTot)
            {
            }
            column(Customer_Order_Table_Caption; Customer_Order_Table_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Repair_OrderCaption; Repair_OrderCaptionLbl)
            {
            }
            column(CustomerCaption; CustomerCaptionLbl)
            {
            }
            column(VehicleCaption; VehicleCaptionLbl)
            {
            }
            column(CostCaption; CostCaptionLbl)
            {
            }
            column(Customer_Order_Table___Customer_Order_Form_No__Caption; Customer_Order_Table___Customer_Order_Form_No__CaptionLbl)
            {
            }
            column(Customer_Order_Table___Customer_Order_Form_Date_Caption; Customer_Order_Table___Customer_Order_Form_Date_CaptionLbl)
            {
            }
            column(Customer_Order_Table___Job_Details_Caption; FIELDCAPTION("Job Details"))
            {
            }
            column(Customer_Order_Table__EstimationCaption; Customer_Order_Table__EstimationCaptionLbl)
            {
            }
            column(Customer_Order_Table___Service_Order_No__Caption; Customer_Order_Table___Service_Order_No__CaptionLbl)
            {
            }
            column(Customer_Order_Table___Customer_Name_Caption; Customer_Order_Table___Customer_Name_CaptionLbl)
            {
            }
            column(Customer_Order_Table___Shortcut_Dimension_1_Code_Caption; Customer_Order_Table___Shortcut_Dimension_1_Code_CaptionLbl)
            {
            }
            column(Customer_Order_Table___Telephone_No__Caption; FIELDCAPTION("Telephone No."))
            {
            }
            column(Customer_Order_Table___Model_Name_Caption; Customer_Order_Table___Model_Name_CaptionLbl)
            {
            }
            column(Customer_Order_Table___Vehicle_Registration_No__Caption; Customer_Order_Table___Vehicle_Registration_No__CaptionLbl)
            {
            }
            column(Customer_Order_Table___Frame_No__VIN_Caption; FIELDCAPTION("Frame No./VIN"))
            {
            }
            column(Customer_Order_Table____Engine_No__Caption; FIELDCAPTION("(Engine No)"))
            {
            }
            column(Customer_Order_Table___FA_No__Caption; Customer_Order_Table___FA_No__CaptionLbl)
            {
            }
            column(Customer_Order_Table___Odometer_Reading_At_Appointmen_Caption; Customer_Order_Table___Odometer_Reading_At_Appointmen_CaptionLbl)
            {
            }
            column(LabourCaption; LabourCaptionLbl)
            {
            }
            column(PartCaption; PartCaptionLbl)
            {
            }
            column(SubletCaption; SubletCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                //MainteLedgEntry."Document No." := "Customer Order Table."."Customer Order Form No.";
                MainteLedgEntry.SETRANGE("Document No.", "Customer Order Table."."Customer Order Form No.");
                IF MainteLedgEntry.FINDSET THEN BEGIN
                    MainteLedgEntry.CALCFIELDS("Total Parts");
                    AmtPart := MainteLedgEntry."Total Parts";
                END;

                ServiceLine.SETRANGE("Document Type", ServiceLine."Document Type"::Order);
                ServiceLine.SETRANGE("Document No.", "Customer Order Form No.");
                ServiceLine.SETRANGE(Type, ServiceLine.Type::Resource);
                IF ServiceLine.FINDSET THEN BEGIN
                    ServiceLine.CALCFIELDS(ServiceLine."Res. Hours Total");
                    AmtLabour := ServiceLine."Res. Hours Total";
                END;


                ServiceLine.SETRANGE("Document Type", ServiceLine."Document Type"::Order);
                ServiceLine.SETRANGE("Document No.", "Customer Order Form No.");
                ServiceLine.SETRANGE(Type, ServiceLine.Type::Cost);
                IF ServiceLine.FINDSET THEN BEGIN
                    ServiceLine.CALCFIELDS(ServiceLine."Cost Total");
                    AmtSublet := ServiceLine."Cost Total";
                END;

                AmtTot := AmtPart + AmtLabour + AmtSublet;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS(AmtPart, AmtLabour, AmtSublet, AmtTot);
                MainteLedgEntry."Document No." := "Customer Order Form No.";
                ServiceLine."Document No." := "Customer Order Form No.";
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
        ServiceLine: Record 5902;
        MainteLedgEntry: Record "5625";
        AmtPart: Decimal;
        AmtLabour: Decimal;
        AmtSublet: Decimal;
        AmtTot: Decimal;
        Customer_Order_Table_CaptionLbl: Label 'Customer Order Table.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Repair_OrderCaptionLbl: Label 'Repair Order';
        CustomerCaptionLbl: Label 'Customer';
        VehicleCaptionLbl: Label 'Vehicle';
        CostCaptionLbl: Label 'Cost';
        Customer_Order_Table___Customer_Order_Form_No__CaptionLbl: Label 'COF';
        Customer_Order_Table___Customer_Order_Form_Date_CaptionLbl: Label 'Date';
        Customer_Order_Table__EstimationCaptionLbl: Label 'Estimate';
        Customer_Order_Table___Service_Order_No__CaptionLbl: Label 'Invoice';
        Customer_Order_Table___Customer_Name_CaptionLbl: Label 'Name';
        Customer_Order_Table___Shortcut_Dimension_1_Code_CaptionLbl: Label 'Dept';
        Customer_Order_Table___Model_Name_CaptionLbl: Label 'Model';
        Customer_Order_Table___Vehicle_Registration_No__CaptionLbl: Label 'Reg';
        Customer_Order_Table___FA_No__CaptionLbl: Label 'Asset No.';
        Customer_Order_Table___Odometer_Reading_At_Appointmen_CaptionLbl: Label 'Km';
        LabourCaptionLbl: Label 'Labour';
        PartCaptionLbl: Label 'Part';
        SubletCaptionLbl: Label 'Sublet';
        TotalCaptionLbl: Label 'Total';
}

