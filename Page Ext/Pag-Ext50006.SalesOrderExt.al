pageextension 50006 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(Control1900201301)
        {
            group(Approval)
            {
                Caption = 'Approval';

                field(To; Rec."1st Approval to")
                {
                    ApplicationArea = All;
                    Caption = 'To';
                }

                field(Name; Rec."1st Approver")
                {
                    ApplicationArea = All;
                }
                field("Send for Approval"; Rec."Send for Approval")
                {
                    ApplicationArea = All;
                }
                field(Sender; Rec.Sender)
                {
                    ApplicationArea = All;
                }
                field("Sent Time"; Rec."Sent Time")
                {
                    ApplicationArea = All;
                }
                field(Approved; Rec.Approved)
                {
                    ApplicationArea = All;
                }
                field("Approved Time"; Rec."Approved Time")
                {
                    ApplicationArea = All;
                }
                field("Approved By"; Rec."Approved By")
                {
                    ApplicationArea = All;
                }

            }

            group(OtherInfo)
            {
                Caption = 'Other Information';
                field("Order Type"; Rec."Order Type")
                {
                    ApplicationArea = All;
                }
                field("Include Accessory"; Rec."Include Accessory")
                {
                    ApplicationArea = All;
                }
                field("Customer Line Discount"; Rec."Customer Line discount")
                {
                    ApplicationArea = All;
                }

            }

        }

    }


    actions
    {
        addlast(Navigation)
        {
            group(Category11)
            {
                action("&Picking List")
                {
                    ApplicationArea = All;
                    ToolTip = 'Print a picking list for this transaction.';
                    Image = PrintChecklistReport;
                    PromotedCategory = Category11;
                    Promoted = true;

                    trigger OnAction()
                    begin
                        SalesHeader.SETRANGE(SalesHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50178, TRUE, TRUE, SalesHeader);
                    end;
                }
                action("Waybill - Parts")
                {
                    ApplicationArea = All;
                    Caption = 'Waybill - Parts';
                    Image = Print;
                    PromotedCategory = Category11;
                    Promoted = true;

                    trigger OnAction()
                    begin
                        Rec."Sales Time" := TIME;
                        SalesHeader.SETRANGE(SalesHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50033, TRUE, TRUE, SalesHeader);
                    end;
                }
                action("Picking List - Vehicle")
                {
                    ApplicationArea = All;
                    Caption = 'Picking List - Vehicle';
                    Ellipsis = true;
                    Image = Print;
                    PromotedCategory = Category11;
                    Promoted = true;


                    trigger OnAction()
                    begin
                        //IF "Sell-to Customer No." <> '' THEN  BEGIN
                        //  SalesLine.SETCURRENTKEY("Document No.","Sell-to Customer No.");
                        //  SalesLine.SETRANGE(SalesLine."Document No.","No.");
                        //  SalesLine.SETRANGE(SalesLine."Sell-to Customer No.","Sell-to Customer No." );
                        //  IF SalesLine.Rec.FindFirst() THEN
                        //    SalesLine.CALCSUMS("Outstanding Amount (LCY)");
                        //    SalesOrderAmount := SalesLine."Outstanding Amount (LCY)";
                        //  CustRec.GET("Sell-to Customer No.");
                        //  //IF CustRec."Credit Limit (LCY)" <> 0 THEN BEGIN
                        //  IF "Customer Posting Group" <> 'STAFF' THEN BEGIN
                        //  CustRec.CALCFIELDS("Balance (LCY)");
                        //  IF (CustRec."Balance (LCY)" + SalesOrderAmount) > CustRec."Credit Limit (LCY)" THEN
                        //    ERROR('Credit limit has been reach. So, you can not sell to this customer!');
                        //    END;
                        //END;


                        SalesHeader.SETRANGE(SalesHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50117, TRUE, TRUE, SalesHeader);
                    end;
                }
                action("Picking List - Pre-Owned Vehicle")
                {
                    ApplicationArea = All;
                    Caption = 'Picking List - Pre-Owned Vehicle';
                    Ellipsis = true;
                    Image = Print;
                    PromotedCategory = Category11;
                    Promoted = true;


                    trigger OnAction()
                    begin
                        SalesHeader.SETRANGE(SalesHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50438, TRUE, TRUE, SalesHeader);
                    end;
                }
                action("Manual Invoice")
                {
                    ApplicationArea = All;
                    Caption = 'Manual Invoice';
                    Image = Print;
                    PromotedCategory = Category11;
                    Promoted = true;


                    trigger OnAction()
                    begin
                        ERROR('Contact the Administrator');
                        SalesHeader.SETRANGE(SalesHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50439, TRUE, TRUE, SalesHeader);
                    end;
                }
                action("TCSC-Waybill")
                {
                    ApplicationArea = All;
                    Caption = 'TCSC - Waybill';
                    Image = Print;
                    PromotedCategory = Category11;
                    Promoted = true;


                    trigger OnAction()
                    begin
                        Rec."Sales Time" := TIME;
                        SalesHeader.SETRANGE(SalesHeader."No.", Rec."No.");
                        IF Rec.FindFirst() THEN
                            REPORT.RUNMODAL(50625, TRUE, TRUE, SalesHeader);
                    end;
                }


            }

        }
    }











    var

        SalesHeader: Record "Sales Header";

}
