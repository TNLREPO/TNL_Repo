page 50219 "Approved Request-Card"
{
    PageType = Card;
    SourceTable = Table70026;

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
                    Visible = false;
                }
                field("Auto Show Location"; "Auto Show Location")
                {
                }
                field(Make; Make)
                {
                }
                field(Model; Model)
                {
                }
                field("Registration No."; "Registration No.")
                {
                    Visible = false;
                }
                field("KM Covered"; "KM Covered")
                {
                }
                field("Reference No."; "Reference No.")
                {
                }
                field("Responsible Dealer"; "Responsible Dealer")
                {
                }
            }
            group("Event Manager's Action")
            {
                field("1st Approval"; "1st Approval")
                {
                    Caption = 'Send To PDI';
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
            group("PDI Section Action")
            {
                field("Related Job"; "Related Job")
                {
                }
                field("2nd Approval"; "2nd Approval")
                {
                    Caption = 'Send To Event Mngr.';
                    Visible = true;
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                    Visible = true;
                }
                field("1st Approval Status"; "1st Approval Status")
                {
                    Caption = 'Action';
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Event Mngr's Action on Repair")
            {
                Visible = true;
                field("Job Done"; "Job Done")
                {
                    Caption = 'Job Done';
                }
                field("Job Done Time"; "Job Done Time")
                {
                }
                field("Job Done Id"; "Job Done Id")
                {
                }
                field("Job Done Name"; "Job Done Name")
                {
                }
            }
            group("Payment Confirmation")
            {
                Caption = 'Payment Confirmation';
                field("Send for Payment Approval"; "Send for Payment Approval")
                {
                    Caption = 'Payment Approved';
                }
                field("Payment Approval"; "Payment Approval")
                {
                    Caption = 'Payment Approver';
                    Editable = false;
                }
                field("Payment Approval Time"; "Payment Approval Time")
                {
                    Caption = 'Payment Approval Date';
                    Editable = false;
                }
            }
            group("`")
            {
                Caption = 'Job Closure';
                field(Close; Close)
                {
                }
                field("Job Closing Officer"; "Job Closing Officer")
                {
                }
                field("Close Date"; "Close Date")
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group(Print)
            {
                action(Printing)
                {
                    Caption = 'P&rint';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                }
                action("Payment Requisition")
                {
                    Caption = 'Payment Requisition';
                    Image = Payment;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;

                    trigger OnAction()
                    begin
                        // IF CONFIRM('Do you want to raise Payment Requisition')THEN BEGIN
                        //    PaymentReq.INIT;
                        //    PaymentReq."Document Type" := PaymentReq."Document Type"::Requisition;
                        //    //PaymentReq."Work Order No" := "Request No.";
                        //    PaymentReq.INSERT(TRUE);
                        //    COMMIT;
                        //    //PaymentReq.SETRANGE("OpexNo.","Request No.");
                        //    PAGE.RUNMODAL(70126,PaymentReq);
                        // END;



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

    var
        Edit1: Boolean;
        Edit2: Boolean;
        Edit3: Boolean;
        PaymentReq: Record 70008;
        EnablePayment: Boolean;
}

