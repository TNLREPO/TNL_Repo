report 50033 "TNL Sales Waybill"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TNLSalesWaybill.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table36)
        {
            column(DocumentType_SalesHeader; "Sales Header"."Document Type")
            {
            }
            column(SelltoCustomerNo_SalesHeader; "Sales Header"."Sell-to Customer No.")
            {
            }
            column(No_SalesHeader; "Sales Header"."No.")
            {
            }
            column(BilltoCustomerNo_SalesHeader; "Sales Header"."Bill-to Customer No.")
            {
            }
            column(BilltoName_SalesHeader; "Sales Header"."Bill-to Name")
            {
            }
            column(SelltoAddress_SalesHeader; "Sales Header"."Sell-to Address")
            {
            }
            column(SelltoAddress2_SalesHeader; "Sales Header"."Sell-to Address 2")
            {
            }
            column(BilltoName2_SalesHeader; "Sales Header"."Bill-to Name 2")
            {
            }
            column(BilltoAddress_SalesHeader; "Sales Header"."Bill-to Address")
            {
            }
            column(BilltoAddress2_SalesHeader; "Sales Header"."Bill-to Address 2")
            {
            }
            column(CoyAddress_2; "CoyAddress 2")
            {
            }
            column(CoyAddress; CoyAddress)
            {
            }
            column(CoyCity; CoyCity)
            {
            }
            column(CoyName; CoyName)
            {
            }
            column(CoyTelInt; CoyTelInt)
            {
            }
            column(PostingDate_SalesHeader; "Sales Header"."Posting Date")
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(SalesPerson_Name; SalesPerson.Name)
            {
            }
            column(CoyTel; CoyTel)
            {
            }
            column(ReferenceTxt; ReferenceTxt)
            {
            }
            column(CoyVat; CoyVat)
            {
            }
            column(CoyReg; CoyReg)
            {
            }
            column(BilltoCity_SalesHeader; "Sales Header"."Bill-to City")
            {
            }
            column(BilltoContact_SalesHeader; "Sales Header"."Bill-to Contact")
            {
            }
            column(SalespersonCode_SalesHeader; "Sales Header"."Salesperson Code")
            {
            }
            column(YourReference_SalesHeader; "Sales Header"."Your Reference")
            {
            }
            column(ShiptoCode_SalesHeader; "Sales Header"."Ship-to Code")
            {
            }
            column(ShiptoName_SalesHeader; "Sales Header"."Ship-to Name")
            {
            }
            column(ShiptoName2_SalesHeader; "Sales Header"."Ship-to Name 2")
            {
            }
            column(ShiptoAddress_SalesHeader; "Sales Header"."Ship-to Address")
            {
            }
            column(SalesTime_SalesHeader; "Sales Header"."Sales Time")
            {
            }
            dataitem(DataItem1000000001; Table37)
            {
                DataItemLink = Document Type=FIELD(Document Type),
                               Document No.=FIELD(No.);
                DataItemTableView = SORTING(Document Type,Document No.,Line No.)
                                    WHERE(Qty. to Ship=FILTER(>0));
                column(DocumentType_SalesLine;"Sales Line"."Document Type")
                {
                }
                column(SelltoCustomerNo_SalesLine;"Sales Line"."Sell-to Customer No.")
                {
                }
                column(DocumentNo_SalesLine;"Sales Line"."Document No.")
                {
                }
                column(LineNo_SalesLine;"Sales Line"."Line No.")
                {
                }
                column(Type_SalesLine;"Sales Line".Type)
                {
                }
                column(LocationCode_SalesLine;"Sales Line"."Location Code")
                {
                }
                column(PostingGroup_SalesLine;"Sales Line"."Posting Group")
                {
                }
                column(ShipmentDate_SalesLine;"Sales Line"."Shipment Date")
                {
                }
                column(QtytoShip_SalesLine;"Sales Line"."Qty. to Ship")
                {
                }
                column(Description_SalesLine;"Sales Line".Description)
                {
                }
                column(Description2_SalesLine;"Sales Line"."Description 2")
                {
                }
                column(Quantity_SalesLine;"Sales Line".Quantity)
                {
                }
                column(UnitofMeasure_SalesLine;"Sales Line"."Unit of Measure")
                {
                }
                column(OutstandingQuantity_SalesLine;"Sales Line"."Outstanding Quantity")
                {
                }
                column(QtytoInvoice_SalesLine;"Sales Line"."Qty. to Invoice")
                {
                }
                column(No_SalesLine;"Sales Line"."No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    IF "Amount Including VAT" - Amount <> 0 THEN
                      VATLiable := VATLiable + Amount;
                    TotalGross := TotalGross + "Amount Including VAT";
                    TotalNet := TotalNet + Amount;
                    //UNDEFINED('genSELECTLINES',Type+1);

                    IF itemRec.GET("No.") THEN
                      binlocvar:= itemRec."Shelf No."
                    ELSE
                      binlocvar:='';
                end;

                trigger OnPreDataItem()
                begin

                    VATLiable := 0;
                    TotalGross  := 0;
                    TotalNet   := 0;
                    MoreLines := FIND('+');
                    WHILE (MoreLines) AND
                          (Description = '') AND
                          ("No." = '') AND
                          (Quantity = 0) AND
                          (Amount = 0)
                    DO
                      MoreLines := NEXT(-1) <> 0;
                    IF MoreLines THEN
                      SETRANGE("Line No.",0,"Line No.")
                    ELSE
                      CurrReport.BREAK;
                end;
            }

            trigger OnAfterGetRecord()
            begin

                CurrReport.PAGENO := 1;
                PrintBottom:=FALSE;
                IF "Salesperson Code" = '' THEN
                  BEGIN
                    CLEAR(SalesPerson);
                    CLEAR(SalesPersonTxt);
                  END
                ELSE
                  BEGIN
                   IF SalesPerson.GET("Salesperson Code") THEN;
                   SalesPersonTxt := 'Salesperson :';
                  END;

                IF "Your Reference" = '' THEN
                  CLEAR(ReferenceTxt)
                ELSE
                  ReferenceTxt := 'Reference';

                IF "Shipment Date" = 0D THEN
                  CLEAR(ShipmentTxt)
                ELSE
                  ShipmentTxt := 'Shipment Date';

                IF "Location Code" = '100PH' THEN BEGIN
                    CoyName := 'Toyota (Nigeria) Limited (PH)' ;
                    CoyAddress := 'Plot 114 Trans Amadi' ;
                    "CoyAddress 2" := 'Trans Amadi Industrial Layout';
                    CoyCity := 'Port Harcourt, Rivers State';
                    CoyTelInt := '' ;
                    CoyTel := '084-488907, 233679' ;
                    CoyFax := '' ;
                    CoyReg := 'Reg No.: R.C. 281837' ;
                    CoyVat := 'VAT No.: IKV080021482' ;
                END ELSE
                 BEGIN
                IF "Location Code" = '111EKET' THEN  BEGIN
                    CoyName := 'Toyota (Nigeria) Limited' ;
                    CoyAddress := 'Eddynco Complex,' ;
                    "CoyAddress 2" := 'Jetty Road, Mkpanak' ;
                    CoyCity := 'Ibeno Local Govt. Eket';
                    CoyTelInt := 'Akwa Ibom State, Nigeria' ;
                    CoyTel := '08034938518, 08051995176' ;
                    CoyFax := '' ;
                    CoyReg := 'Reg No.: R.C. 281837' ;
                    CoyVat := 'VAT No.: IKV080021482' ;
                END ELSE
                 BEGIN
                IF "Location Code" = '112ABJ' THEN BEGIN
                    CoyName := 'Toyota (Nigeria) Limited (ABJ)' ;
                    CoyAddress := 'Plot 1259 Aminu Kano Crescent' ;
                    "CoyAddress 2" := 'Beside Tulip Press' ;
                    CoyCity := 'Wuse II, Abuja, Nigeria' ;
                    CoyTelInt := '' ;
                    CoyTel := 'Tel No.: 09-6720701'  ;
                    CoyFax := '' ;
                    CoyReg := 'Reg No.: R.C. 281837' ;
                    CoyVat := 'VAT No.: IKV080021482' ;

                 END ELSE
                 BEGIN
                IF "Location Code" = '114SER' THEN  BEGIN
                    CoyName := 'Toyota (Nigeria) Limited' ;
                    CoyAddress := 'Toyota Training Sch. Complex' ;
                    "CoyAddress 2" := 'TPAO 992, Ojulari Road' ;
                    CoyCity := 'Lekki Peninsula Scheme';
                    CoyTelInt := 'P.O. Box 14504, Lagos, Nigeria' ;
                    CoyTel := 'Tel No.: 234-1-4401311-5' ;
                    CoyFax := 'Fax No.: 01-4401321-2' ;
                    CoyReg := 'Reg No.: R.C. 281837' ;
                    CoyVat := 'VAT No.: IKV080021482' ;
                   END ELSE
                  BEGIN
                IF "Location Code" = '113LEK' THEN  BEGIN
                    CoyName := 'Toyota (Nigeria) Limited' ;
                    CoyAddress := 'Toyota Training Sch. Complex' ;
                    "CoyAddress 2" := 'TPAO 992, Ojulari Road' ;
                    CoyCity := 'Lekki Peninsula Scheme';
                    CoyTelInt := 'P.O. Box 14504, Lagos, Nigeria' ;
                    CoyTel := 'Tel No.: 234-1-4401311-5' ;
                    CoyFax := 'Fax No.: 01-4401321-2' ;
                    CoyReg := 'Reg No.: R.C. 281837' ;
                    CoyVat := 'VAT No.: IKV080021482' ;

                      END ;
                    END ;
                  END;
                 END;
                 END;

                CustomerAddr[1] := "Bill-to Name";
                CustomerAddr[2] := "Bill-to Name 2";
                CustomerAddr[3] := "Bill-to Address";
                CustomerAddr[4] := "Bill-to Address 2";
                CustomerAddr[5] := "Del.Add. 3";
                CustomerAddr[6] := "P.O.Box";
                CustomerAddr[7] := "Bill-to City";
                CustomerAddr[8] := "Bill-to Contact";

                COMPRESSARRAY(CustomerAddr);
                PrintBottom := FALSE;

                IF DepRec.GET("Sales Header"."Shortcut Dimension 1 Code") THEN;
            end;

            trigger OnPreDataItem()
            begin
                PrintPiclist.RUN;
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

    trigger OnPostReport()
    begin
        SalesCountPrinted.RUN("Sales Header");
    end;

    var
        binlocvar: Code[20];
        itemRec: Record "27";
        "VehicleNo.": Code[10];
        NoPr: Boolean;
        i: Integer;
        AmT: array [15] of Text[4];
        AmT1: array [15] of Text[4];
        AmT2: array [15] of Text[4];
        AmT3: array [15] of Text[4];
        DepRec: Record "11";
        TotalNet: Decimal;
        VATLiable: Decimal;
        TotalGross: Decimal;
        Delivery: Record "10";
        Payment: Record "3";
        CustomerAddr: array [8] of Text[50];
        SalesPerson: Record "13";
        OrderNoTxt: Text[10];
        SalesPersonTxt: Text[20];
        ReferenceTxt: Text[15];
        CompanyData: Record "79";
        PrintBottom: Boolean;
        MoreLines: Boolean;
        NoCopies: Integer;
        NoLoops: Integer;
        CopyNo: Integer;
        CopyTxt: Text[10];
        Customer: Record "18";
        PrintPiclist: Codeunit "229";
        ShipmentTxt: Text[20];
        CoyName: Text[50];
        CoyAddress: Text[50];
        "CoyAddress 2": Text[50];
        CoyCity: Text[30];
        CoyTelInt: Text[30];
        CoyTel: Text[30];
        CoyFax: Text[30];
        CoyReg: Text[30];
        CoyVat: Text[30];
        SalesPrint: Codeunit "313";
        SalesCountPrinted: Codeunit "313";
}

