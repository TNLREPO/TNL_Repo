report 50551 "Local Part Purchase"
{
    DefaultLayout = RDLC;
    RDLCLayout = './LocalPartPurchase.rdlc';

    dataset
    {
        dataitem(DataItem1; Table70018)
        {
            RequestFilterFields = "LPP No.";
            column(LPPNo_LocalPartPurchaseRegister; "Local Part Purchase Register"."LPP No.")
            {
            }
            column(RequesterCode_LocalPartPurchaseRegister; "Local Part Purchase Register"."Requester Code")
            {
            }
            column(RequesterName_LocalPartPurchaseRegister; "Local Part Purchase Register"."Requester Name")
            {
            }
            column(DepartmentCode_LocalPartPurchaseRegister; "Local Part Purchase Register"."Department Code")
            {
            }
            column(RequesterDepartment_LocalPartPurchaseRegister; "Local Part Purchase Register"."Requester Department")
            {
            }
            column(Date_LocalPartPurchaseRegister; "Local Part Purchase Register".Date)
            {
            }
            column(SuppliersAddress_LocalPartPurchaseRegister; "Local Part Purchase Register"."Supplier's Address")
            {
            }
            column(SuppliersName_LocalPartPurchaseRegister; "Local Part Purchase Register"."Supplier's Name")
            {
            }
            column(ProfomaInvoiceNo_LocalPartPurchaseRegister; "Local Part Purchase Register"."Profoma Invoice No:")
            {
            }
            column(Justificationforpurchase_LocalPartPurchaseRegister; "Local Part Purchase Register"."Justification for purchase")
            {
            }
            column(TotalPurchaseValue_LocalPartPurchaseRegister; "Local Part Purchase Register"."Total Purchase Value")
            {
            }
            column(HODCode_LocalPartPurchaseRegister; "Local Part Purchase Register"."HOD Code")
            {
            }
            column(HODName_LocalPartPurchaseRegister; "Local Part Purchase Register"."HOD Name")
            {
            }
            column(Approved1_LocalPartPurchaseRegister; "Local Part Purchase Register".Approved1)
            {
            }
            column(Approved2_LocalPartPurchaseRegister; "Local Part Purchase Register".Approved2)
            {
            }
            column(OnHold1_LocalPartPurchaseRegister; "Local Part Purchase Register"."On-Hold1")
            {
            }
            column(OnHold2_LocalPartPurchaseRegister; "Local Part Purchase Register"."On-Hold2")
            {
            }
            column(Rejected1_LocalPartPurchaseRegister; "Local Part Purchase Register".Rejected1)
            {
            }
            column(Rejected2_LocalPartPurchaseRegister; "Local Part Purchase Register".Rejected2)
            {
            }
            column(Comment1_LocalPartPurchaseRegister; "Local Part Purchase Register".Comment1)
            {
            }
            column(Comment2_LocalPartPurchaseRegister; "Local Part Purchase Register".Comment2)
            {
            }
            column(NoSeries_LocalPartPurchaseRegister; "Local Part Purchase Register"."No. Series")
            {
            }
            column(UserID_LocalPartPurchaseRegister; "Local Part Purchase Register"."User ID")
            {
            }
            column(SendTo_LocalPartPurchaseRegister; "Local Part Purchase Register"."Send To")
            {
            }
            column(Send_LocalPartPurchaseRegister; "Local Part Purchase Register".Send)
            {
            }
            column(SentBy_LocalPartPurchaseRegister; "Local Part Purchase Register"."Sent By")
            {
            }
            column(Approved3_LocalPartPurchaseRegister; "Local Part Purchase Register".Approved3)
            {
            }
            column(Rejected3_LocalPartPurchaseRegister; "Local Part Purchase Register".Rejected3)
            {
            }
            column(OnHold3_LocalPartPurchaseRegister; "Local Part Purchase Register"."On-Hold3")
            {
            }
            column(Comment3_LocalPartPurchaseRegister; "Local Part Purchase Register".Comment3)
            {
            }
            column(HeadofDepartment_LocalPartPurchaseRegister; "Local Part Purchase Register"."Head of Department")
            {
            }
            column(NameHOD_LocalPartPurchaseRegister; "Local Part Purchase Register"."Name HOD")
            {
            }
            column(HeadofAudit_LocalPartPurchaseRegister; "Local Part Purchase Register"."Head of Audit")
            {
            }
            column(NameHeadofAudit_LocalPartPurchaseRegister; "Local Part Purchase Register"."Name Head of Audit")
            {
            }
            column(ManagingDirector_LocalPartPurchaseRegister; "Local Part Purchase Register"."Managing Director")
            {
            }
            column(NameMD_LocalPartPurchaseRegister; "Local Part Purchase Register"."Name MD")
            {
            }
            column(GeneralManager_LocalPartPurchaseRegister; "Local Part Purchase Register"."General Manager")
            {
            }
            column(NameGM_LocalPartPurchaseRegister; "Local Part Purchase Register"."Name GM")
            {
            }
            column(HODsPartProcurementAppr_LocalPartPurchaseRegister; "Local Part Purchase Register"."HOD's Part Procurement Appr.")
            {
            }
            column(HODsPartApprName_LocalPartPurchaseRegister; "Local Part Purchase Register"."HOD's Part  Appr. Name")
            {
            }
            column(Compliancecheck_LocalPartPurchaseRegister; "Local Part Purchase Register"."Compliance check")
            {
            }
            column(ConfirmedBy_LocalPartPurchaseRegister; "Local Part Purchase Register"."Confirmed By")
            {
            }
            column(DateTime_LocalPartPurchaseRegister; "Local Part Purchase Register".DateTime)
            {
            }
            column(TimeDate1_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate1)
            {
            }
            column(TimeDate2_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate2)
            {
            }
            column(TimeDate3_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate3)
            {
            }
            column(TimeDate4_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate4)
            {
            }
            column(TimeDate5_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate5)
            {
            }
            column(TimeDate6_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate6)
            {
            }
            column(HODVisible_LocalPartPurchaseRegister; "Local Part Purchase Register".HODVisible)
            {
            }
            column(GMVisible_LocalPartPurchaseRegister; "Local Part Purchase Register".GMVisible)
            {
            }
            column(MDVisible_LocalPartPurchaseRegister; "Local Part Purchase Register".MDVisible)
            {
            }
            column(SendEditable_LocalPartPurchaseRegister; "Local Part Purchase Register".SendEditable)
            {
            }
            column(HoDPartApproval_LocalPartPurchaseRegister; "Local Part Purchase Register".HoDPartApproval)
            {
            }
            column(HoDAuditApproval_LocalPartPurchaseRegister; "Local Part Purchase Register".HoDAuditApproval)
            {
            }
            column(ProcurementApproval_LocalPartPurchaseRegister; "Local Part Purchase Register"."Procurement Approval")
            {
            }
            column(GenaratePayment_LocalPartPurchaseRegister; "Local Part Purchase Register".GenaratePayment)
            {
            }
            column(GenarateLPO_LocalPartPurchaseRegister; "Local Part Purchase Register"."Genarate LPO")
            {
            }
            column(Float_LocalPartPurchaseRegister; "Local Part Purchase Register".Float)
            {
            }
            column(ProcurementApproved_LocalPartPurchaseRegister; "Local Part Purchase Register"."Procurement Approved")
            {
            }
            column(Closed_LocalPartPurchaseRegister; "Local Part Purchase Register".Closed)
            {
            }
            column(TimeDate7_LocalPartPurchaseRegister; "Local Part Purchase Register".TimeDate7)
            {
            }
            column(HODPayment_LocalPartPurchaseRegister; "Local Part Purchase Register"."HOD Payment")
            {
            }
            column(NameHODPayment_LocalPartPurchaseRegister; "Local Part Purchase Register"."Name HOD Payment")
            {
            }
            column(VoucherRaised_LocalPartPurchaseRegister; "Local Part Purchase Register"."Voucher Raised")
            {
            }
            column(GMApproval_LocalPartPurchaseRegister; "Local Part Purchase Register"."GM Approval")
            {
            }
            column(MDApproval_LocalPartPurchaseRegister; "Local Part Purchase Register"."MD Approval")
            {
            }
            column(OrderType_LocalPartPurchaseRegister; "Local Part Purchase Register"."Order Type")
            {
            }
            column(Rejected_LocalPartPurchaseRegister; "Local Part Purchase Register".Rejected)
            {
            }
            column(TCOFNo_LocalPartPurchaseRegister; "Local Part Purchase Register"."TCOF No.")
            {
            }
            column(RFQNo_LocalPartPurchaseRegister; "Local Part Purchase Register"."RFQ No.")
            {
            }
            column(SuppliersCode_LocalPartPurchaseRegister; "Local Part Purchase Register"."Suppliers Code")
            {
            }
            dataitem(DataItem75; Table70019)
            {
                DataItemLink = Document No.=FIELD(LPP No.);
                column(LineNo_LPPLine; "LPP Line"."Line No")
                {
                }
                column(DocumentNo_LPPLine; "LPP Line"."Document No.")
                {
                }
                column(OrderType_LPPLine; "LPP Line"."Order Type")
                {
                }
                column(ItemNo_LPPLine; "LPP Line"."Item No")
                {
                }
                column(ItemName_LPPLine; "LPP Line"."Item Name")
                {
                }
                column(Quantity_LPPLine; "LPP Line".Quantity)
                {
                }
                column(UnitCost_LPPLine; "LPP Line"."Unit Cost")
                {
                }
                column(Amount_LPPLine; "LPP Line".Amount)
                {
                }
                column(IncomingDocumentEntryNo_LPPLine; "LPP Line"."Incoming Document Entry No.")
                {
                }
                column(Preferred_LPPLine; "LPP Line".Preferred)
                {
                }
                column(Authorisation_LPPLine; "LPP Line".Authorisation)
                {
                }
                column(TotalLineItem_LPPLine; "LPP Line"."Total Line Item")
                {
                }
                column(TotalUnit_LPPLine; "LPP Line"."Total Unit")
                {
                }
                column(TotalAmount_LPPLine; "LPP Line"."Total Amount")
                {
                }
                column(Description_LPPLine; "LPP Line".Description)
                {
                }
                column(QuantityAvailable_LPPLine; "LPP Line"."Quantity Available")
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

