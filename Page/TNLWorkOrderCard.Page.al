page 50036 "TNL-Work Order Card"
{
    PageType = Card;
    SourceTable = Table70025;

    layout
    {
        area(content)
        {
            group(General)
            {
                Editable = "General toEditable";
                field("Current Pending Person"; "Current Pending Person")
                {
                    Editable = false;
                }
                field("Request No."; "Request No.")
                {
                    Caption = 'Work Order No.';

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                    Editable = false;
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
                {
                    Caption = 'Department';
                    Editable = false;
                }
                field("TNL Service Centre"; "TNL Service Centre")
                {
                    Caption = 'Dealer Service Centre';
                }
                field("Request Location"; "Request Location")
                {
                }
                field("Request Type"; "Request Type")
                {
                }
                field(Reason; Reason)
                {
                    ShowMandatory = true;
                }
                field(Make; Make)
                {
                }
                field(Model; Model)
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("KM Covered"; "KM Covered")
                {
                }
                field("Responsible Driver"; "Responsible Driver")
                {
                }
            }
            group("Requester's Action")
            {
                Editable = Requester_toEditable;
                field("Send for Approval"; "Send for Approval")
                {
                    Caption = 'Send';
                }
                field("Sent Time"; "Sent Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("ADMIN's Action")
            {
                Editable = "ADMIN's Action toEditable";
                Visible = "ADMIN's Action";
                field("Related Job"; "Related Job")
                {
                }
                field("1st Approval Status"; "1st Approval Status")
                {
                    Caption = 'Action';
                }
                field("2nd Approval"; "2nd Approval")
                {
                    Caption = 'Approval Id';
                    Editable = false;
                    Visible = true;
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
                field("Admin Comment"; "Admin Comment")
                {
                    ShowMandatory = true;
                    Visible = false;
                }
            }
            group("Send Dealer Estimate ")
            {
                Editable = SendealerEst_toEditable;
                Visible = SendealerEstimate;
                field("Send Estimate"; "Send Estimate")
                {
                }
                field("Part not Avaiilable in TNL Inventoy"; "Items Value")
                {
                    Caption = 'Part not Avaiilable in TNL Inventoy';
                }
                field("Labour Value"; "Labour Value")
                {
                }
                field("VAT Amount"; "VAT Amount")
                {
                }
                field("Total Amount"; "Total Amount")
                {
                }
                field("Incoming Document Entry No."; "Incoming Document Entry No.")
                {
                    Caption = 'Document Link';

                    trigger OnAssistEdit()
                    begin
                        IF "Incoming Document Entry No." > 0 THEN
                            HYPERLINK(GetIncomingDocumentURL);
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IncomingDocument.SETRANGE("Entry No.", "Incoming Document Entry No.");
                        IF PAGE.RUNMODAL(0, IncomingDocument) = ACTION::LookupOK THEN
                            "Incoming Document Entry No." := IncomingDocument."Entry No.";
                    end;
                }
                field("Estimate Sender Time"; "Estimate Sender Time")
                {
                }
                field("Estimate Sender Name"; "Estimate Sender Name")
                {
                }
                field("Estimate Sender ID"; "Estimate Sender ID")
                {
                }
                field(Comment; Comment)
                {
                }
            }
            group("Estimate Comformation")
            {
                Editable = Estimate_toEditable;
                Visible = Estimate_Visible;
                field("2nd Approval Status"; "2nd Approval Status")
                {
                    Caption = 'Estimate Approval Status';
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Estimate Approver';
                }
                field("2nd Approval Time"; "2nd Approval Time")
                {
                    Caption = 'Estimate Approval Time';
                }
            }
            group("Send Invoice for Confirmation")
            {
                Editable = InvoiceCollected_toEditable;
                Visible = "Invoice Confirmation";
                field("Incoming Document Entry No.1"; "Incoming Document Entry No.1")
                {

                    trigger OnAssistEdit()
                    begin
                        IF "Incoming Document Entry No.1" > 0 THEN
                            HYPERLINK(GetIncomingDocumentURL1);
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IncomingDocument2.SETRANGE("Entry No.", "Incoming Document Entry No.1");
                        IF PAGE.RUNMODAL(0, IncomingDocument2) = ACTION::LookupOK THEN
                            "Incoming Document Entry No.1" := IncomingDocument2."Entry No.";
                    end;
                }
                field("Job Done"; "Job Done")
                {
                    Caption = 'Job Done';
                }
                field(Description; Description)
                {
                    Visible = false;
                }
                field("Send Invoice File"; "Send Invoice File")
                {
                }
                field("Send Invoice ID"; "Send Invoice ID")
                {
                }
                field("Send Invoice Name"; "Send Invoice Name")
                {
                }
                field("Send Invoice Time"; "Send Invoice Time")
                {
                }
            }
            group("Invoice Receive Confirmation")
            {
                Editable = InvColl_toEditable;
                Visible = InvColl_Visible;
                field("Invoice Received"; "Invoice Received")
                {
                }
                field("Collector Id"; "Collector Id")
                {
                }
                field("Collector Name"; "Collector Name")
                {
                }
                field("Collection Time"; "Collection Time")
                {
                }
                field("Payment Confirmed"; "Payment Confirmed")
                {
                }
            }
            group("Transaction Closure")
            {
                Editable = TransactionClose_toEditable;
                Visible = "Transaction Close_Visible";
                field("Payment Raised"; "Payment Raised")
                {
                    Caption = 'Check Issued';
                }
                field("Transaction Close"; "Transaction Close")
                {
                    Caption = 'Transaction Close ?';
                }
                field("Close User Id"; "Close User Id")
                {
                    Caption = 'User Id';
                    Editable = false;
                }
                field("Closer Name"; "Closer Name")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("Close Time"; "Close Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group()
            {
                action("Payment Requisition")
                {
                    Caption = 'Payment Requisition';
                    Enabled = EnablePayment;
                    Image = Payment;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        IF CONFIRM('Do you want to raise Payment Requisition') THEN BEGIN

                            "Payment Confirmed" := TRUE;
                            UserSetup2.GET(USERID);
                            "Payment Approval" := UserSetup2."User ID";
                            "Payment Approver" := UserSetup2.Name;
                            "Payment Approval Time" := CURRENTDATETIME;


                            PaymentReq.INIT;
                            PaymentReq."Document Type" := PaymentReq."Document Type"::Opex;
                            PaymentReq."TCOF No." := "Request No.";
                            PaymentReq.INSERT(TRUE);
                            COMMIT;
                            //PaymentReq.SETRANGE("OpexNo.","Request No.");
                            PAGE.RUNMODAL(70126, PaymentReq);
                        END;
                    end;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        EnablePayment := FALSE;
        IF "Invoice Received" = TRUE THEN
            EnablePayment := TRUE;


        IF "Send for Approval" = TRUE THEN
            Requester_toEditable := FALSE

        ELSE
            Requester_toEditable := TRUE;


        IF "Send for Approval" = TRUE THEN
            "General toEditable" := FALSE
        ELSE
            "General toEditable" := TRUE;

        IF "Send for Approval" = TRUE THEN BEGIN
            "ADMIN's Action" := TRUE;
            "ADMIN's Action toEditable" := TRUE;

        END;


        IF "1st Approval Status" = "1st Approval Status"::Approved THEN
            "ADMIN's Action toEditable" := FALSE

        ELSE
            "ADMIN's Action toEditable" := TRUE;

        IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
            Requester_toEditable := FALSE;
            SendealerEstimate := TRUE;
            SendealerEst_toEditable := TRUE;

        END;

        IF "Send Estimate" = TRUE THEN BEGIN
            Estimate_Visible := TRUE;
            Estimate_toEditable := TRUE;
            //  SendealerEst_toEditable := FALSE;
        END;


        IF "2nd Approval Status" = "2nd Approval Status"::Approved THEN BEGIN

            SendealerEst_toEditable := FALSE;
            Estimate_toEditable := FALSE;
        END

        ELSE
            SendealerEst_toEditable := TRUE;


        IF "2nd Approval Status" = "2nd Approval Status"::" " THEN
            "Invoice Confirmation" := FALSE;

        //ELSE

        //     Estimate_toEditable := TRUE;





        IF "2nd Approval Status" = "2nd Approval Status"::Approved THEN BEGIN

            "Invoice Confirmation" := TRUE;
            InvoiceCollected_toEditable := TRUE;

            //    "Job Satisfactory" := TRUE;
            //    "Job Done toEditable" := TRUE;

        END;


        //IF "Job Done" = "Job Done"::Satisfactory THEN BEGIN
        //  "Job Done toEditable" := FALSE;
        //   "Invoice Confirmation" := TRUE;
        //   InvoiceCollected_toEditable := TRUE;
        //END;

        IF "Send Invoice File" = TRUE THEN BEGIN
            InvoiceCollected_toEditable := FALSE;
            InvColl_Visible := TRUE;
            InvColl_toEditable := TRUE;

        END;

        IF "Invoice Received" = TRUE THEN BEGIN
            InvColl_toEditable := FALSE;
            "Payment Confirmation" := TRUE;
            PaymentConfir_toEditable := TRUE;
            "Transaction Close_Visible" := TRUE;
            TransactionClose_toEditable := TRUE;
        END;

        //IF "Payment Confirmed" = TRUE THEN BEGIN
        //  PaymentConfir_toEditable := FALSE;
        //  "Transaction Close_Visible" := TRUE;
        //  TransactionClose_toEditable := TRUE;
        //END;



        IF "Transaction Close" = TRUE THEN
            TransactionClose_toEditable := FALSE;



    end;

    var
        Edit1: Boolean;
        Edit2: Boolean;
        Edit3: Boolean;
        PaymentReq: Record 70008;
        EnablePayment: Boolean;
        "Requester's Action": Boolean;
        "ADMIN's Action": Boolean;
        "Job Satisfactory": Boolean;
        "Invoice Confirmation": Boolean;
        "Payment Confirmation": Boolean;
        "Transaction Closure": Boolean;
        [InDataSet]
        "1st Approval toEditable": Boolean;
        [InDataSet]
        "2nd Approval toEditable": Boolean;
        [InDataSet]
        "Send for ApprovalEditable": Boolean;
        "1st Approval StatusEditable": Boolean;
        "2nd Approval StatusEditable": Boolean;
        "Job Done toEditable": Boolean;
        "1st Approval_Visible": Integer;
        "1st Approv Status_Visible": Boolean;
        "Job Done_Visible": Boolean;
        InvoiceCollected_toEditable: Boolean;
        "Payment Confirmed_Visible": Boolean;
        "Transaction Close_Visible": Boolean;
        "General toEditable": Boolean;
        "ADMIN's Action toEditable": Boolean;
        UserSetup2: Record 91;
        IncomingDocument: Record 130;
        IncomingDocument2: Record 130;
        Estimate_Visible: Boolean;
        Estimate_toEditable: Boolean;
        PaymentConfir_toEditable: Boolean;
        Requester_toEditable: Boolean;
        TransactionClose_toEditable: Boolean;
        SendealerEstimate: Boolean;
        SendealerEst_toEditable: Boolean;
        InvColl_Visible: Boolean;
        InvColl_toEditable: Boolean;
}

