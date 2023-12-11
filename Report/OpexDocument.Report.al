report 50552 "Opex Document"
{
    DefaultLayout = RDLC;
    RDLCLayout = './OpexDocument.rdlc';

    dataset
    {
        dataitem(DataItem1; Table70008)
        {
            RequestFilterFields = "No.";
            column(DocumentType_ProcurementHeader; "Procurement Header"."Document Type")
            {
            }
            column(No_ProcurementHeader; "Procurement Header"."No.")
            {
            }
            column(LPONo_ProcurementHeader; "Procurement Header"."LPO No.")
            {
            }
            column(RequesterCode_ProcurementHeader; "Procurement Header"."Requester Code")
            {
            }
            column(RequesterName_ProcurementHeader; "Procurement Header"."Requester Name")
            {
            }
            column(DepartmentCode_ProcurementHeader; "Procurement Header"."Department Code")
            {
            }
            column(RequesterDepartment_ProcurementHeader; "Procurement Header"."Requester Department")
            {
            }
            column(Date_ProcurementHeader; "Procurement Header".Date)
            {
            }
            column(AssetUserCode_ProcurementHeader; "Procurement Header"."Asset User Code")
            {
            }
            column(AssetUserName_ProcurementHeader; "Procurement Header"."Asset User Name")
            {
            }
            column(UserDepartmentCode_ProcurementHeader; "Procurement Header"."User Department Code")
            {
            }
            column(UserDepartmentName_ProcurementHeader; "Procurement Header"."User Department Name")
            {
            }
            column(AssetClassCode_ProcurementHeader; "Procurement Header"."Asset Class Code")
            {
            }
            column(AssetSubclassCode_ProcurementHeader; "Procurement Header"."Asset Sub-class Code")
            {
            }
            column(AssetDescription_ProcurementHeader; "Procurement Header"."Asset Description")
            {
            }
            column(PurchaseJustification_ProcurementHeader; "Procurement Header"."Purchase Justification")
            {
            }
            column(BudgetAmount_ProcurementHeader; "Procurement Header"."Budget Amount")
            {
            }
            column(ProposedPurchaseAmount_ProcurementHeader; "Procurement Header"."Proposed Purchase Amount")
            {
            }
            column(HODCode_ProcurementHeader; "Procurement Header"."HOD Code")
            {
            }
            column(HODName_ProcurementHeader; "Procurement Header"."HOD Name")
            {
            }
            column(Approved1_ProcurementHeader; "Procurement Header".Approved1)
            {
            }
            column(Approved2_ProcurementHeader; "Procurement Header".Approved2)
            {
            }
            column(OnHold1_ProcurementHeader; "Procurement Header"."On-Hold1")
            {
            }
            column(OnHold2_ProcurementHeader; "Procurement Header"."On-Hold2")
            {
            }
            column(Rejected1_ProcurementHeader; "Procurement Header".Rejected1)
            {
            }
            column(Rejected2_ProcurementHeader; "Procurement Header".Rejected2)
            {
            }
            column(Comment1_ProcurementHeader; "Procurement Header".Comment1)
            {
            }
            column(Comment2_ProcurementHeader; "Procurement Header".Comment2)
            {
            }
            column(Value_ProcurementHeader; "Procurement Header".Value)
            {
            }
            column(NoSeries_ProcurementHeader; "Procurement Header"."No. Series")
            {
            }
            column(UserID_ProcurementHeader; "Procurement Header"."User ID")
            {
            }
            column(RequestEntryNo_ProcurementHeader; "Procurement Header"."Request Entry No.")
            {
            }
            column(SendTo_ProcurementHeader; "Procurement Header"."Send To")
            {
            }
            column(Send_ProcurementHeader; "Procurement Header".Send)
            {
            }
            column(SentBy_ProcurementHeader; "Procurement Header"."Sent By")
            {
            }
            column(Approved3_ProcurementHeader; "Procurement Header".Approved3)
            {
            }
            column(Rejected3_ProcurementHeader; "Procurement Header".Rejected3)
            {
            }
            column(OnHold3_ProcurementHeader; "Procurement Header"."On-Hold3")
            {
            }
            column(Comment3_ProcurementHeader; "Procurement Header".Comment3)
            {
            }
            column(OpexType_ProcurementHeader; "Procurement Header"."Opex Type")
            {
            }
            column(CapexType_ProcurementHeader; "Procurement Header"."Capex Type")
            {
            }
            column(PurchaseType_ProcurementHeader; "Procurement Header"."Purchase Type")
            {
            }
            column(PostedInvoice_ProcurementHeader; "Procurement Header"."Posted Invoice")
            {
            }
            column(PostedPayments_ProcurementHeader; "Procurement Header"."Posted Payments")
            {
            }
            column(AdvancePayment_ProcurementHeader; "Procurement Header"."Advance Payment")
            {
            }
            column(InvoiceReceived_ProcurementHeader; "Procurement Header"."Invoice Received")
            {
            }
            column(AdvPaymtHOD_ProcurementHeader; "Procurement Header"."Adv. Paymt. HOD")
            {
            }
            column(AuthorizedbyHOD_ProcurementHeader; "Procurement Header"."Authorized by HOD")
            {
            }
            column(AdvPaymtAudit_ProcurementHeader; "Procurement Header"."Adv. Paymt. Audit")
            {
            }
            column(AuthorizedbyAudit_ProcurementHeader; "Procurement Header"."Authorized by Audit")
            {
            }
            column(ServiceDelivery1_ProcurementHeader; "Procurement Header"."Service Delivery1")
            {
            }
            column(ServiceDelivery2_ProcurementHeader; "Procurement Header"."Service Delivery2")
            {
            }
            column(ConfirmedBy1_ProcurementHeader; "Procurement Header"."Confirmed By1")
            {
            }
            column(ConfirmedBy2_ProcurementHeader; "Procurement Header"."Confirmed By2")
            {
            }
            column(BalPaymtHOD_ProcurementHeader; "Procurement Header"."Bal. Paymt. HOD")
            {
            }
            column(BalPaymtbyHOD_ProcurementHeader; "Procurement Header"."Bal. Paymt. by HOD")
            {
            }
            column(BalPaymtAudit_ProcurementHeader; "Procurement Header"."Bal. Paymt. Audit")
            {
            }
            column(BalPaymtbyAudit_ProcurementHeader; "Procurement Header"."Bal. Paymt. by Audit")
            {
            }
            column(HeadofDepartment_ProcurementHeader; "Procurement Header"."Head of Department")
            {
            }
            column(HeadofAudit_ProcurementHeader; "Procurement Header"."Head of Audit")
            {
            }
            column(GeneralManager_ProcurementHeader; "Procurement Header"."General Manager")
            {
            }
            column(ManagingDirector_ProcurementHeader; "Procurement Header"."Managing Director")
            {
            }
            column(Comment_ProcurementHeader; "Procurement Header".Comment)
            {
            }
            column(BalPaymtMD_ProcurementHeader; "Procurement Header"."Bal. Paymt. MD")
            {
            }
            column(BalPaymtbyMD_ProcurementHeader; "Procurement Header"."Bal. Paymt. by MD")
            {
            }
            column(TotalAmount_ProcurementHeader; "Procurement Header"."Total Amount")
            {
            }
            column(BalanceAmount_ProcurementHeader; "Procurement Header"."Balance Amount")
            {
            }
            column(BalPaymtGM_ProcurementHeader; "Procurement Header"."Bal. Paymt. GM")
            {
            }
            column(BalPaymtbyGM_ProcurementHeader; "Procurement Header"."Bal. Paymt. by GM")
            {
            }
            column(NameHOD_ProcurementHeader; "Procurement Header"."Name HOD")
            {
            }
            column(NameHeadofAudit_ProcurementHeader; "Procurement Header"."Name Head of Audit")
            {
            }
            column(NameGM_ProcurementHeader; "Procurement Header"."Name GM")
            {
            }
            column(NameMD_ProcurementHeader; "Procurement Header"."Name MD")
            {
            }
            column(VoucherRaised_ProcurementHeader; "Procurement Header"."Voucher Raised")
            {
            }
            column(MovetoLPO_ProcurementHeader; "Procurement Header"."Move to LPO")
            {
            }
            column(AdvPymtRequired_ProcurementHeader; "Procurement Header"."Adv. Pymt. Required")
            {
            }
            column(DateTime_ProcurementHeader; "Procurement Header".DateTime)
            {
            }
            column(TimeDate1_ProcurementHeader; "Procurement Header".TimeDate1)
            {
            }
            column(TimeDate2_ProcurementHeader; "Procurement Header".TimeDate2)
            {
            }
            column(TimeDate3_ProcurementHeader; "Procurement Header".TimeDate3)
            {
            }
            column(TimeDate4_ProcurementHeader; "Procurement Header".TimeDate4)
            {
            }
            column(TimeDate5_ProcurementHeader; "Procurement Header".TimeDate5)
            {
            }
            column(TimeDate6_ProcurementHeader; "Procurement Header".TimeDate6)
            {
            }
            column(TimeDate7_ProcurementHeader; "Procurement Header".TimeDate7)
            {
            }
            column(TimeDate8_ProcurementHeader; "Procurement Header".TimeDate8)
            {
            }
            column(TimeDate9_ProcurementHeader; "Procurement Header".TimeDate9)
            {
            }
            column(TimeDate10_ProcurementHeader; "Procurement Header".TimeDate10)
            {
            }
            column(TimeDate11_ProcurementHeader; "Procurement Header".TimeDate11)
            {
            }
            column(TimeDate12_ProcurementHeader; "Procurement Header".TimeDate12)
            {
            }
            column(Compliance_ProcurementHeader; "Procurement Header".Compliance)
            {
            }
            column(BalancePaymtAppr_ProcurementHeader; "Procurement Header"."Balance Paymt. Appr.")
            {
            }
            column(BalancePaymt_ProcurementHeader; "Procurement Header"."Balance Paymt.")
            {
            }
            column(Closed_ProcurementHeader; "Procurement Header".Closed)
            {
            }
            column(Vendor_ProcurementHeader; "Procurement Header".Vendor)
            {
            }
            column(AdvanceVoucher_ProcurementHeader; "Procurement Header"."Advance Voucher")
            {
            }
            column(Reject_ProcurementHeader; "Procurement Header".Reject)
            {
            }
            column(PostedAdvancePayment_ProcurementHeader; "Procurement Header"."Posted Advance Payment")
            {
            }
            column(PaymentApprovalOnly_ProcurementHeader; "Procurement Header"."Payment Approval Only")
            {
            }
            column(ModeofPayment_ProcurementHeader; "Procurement Header"."Mode of Payment")
            {
            }
            column(ListMD_ProcurementHeader; "Procurement Header".ListMD)
            {
            }
            column(ListGM_ProcurementHeader; "Procurement Header".ListGM)
            {
            }
            column(OnholdTimeDate1_ProcurementHeader; "Procurement Header".OnholdTimeDate1)
            {
            }
            column(OnholdTimeDate2_ProcurementHeader; "Procurement Header".OnholdTimeDate2)
            {
            }
            column(OnholdTimeDate3_ProcurementHeader; "Procurement Header".OnholdTimeDate3)
            {
            }
            column(OnholdTimeDate4_ProcurementHeader; "Procurement Header".OnholdTimeDate4)
            {
            }
            column(OnholdTimeDate5_ProcurementHeader; "Procurement Header".OnholdTimeDate5)
            {
            }
            column(OnholdTimeDate6_ProcurementHeader; "Procurement Header".OnholdTimeDate6)
            {
            }
            column(OnholdTimeDate7_ProcurementHeader; "Procurement Header".OnholdTimeDate7)
            {
            }
            column(OnholdTimeDate8_ProcurementHeader; "Procurement Header".OnholdTimeDate8)
            {
            }
            column(OnholdTimeDate9_ProcurementHeader; "Procurement Header".OnholdTimeDate9)
            {
            }
            column(OnholdTimeDate10_ProcurementHeader; "Procurement Header".OnholdTimeDate10)
            {
            }
            column(OnholdTimeDate11_ProcurementHeader; "Procurement Header".OnholdTimeDate11)
            {
            }
            column(OnholdTimeDate12_ProcurementHeader; "Procurement Header".OnholdTimeDate12)
            {
            }
            column(HODonHold1_ProcurementHeader; "Procurement Header".HODonHold1)
            {
            }
            column(HOAonHold2_ProcurementHeader; "Procurement Header".HOAonHold2)
            {
            }
            column(GMonHold3_ProcurementHeader; "Procurement Header".GMonHold3)
            {
            }
            column(MDonHold4_ProcurementHeader; "Procurement Header".MDonHold4)
            {
            }
            column(AdvHODonHold5_ProcurementHeader; "Procurement Header".AdvHODonHold5)
            {
            }
            column(AdvHOAonHold6_ProcurementHeader; "Procurement Header".AdvHOAonHold6)
            {
            }
            column(ComReqonHold7_ProcurementHeader; "Procurement Header".ComReqonHold7)
            {
            }
            column(BalpayHODonHold8_ProcurementHeader; "Procurement Header".BalpayHODonHold8)
            {
            }
            column(ComAuditonHold9_ProcurementHeader; "Procurement Header".ComAuditonHold9)
            {
            }
            column(BalpayHOAuditonHold10_ProcurementHeader; "Procurement Header".BalpayHOAuditonHold10)
            {
            }
            column(BalpayGMonHold11_ProcurementHeader; "Procurement Header".BalpayGMonHold11)
            {
            }
            column(BalpayMDonHold12_ProcurementHeader; "Procurement Header".BalpayMDonHold12)
            {
            }
            column(Countskip_ProcurementHeader; "Procurement Header"."Count skip")
            {
            }
            column(PaymentNo_ProcurementHeader; "Procurement Header"."Payment No.")
            {
            }
            column(MDpaymentApproval_ProcurementHeader; "Procurement Header".MDpaymentApproval)
            {
            }
            column(TCOFNo_ProcurementHeader; "Procurement Header"."TCOF No.")
            {
            }
            column(LPPCreated_ProcurementHeader; "Procurement Header"."LPP Created")
            {
            }
            column(ApproverN_ProcurementHeader; "Procurement Header".ApproverN)
            {
            }
            column(ApproverNEmail_ProcurementHeader; "Procurement Header"."ApproverN Email")
            {
            }
            column(InitiatorN_ProcurementHeader; "Procurement Header".InitiatorN)
            {
            }
            column(InitiatorNEmail_ProcurementHeader; "Procurement Header"."InitiatorN Email")
            {
            }
            column(SenderN_ProcurementHeader; "Procurement Header".SenderN)
            {
            }
            column(SenderNEmail_ProcurementHeader; "Procurement Header"."SenderN Email")
            {
            }
            dataitem(DataItem138; Table70001)
            {
                DataItemLink = Document Type=FIELD(Document Type),
                               Document No.=FIELD(No.);
                DataItemTableView = WHERE(Document Type=FILTER(Opex));
                column(DocumentType_ProcurementLine;"Procurement Line"."Document Type")
                {
                }
                column(DocumentNo_ProcurementLine;"Procurement Line"."Document No.")
                {
                }
                column(LineNo_ProcurementLine;"Procurement Line"."Line No.")
                {
                }
                column(VendorName_ProcurementLine;"Procurement Line"."Vendor Name")
                {
                }
                column(Address_ProcurementLine;"Procurement Line".Address)
                {
                }
                column(Amount_ProcurementLine;"Procurement Line".Amount)
                {
                }
                column(Remark_ProcurementLine;"Procurement Line".Remark)
                {
                }
                column(Preferred_ProcurementLine;"Procurement Line".Preferred)
                {
                }
                column(IncomingDocumentEntryNo_ProcurementLine;"Procurement Line"."Incoming Document Entry No.")
                {
                }
                column(Description_ProcurementLine;"Procurement Line".Description)
                {
                }
                column(LPONo_ProcurementLine;"Procurement Line"."LPO No.")
                {
                }
                column(PaymentTerms_ProcurementLine;"Procurement Line"."Payment Terms")
                {
                }
                column(VendorNo_ProcurementLine;"Procurement Line"."Vendor No.")
                {
                }
                column(AdvancePayment_ProcurementLine;"Procurement Line"."Advance Payment")
                {
                }
                column(Balance_ProcurementLine;"Procurement Line".Balance)
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

