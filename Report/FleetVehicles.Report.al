report 50247 "Fleet Vehicles"
{
    DefaultLayout = RDLC;
    RDLCLayout = './FleetVehicles.rdlc';

    dataset
    {
        dataitem(DataItem7672; Table50119)
        {
            DataItemTableView = SORTING (Customer Order Form No.);
            RequestFilterFields = "Reception Date";
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
            column(Customer_Order_Table___Job_Start_Date_; "Job Start Date")
            {
            }
            column(Customer_Order_Table___JC_Date_; "JC Date")
            {
            }
            column(JobStatus; JobStatus)
            {
            }
            column(PartAmount; PartAmount)
            {
            }
            column(SundryAmount; SundryAmount)
            {
            }
            column(LabourAmount; LabourAmount)
            {
            }
            column(SubTotal; SubTotal)
            {
            }
            column(Customer_Order_Table___Vehicle_Registration_No__; "Vehicle Registration No.")
            {
            }
            column(Customer_Order_Table___Model_Name_; "Model Name")
            {
            }
            column(Customer_Order_Table___Model_No_; "Model No")
            {
            }
            column(Customer_Order_Table___Frame_No__VIN_; "Frame No./VIN")
            {
            }
            column(Customer_Order_Table___Customer_Name_; "Customer Name")
            {
            }
            column(Customer_Order_Table___Odometer_Reading_At_Reception_; "Odometer Reading At Reception")
            {
            }
            column(Customer_Order_Table___Technician_Name_; "Technician Name")
            {
            }
            column(SupplierName; SupplierName)
            {
            }
            column(GrandTotal; GrandTotal)
            {
            }
            column(RepairDescrptn; RepairDescrptn)
            {
            }
            column(SubletAmount; SubletAmount)
            {
            }
            column(SubletNo; SubletNo)
            {
            }
            column(Customer_Order_Table___Job_Details_; "Job Details")
            {
            }
            column(Customer_Order_Table___General_Repair_; "General Repair")
            {
            }
            column(Customer_Order_Table___B___P_; "B & P")
            {
            }
            column(Customer_Order_Table___Diag_Est_; "Diag/Est")
            {
            }
            column(Customer_Order_Table___Actual_Hours_Clocked_; "Actual Hours Clocked")
            {
            }
            column(Customer_Order_Table__Maintenance2; Maintenance2)
            {
            }
            column(FLEET_VEHICLESCaption; FLEET_VEHICLESCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Reg__No_Caption; Reg__No_CaptionLbl)
            {
            }
            column(Model_NameCaption; Model_NameCaptionLbl)
            {
            }
            column(Model_CodeCaption; Model_CodeCaptionLbl)
            {
            }
            column(VINCaption; VINCaptionLbl)
            {
            }
            column(DepartmentCaption; DepartmentCaptionLbl)
            {
            }
            column(OdometerCaption; OdometerCaptionLbl)
            {
            }
            column(TechnicianCaption; TechnicianCaptionLbl)
            {
            }
            column(Hrs_TakenCaption; Hrs_TakenCaptionLbl)
            {
            }
            column(Customer_Order_Table___Customer_Order_Form_No__Caption; FIELDCAPTION("Customer Order Form No."))
            {
            }
            column(Customer_Order_Table___Job_Start_Date_Caption; FIELDCAPTION("Job Start Date"))
            {
            }
            column(Job_Finished_DateCaption; Job_Finished_DateCaptionLbl)
            {
            }
            column(Job_StatusCaption; Job_StatusCaptionLbl)
            {
            }
            column(Part_AmountCaption; Part_AmountCaptionLbl)
            {
            }
            column(Sundry_AmountCaption; Sundry_AmountCaptionLbl)
            {
            }
            column(Labour_AmountCaption; Labour_AmountCaptionLbl)
            {
            }
            column(Sub_Total_AmountCaption; Sub_Total_AmountCaptionLbl)
            {
            }
            column(Supplier_NameCaption; Supplier_NameCaptionLbl)
            {
            }
            column(Repair_Descrptn_Caption; Repair_Descrptn_CaptionLbl)
            {
            }
            column(Sublet_Code_Invoice_NoCaption; Sublet_Code_Invoice_NoCaptionLbl)
            {
            }
            column(Settlement_StatusCaption; Settlement_StatusCaptionLbl)
            {
            }
            column(Sublet_Total_AmountCaption; Sublet_Total_AmountCaptionLbl)
            {
            }
            column(G_TotalCaption; G_TotalCaptionLbl)
            {
            }
            column(Customer_Order_Table___Job_Details_Caption; FIELDCAPTION("Job Details"))
            {
            }
            column(PMCaption; PMCaptionLbl)
            {
            }
            column(GRCaption; GRCaptionLbl)
            {
            }
            column(B_and_PCaption; B_and_PCaptionLbl)
            {
            }
            column(DiagnosisCaption; DiagnosisCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                PartAmount := 0;
                SundryAmount := 0;
                LabourAmount := 0;
                SubTotal := 0;
                SubletAmount := 0;
                GrandTotal := 0;
                SubletNo := '';
                RepairDescrptn := '';
                SupplierName := '';
                SupplierNo := '';


                ServLine.SETCURRENTKEY("Document Type", "Document No.", Type, Posted);
                ServLine.SETRANGE("Document Type", ServLine."Document Type"::Order);
                ServLine.SETRANGE("Document No.", "Customer Order Table."."Customer Order Form No.");
                ServLine.SETRANGE(Type, ServLine.Type::Item);
                ServLine.SETRANGE(Posted, TRUE);
                IF ServLine.FINDFIRST THEN BEGIN
                    ServLine.CALCSUMS("Amount Including VAT");
                    PartAmount := ServLine."Amount Including VAT";
                END;

                ServLine2.SETCURRENTKEY("Document Type", "Document No.", Type, Posted);
                ServLine2.SETRANGE("Document Type", ServLine2."Document Type"::Order);
                ServLine2.SETRANGE("Document No.", "Customer Order Table."."Customer Order Form No.");
                ServLine2.SETRANGE(Type, ServLine2.Type::"G/L Account");
                ServLine2.SETRANGE(Posted, TRUE);
                IF ServLine2.FINDFIRST THEN BEGIN
                    ServLine2.CALCSUMS("Amount Including VAT");
                    SundryAmount := ServLine2."Amount Including VAT";
                END;

                ServLine3.SETCURRENTKEY("Document Type", "Document No.", Type, Posted);
                ServLine3.SETRANGE("Document Type", ServLine3."Document Type"::Order);
                ServLine3.SETRANGE("Document No.", "Customer Order Table."."Customer Order Form No.");
                ServLine3.SETRANGE(Type, ServLine3.Type::Resource);
                ServLine3.SETRANGE(Posted, TRUE);
                IF ServLine3.FINDFIRST THEN BEGIN
                    ServLine3.CALCSUMS("Amount Including VAT");
                    LabourAmount := ServLine3."Amount Including VAT";
                END;

                SubTotal := PartAmount + SundryAmount + LabourAmount;

                PurchLine.SETCURRENTKEY(PurchLine."COF No.");
                PurchLine.SETRANGE(PurchLine."COF No.", "Customer Order Form No.");
                IF PurchLine.FINDFIRST THEN BEGIN
                    SupplierNo := PurchLine."Buy-from Vendor No.";
                    RepairDescrptn := PurchLine.Description;
                    PurchLine.CALCSUMS("Line Amount");
                    SubletAmount := PurchLine."Line Amount";
                    SubletNo := PurchLine."Document No.";
                END;

                IF VendRec.GET(SupplierNo) THEN
                    SupplierName := VendRec.Name;

                GrandTotal := SubTotal + SubletAmount;

                IF Delivered THEN
                    JobStatus := 'Delivered';

                IF (NOT Delivered) AND ("For Production") THEN
                    JobStatus := 'WIP';
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
        CustOrderLine: Record "50122";
        PartAmount: Decimal;
        CustOrderLine2: Record "50122";
        SundryAmount: Decimal;
        CustOrderLine3: Record "50122";
        LabourAmount: Decimal;
        SubTotal: Decimal;
        PurchHead: Record 38;
        PurchLine: Record 39;
        SubletNo: Code[10];
        RepairDescrptn: Code[70];
        SupplierName: Code[30];
        GrandTotal: Decimal;
        SubletAmount: Decimal;
        SupplierNo: Code[10];
        VendRec: Record "23";
        ServHead: Record "5900";
        ServLine: Record 5902;
        ServLine2: Record 5902;
        ServLine3: Record 5902;
        JobStatus: Text[30];
        SettleStatus: Text[30];
        Text001: ;
        Text002: Label 'Fleet Vehicles';
        FLEET_VEHICLESCaptionLbl: Label 'FLEET VEHICLES';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Reg__No_CaptionLbl: Label 'Reg. No.';
        Model_NameCaptionLbl: Label 'Model Name';
        Model_CodeCaptionLbl: Label 'Model Code';
        VINCaptionLbl: Label 'VIN';
        DepartmentCaptionLbl: Label 'Department';
        OdometerCaptionLbl: Label 'Odometer';
        TechnicianCaptionLbl: Label 'Technician';
        Hrs_TakenCaptionLbl: Label 'Hrs Taken';
        Job_Finished_DateCaptionLbl: Label 'Job Finished Date';
        Job_StatusCaptionLbl: Label 'Job Status';
        Part_AmountCaptionLbl: Label 'Part Amount';
        Sundry_AmountCaptionLbl: Label 'Sundry Amount';
        Labour_AmountCaptionLbl: Label 'Labour Amount';
        Sub_Total_AmountCaptionLbl: Label 'Sub-Total Amount';
        Supplier_NameCaptionLbl: Label 'Supplier Name';
        Repair_Descrptn_CaptionLbl: Label 'Repair Descrptn.';
        Sublet_Code_Invoice_NoCaptionLbl: Label 'Sublet Code/Invoice No';
        Settlement_StatusCaptionLbl: Label 'Settlement Status';
        Sublet_Total_AmountCaptionLbl: Label 'Sublet Total Amount';
        G_TotalCaptionLbl: Label 'G-Total';
        PMCaptionLbl: Label 'PM';
        GRCaptionLbl: Label 'GR';
        B_and_PCaptionLbl: Label 'B and P';
        DiagnosisCaptionLbl: Label 'Diagnosis';
}

