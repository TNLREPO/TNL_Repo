page 50117 "Search Tracker Card"
{
    PageType = Card;
    SourceTable = Table50095;

    layout
    {
        area(content)
        {
            group()
            {
                field("Search Code"; "Search Code")
                {
                    Editable = false;
                }
                field("Request by"; "Request by")
                {
                    Caption = 'Requesting  Customer';
                    TableRelation = Customer.No.;

                    trigger OnValidate()
                    begin
                        IF CustRec.GET(ReqBy) THEN BEGIN
                           ReqName := CustRec.Name;
                           ReqAdd := CustRec.Address;
                           ReqTel := CustRec."Phone No.";
                        END;
                    end;
                }
                field("Request Customer Name";"Request Customer Name")
                {
                    Caption = 'Customer Name';
                }
                field("Request Customer Address";"Request Customer Address")
                {
                    Caption = 'Customer Address';
                }
                field("Request phone";"Request phone")
                {
                    Caption = 'Contact Phone';
                }
                field("Model No.";"Model No.")
                {
                }
                field("Quantity Supplied";"Quantity Supplied")
                {
                    Caption = 'Qty Supplied';
                    DecimalPlaces = 0:0;

                    trigger OnValidate()
                    begin
                        IF ReqQty > (AvaQty + PurQTy - SaleQty) THEN
                          MESSAGE('You Dont Have Enough Quantity in stock');
                    end;
                }
                field("Record Locked";"Record Locked")
                {
                }
                field(Status;Status)
                {
                }
                field("Non Specification";"Non Specification")
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("Order Type";"Order Type")
                {
                }
                field("Document No.";"Document No.")
                {
                    Editable = false;
                }
            }
            part("Search Tracker Entries";50116)
            {
                SubPageLink = Search Code=FIELD(Search Code);
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(List)
            {
                Caption = 'List';
                action("List Order Detail")
                {
                    Caption = 'List Order Detail';
                    RunObject = Page 50110;
                                    RunPageLink = Field30=FIELD(Search Code);
                    RunPageOnRec = true;
                    ShortCutKey = 'Shift+Ctrl+L';
                }
            }
        }
        area(processing)
        {
            action("Update Page")
            {
                Caption = 'Update Page';
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    CustRec.SETRANGE("No.","Request by");
                    IF CustRec.FINDFIRST THEN BEGIN
                      REPEAT
                        VALIDATE("Request by");
                      UNTIL CustRec.NEXT = 0;
                    END;
                end;
            }
            action("Generate Sales Order")
            {
                Caption = 'Generate Sales Order';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    CreateInvoice(1);
                    MESSAGE('Sales order has been generated!');
                end;
            }
            action("Generate Quote")
            {
                Caption = 'Generate Quote';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                RunPageOnRec = true;

                trigger OnAction()
                begin
                    CreateInvoice(0);
                    /*
                    RecPart.SETRANGE(RecPart."Search Code","Search Code");
                    IF RecPart.FIND('-') THEN
                    IF RecPart."Document No." <> '' THEN
                       ERROR('Invoice has been Raised on this Search Code,You Can Not Raise a Quotation on It again')
                    ELSE
                      REPORT.RUNMODAL(50175,TRUE,FALSE,RecPart);
                      RecPart.RESET;
                     */

                end;
            }
            action("Generate Invoice")
            {
                Caption = 'Generate Invoice';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    CreateInvoice(2);
                end;
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        IF xRec."Search Code" <> '' THEN BEGIN
           xRec.TESTFIELD(xRec."Part No");
           xRec.TESTFIELD(xRec."Request by");
           xRec.TESTFIELD(xRec."Quantity Demanded");
           xRec.TESTFIELD(xRec."Request Date");
           xRec.TESTFIELD(xRec."Model No.");
           //xRec."Record Locked" := TRUE;
           xRec.MODIFY;
        END;
        "Request Date" := TODAY;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "Request Date" := TODAY;
    end;

    trigger OnOpenPage()
    begin
        //VALIDATE("Part No");
        //CurrPage.UPDATE;
    end;

    var
        SearchingCode: Code[20];
        Noseries: Record 309;
        ItemRec: Record 27;
        "PartNo.": Code[20];
        Description: Text[50];
        AvaQty: Decimal;
        UnPrice: Decimal;
        Model: Record "50014";
        ReqQty: Decimal;
        EnqRec: Record "50095";
        Tdate: Date;
        Location: Code[20];
        ReqName: Text[50];
        InvPosGrp: Code[20];
        GenPrdGrp: Code[20];
        ReqBy: Code[20];
        ReqAdd: Text[50];
        ReqTel: Code[30];
        ModelNAme: Text[50];
        ReqCont: Text[50];
        Ordered: Boolean;
        Urgent: Boolean;
        Commited: Boolean;
        ComValue: Decimal;
        Vart: Code[20];
        PurQTy: Decimal;
        SaleQty: Decimal;
        CustRec: Record 18;
        RecPart: Record "50095";
        JPMList: Record "50065";
        onstock: Boolean;
        ReadytoBuy: Boolean;
        InvoiceNo: Code[10];
        SupQty: Decimal;
        VarCode: Code[20];
        SalesHeader: Record "36";
        SalesLine: Record "37";
        UserSetup: Record 91;
        StockRec: Record "5700";
        VarRec: Record "5401";
        InvSetup: Record 313;
        Text19005884: Label 'Customer Detail';
}

