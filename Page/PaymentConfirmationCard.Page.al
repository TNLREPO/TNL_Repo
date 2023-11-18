page 50181 "Payment Confirmation Card"
{
    PageType = Card;
    SourceTable = Table70025;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Current Pending Person"; "Current Pending Person")
                {
                    Editable = false;
                }
                field("Request No."; "Request No.")
                {
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
                field(Reason; Reason)
                {
                    ShowMandatory = true;
                }
                field("Request Type"; "Request Type")
                {
                }
                field("TNL Service Centre"; "TNL Service Centre")
                {
                    Caption = 'Dealer Service Centre';
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
                field("Reference No."; "Reference No.")
                {
                }
                field("Responsible Driver"; "Responsible Driver")
                {
                }
            }
            group("Requester's Action")
            {
                field("1st Approval"; "1st Approval")
                {
                    Caption = 'Send To ADM';
                }
                field("1st Approver"; "1st Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
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
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                    Visible = true;
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Job Satisfactory")
            {
                field("Job Done"; "Job Done")
                {
                    Caption = 'Job Done';
                }
                field("Job Done Id"; "Job Done Id")
                {
                    Caption = 'User Id';
                    Editable = false;
                }
                field("Job Done Name"; "Job Done Name")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("Job Done Time"; "Job Done Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Invoice Confirmation")
            {
                field("Invoice Received"; "Invoice Received")
                {
                    Caption = 'Invoice Collected ?';
                }
                field("Collector Id"; "Collector Id")
                {
                    Caption = 'Collector Id';
                    Editable = false;
                }
                field("Collector Name"; "Collector Name")
                {
                    Caption = 'Collector Name';
                    Editable = false;
                }
                field("Collection Time"; "Collection Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Payment Confirmation")
            {
                field("Payment Confirmed"; "Payment Confirmed")
                {
                    Caption = 'Payment Confirmed ?';
                }
                field("Payment Approval"; "Payment Approval")
                {
                    Caption = 'User Id';
                    Editable = false;
                }
                field("Payment Approver"; "Payment Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("Payment Approval Time"; "Payment Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Transaction Closure")
            {
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
                            PaymentReq.INIT;
                            PaymentReq."Document Type" := PaymentReq."Document Type"::Opex;
                            //PaymentReq.MDpaymentApproval := "Request No.";
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
        IF "Job Done" = "Job Done"::Satisfactory THEN
            EnablePayment := TRUE;
    end;

    var
        Edit1: Boolean;
        Edit2: Boolean;
        Edit3: Boolean;
        PaymentReq: Record 70008;
        EnablePayment: Boolean;
}

