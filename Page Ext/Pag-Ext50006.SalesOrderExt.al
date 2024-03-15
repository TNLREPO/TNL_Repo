pageextension 50006 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        //addbefore(Control1900201301)
        addbefore("Invoice Details")
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
                    Editable = false;
                }
                field("Send for Approval"; Rec."Send for Approval")
                {
                    ApplicationArea = All;
                }
                field(Sender; Rec.Sender)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Sent Time"; Rec."Sent Time")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Approved; Rec.Approved)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin

                        /*     IF (Rec."Shortcut Dimension 1 Code" = '05PARTS') OR (Rec."Shortcut Dimension 1 Code" = '') THEN
                                EXIT;

                            UserRec2.GET(USERID);
                            IF UserRec2."Sales Line Approval" = FALSE THEN
                                ERROR('You dont have the right to approve this order');

                            SalesLine.SETCURRENTKEY("Document No.", "No.");
                            SalesLine.SETRANGE("Document No.", "No.");
                            IF SalesLine.FINDFIRST THEN BEGIN
                                REPEAT
                                    //SaleLineDiscount.GET(SalesLine."No.");
                                    SaleLineDiscount.SETCURRENTKEY(Code);
                                    SaleLineDiscount.SETRANGE(Code, SalesLine."No.");
                                    SaleLineDiscount.FINDFIRST;

                                    IF SalesLine."Line Discount %" > SaleLineDiscount."Line Discount %" THEN
                                        UserRec2.TESTFIELD("Sales Line Limit", TRUE);
                                UNTIL SalesLine.NEXT = 0;
                            END; */

                    end;
                }
                field("Approved Time"; Rec."Approved Time")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Approved By"; Rec."Approved By")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

            }

            group(OtherInfo)
            {
                Caption = 'Other Information';

                field("Customer Line Discount"; Rec."Customer Line discount")
                {
                    ApplicationArea = All;
                }

            }

        }
        addafter("Posting Description")
        {
            field("Order Type"; Rec."Order Type")
            {
                ApplicationArea = All;
            }
            field("Include Accessory"; Rec."Include Accessory")
            {
                ApplicationArea = All;

                trigger OnValidate()
                var

                begin
                    TotalWithAccessory := 0;

                    SalesLine3.SETCURRENTKEY("Document No.");
                    SalesLine3.SETRANGE("Document No.", Rec."No.");
                    IF SalesLine3.FINDLAST THEN
                        LineNo := SalesLine3."Line No.";

                    SalesLine.RESET;
                    SalesLine.SETCURRENTKEY("Document No.", Accessory);
                    SalesLine.SETRANGE("Document No.", Rec."No.");
                    SalesLine.SETRANGE(Accessory, TRUE);
                    IF SalesLine.FINDFIRST THEN BEGIN
                        REPEAT
                            LineNo += 10000;
                            IF SalesLine."Location Code" IN ['BLORE1', 'BLEXHIBTN', 'BLCONSGNMT'] THEN BEGIN
                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine.Type;
                                IF SalesLine.Degree = '45' THEN
                                    //SalesLine2.VALIDATE("No.",'XS242-TOD01'); JA
                                    SalesLine2.VALIDATE("No.", 'F2440-TOD72');
                                IF SalesLine.Degree = '180' THEN
                                    SalesLine2.VALIDATE("No.", 'XS242-TOD02');
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;

                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine2.Type::Item;
                                //SalesLine2.VALIDATE("No.",'S4201-TOD00');      JA
                                SalesLine2.VALIDATE("No.", 'S3736-TD218');
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;

                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine2.Type::Item;
                                ItemRec2.SETCURRENTKEY(Degree, "Item Color");
                                ItemRec2.SETRANGE(Degree, SalesLine.Degree);
                                ItemRec2.SETRANGE("Item Color", SalesLine.Colour);
                                IF ItemRec2.FINDFIRST THEN
                                    SalesLine2.VALIDATE("No.", ItemRec2."No.");
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;

                            END;

                            IF SalesLine."Location Code" IN ['ACC-ORE1', 'ACC-CONSG', 'ACC-EXHBT'] THEN BEGIN
                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine2.Type::Item;
                                IF SalesLine.Degree = '45' THEN
                                    // SalesLine2.VALIDATE("No.",'XS242-TOD01'); JA
                                    SalesLine2.VALIDATE("No.", 'F2440-TOD72');
                                IF SalesLine.Degree = '180' THEN
                                    SalesLine2.VALIDATE("No.", 'XS242-TOD02');
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;

                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine2.Type::Item;
                                SalesLine2.VALIDATE("No.", 'S3736-TD218');
                                // SalesLine2.VALIDATE("No.",'S4201-TOD00');  JA
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;

                                //Degree and color
                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine2.Type::Item;
                                ItemRec2.SETCURRENTKEY(Degree, "Item Color");
                                ItemRec2.SETRANGE(Degree, SalesLine.Degree);
                                ItemRec2.SETRANGE("Item Color", SalesLine.Colour);
                                IF ItemRec2.FINDFIRST THEN
                                    SalesLine2.VALIDATE("No.", ItemRec2."No.");
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;
                            END;
                        UNTIL SalesLine.NEXT = 0;
                    END;

                    SalesLine.RESET;
                    SalesLine.SETCURRENTKEY("Document No.", Accessory);
                    SalesLine.SETRANGE("Document No.", Rec."No.");
                    SalesLine.SETRANGE(Accessory, TRUE);
                    IF SalesLine.FINDFIRST THEN BEGIN
                        REPEAT
                            LineNo += 10000;
                            IF SalesLine."Location Code" IN ['CWORE1', 'CWEXHIBTN', 'CPORE1'] THEN BEGIN
                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine.Type;
                                SalesLine2.VALIDATE("No.", 'S47B0-TOD2K');
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;

                                SalesLine2.INIT;
                                SalesLine2."Document Type" := SalesLine."Document Type";
                                SalesLine2."Document No." := SalesLine."Document No.";
                                SalesLine2."Line No." := LineNo;
                                SalesLine2.Type := SalesLine2.Type::Item;
                                SalesLine2.VALIDATE("No.", 'S35B0-TOD2K');
                                SalesLine2."Location Code" := 'BLORE1';
                                SalesLine2.VALIDATE(Quantity, SalesLine.Quantity);
                                SalesLine2.INSERT(TRUE);
                                LineNo += 10000;
                            END;
                        UNTIL SalesLine.NEXT = 0;

                    END;

                    IF Rec."Include Accessory" = FALSE THEN BEGIN
                        SalesLine4.SETRANGE("No.", 'XS242-TOD01');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS242-TOD02');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;


                        SalesLine4.SETRANGE("No.", 'S4201-TOD00');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'F3712-TOD02');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'S35B0-TOD2K');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'S47B0-TOD2K');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS371-TOD76');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS371-TOD24');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS371-TOD75');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS371-TOD57');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS374-TODW1');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS374-TOD31');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS374-TOD11');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS374-TODM1');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;

                        SalesLine4.SETRANGE("No.", 'XS374-TOD04');
                        IF SalesLine4.FINDFIRST THEN
                            SalesLine4.DELETEALL;



                    END;

                end;
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
        UserRec2: Record "User Setup";
        SalesLine: Record "Sales Line";
        SalesLine2: Record "Sales Line";
        SalesLine3: Record "Sales Line";
        SalesLine4: Record "Sales Line";
        SaleLineDiscount: Record "Price List Line";
        LineNo: Integer;
        ItemRec2: Record Item;
        TotalWithAccessory: Decimal;





}
