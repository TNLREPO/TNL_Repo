report 50097 "Service Ord Picking List-Parts"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ServiceOrdPickingListParts.rdlc';

    dataset
    {
        dataitem(DataItem1634; Table5900)
        {
            DataItemTableView = SORTING (Document Type, No.)
                                WHERE (Document Type=CONST(Order));
            RequestFilterFields = "No.", "Customer No.";
            column(Service_Header_Document_Type; "Document Type")
            {
            }
            column(Service_Header_No_; "No.")
            {
            }
            dataitem(Counter; Table2000000026)
            {
                DataItemTableView = SORTING (Number);
                dataitem(DataItem6560; Table5902)
                {
                    DataItemLink = Document Type=FIELD(Document Type),
                                   Document No.=FIELD(No.);
                    DataItemLinkReference = "Service Header";
                    DataItemTableView = SORTING(Document Type,Document No.,Line No.)
                                        WHERE(Type=CONST(Item),
                                              Qty. to Ship=FILTER(>0));
                    column(CompanyData_Name;CompanyData.Name)
                    {
                    }
                    column(CompanyData_Address;CompanyData.Address)
                    {
                    }
                    column(CustomerAddr_1_;CustomerAddr[1])
                    {
                    }
                    column(CompanyData__Address_2_;CompanyData."Address 2")
                    {
                    }
                    column(CustomerAddr_2_;CustomerAddr[2])
                    {
                    }
                    column(CompanyData_City;CompanyData.City)
                    {
                    }
                    column(CustomerAddr_3_;CustomerAddr[3])
                    {
                    }
                    column(CompanyData__Address_4_;CompanyData."Address 4")
                    {
                    }
                    column(CustomerAddr_4_;CustomerAddr[4])
                    {
                    }
                    column(CustomerAddr_5_;CustomerAddr[5])
                    {
                    }
                    column(Tel_____CompanyData__Internation_phone_;'Tel.: '+CompanyData."Internation phone")
                    {
                    }
                    column(CustomerAddr_6_;CustomerAddr[6])
                    {
                    }
                    column(CompanyData__Phone_No__;CompanyData."Phone No.")
                    {
                    }
                    column(CustomerAddr_7_;CustomerAddr[7])
                    {
                    }
                    column(CompanyData__Phone_No__2_;CompanyData."Phone No. 2")
                    {
                    }
                    column(CustomerAddr_8_;CustomerAddr[8])
                    {
                    }
                    column(Fax____CompanyData__Fax_No__;'Fax: '+CompanyData."Fax No.")
                    {
                    }
                    column(Reg__No_____CompanyData__Registration_No__;'Reg. No.: '+CompanyData."Registration No.")
                    {
                    }
                    column(Vat_No_____CompanyData__VAT_Reg__No__;'Vat No.: '+CompanyData."VAT Reg. No.")
                    {
                    }
                    column(Service_Header___No__;"Service Header"."No.")
                    {
                    }
                    column(Service_Header___Bill_to_Customer_No__;"Service Header"."Bill-to Customer No.")
                    {
                    }
                    column(Service_Header___Your_Reference_;"Service Header"."Your Reference")
                    {
                    }
                    column(CurrReport_PAGENO;CurrReport.PAGENO)
                    {
                    }
                    column(SalesPersonTxt;SalesPersonTxt)
                    {
                    }
                    column(Service_Header___Salesperson_Code_;"Service Header"."Salesperson Code")
                    {
                    }
                    column(Service_Header___Posting_Date_;"Service Header"."Posting Date")
                    {
                    }
                    column(Service_Line__Service_Line___Qty__to_Ship_;"Service Line"."Qty. to Ship")
                    {
                    }
                    column(Service_Line__Service_Line___Bin_Shelf_No__;"Service Line"."Bin/Shelf No.")
                    {
                    }
                    column(Service_Line__Service_Line___Location_Code_;"Service Line"."Location Code")
                    {
                    }
                    column(Service_Line__Service_Line___Variant_Code_;"Service Line"."Variant Code")
                    {
                    }
                    column(Service_Line__Service_Line__Description;"Service Line".Description)
                    {
                    }
                    column(Service_Line__Service_Line___No__;"Service Line"."No.")
                    {
                    }
                    column(Service_Line__Service_Line___Qty__to_Ship__Control1000000066;"Service Line"."Qty. to Ship")
                    {
                    }
                    column(Service_Line__Service_Line___Bin_Shelf_No___Control1000000069;"Service Line"."Bin/Shelf No.")
                    {
                    }
                    column(Service_Line__Service_Line___Location_Code__Control1000000071;"Service Line"."Location Code")
                    {
                    }
                    column(Service_Line__Service_Line___Variant_Code__Control1000000073;"Service Line"."Variant Code")
                    {
                    }
                    column(Service_Line__Service_Line__Description_Control1000000075;"Service Line".Description)
                    {
                    }
                    column(Service_Line__Service_Line___No___Control1000000077;"Service Line"."No.")
                    {
                    }
                    column(Service_Line__Service_Line___No___Control41;"Service Line"."No.")
                    {
                    }
                    column(Service_Line__Service_Line__Description_Control42;"Service Line".Description)
                    {
                    }
                    column(Service_Line__Service_Line___Location_Code__Control43;"Service Line"."Location Code")
                    {
                    }
                    column(Service_Line__Service_Line___Bin_Shelf_No___Control44;"Service Line"."Bin/Shelf No.")
                    {
                    }
                    column(Service_Line__Service_Line___Qty__to_Ship__Control1000000061;"Service Line"."Qty. to Ship")
                    {
                    }
                    column(Service_Line__Service_Line___Variant_Code__Control1000000000;"Service Line"."Variant Code")
                    {
                    }
                    column(Service_Line__Service_Line___Qty__to_Ship__Control1000000092;"Service Line"."Qty. to Ship")
                    {
                    }
                    column(Service_Line__Service_Line___Bin_Shelf_No___Control1000000095;"Service Line"."Bin/Shelf No.")
                    {
                    }
                    column(Service_Line__Service_Line___Location_Code__Control1000000097;"Service Line"."Location Code")
                    {
                    }
                    column(Service_Line__Service_Line___Variant_Code__Control1000000099;"Service Line"."Variant Code")
                    {
                    }
                    column(Service_Line__Service_Line__Description_Control1000000101;"Service Line".Description)
                    {
                    }
                    column(Service_Line__Service_Line___No___Control1000000103;"Service Line"."No.")
                    {
                    }
                    column(Service_Line__Service_Line___Qty__to_Ship__Control1000000105;"Service Line"."Qty. to Ship")
                    {
                    }
                    column(Service_Line__Service_Line___Bin_Shelf_No___Control1000000108;"Service Line"."Bin/Shelf No.")
                    {
                    }
                    column(Service_Line__Service_Line___Location_Code__Control1000000110;"Service Line"."Location Code")
                    {
                    }
                    column(Service_Line__Service_Line___Variant_Code__Control1000000112;"Service Line"."Variant Code")
                    {
                    }
                    column(Service_Line__Service_Line__Description_Control1000000114;"Service Line".Description)
                    {
                    }
                    column(Service_Line__Service_Line___No___Control1000000116;"Service Line"."No.")
                    {
                    }
                    column(PICKING_LIST__SERVICE_ORDER_PARTS_Caption;PICKING_LIST__SERVICE_ORDER_PARTS_CaptionLbl)
                    {
                    }
                    column(Order_No__Caption;Order_No__CaptionLbl)
                    {
                    }
                    column(Date_Caption;Date_CaptionLbl)
                    {
                    }
                    column(Customer_No__Caption;Customer_No__CaptionLbl)
                    {
                    }
                    column(Your_Ref__Caption;Your_Ref__CaptionLbl)
                    {
                    }
                    column(Page_No__Caption;Page_No__CaptionLbl)
                    {
                    }
                    column(Part_No_Caption;Part_No_CaptionLbl)
                    {
                    }
                    column(Stock_LocationCaption;Stock_LocationCaptionLbl)
                    {
                    }
                    column(Bin_LocationCaption;Bin_LocationCaptionLbl)
                    {
                    }
                    column(DescriptionCaption;DescriptionCaptionLbl)
                    {
                    }
                    column(QuantityCaption;QuantityCaptionLbl)
                    {
                    }
                    column(VariantCaption;VariantCaptionLbl)
                    {
                    }
                    column(Manager_s_Approval_Caption;Manager_s_Approval_CaptionLbl)
                    {
                    }
                    column(Storemanager_Approval_Caption;Storemanager_Approval_CaptionLbl)
                    {
                    }
                    column(Received_By_Caption;Received_By_CaptionLbl)
                    {
                    }
                    column(Service_Line_Document_Type;"Document Type")
                    {
                    }
                    column(Service_Line_Document_No_;"Document No.")
                    {
                    }
                    column(Service_Line_Line_No_;"Line No.")
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
                    PrintBottom:=FALSE;
                    IF CopyNo = NoLoops THEN BEGIN
                      CurrReport.BREAK;
                    END ELSE
                      CopyNo := CopyNo + 1;
                    IF CopyNo = 1 THEN /*Original*/
                      CLEAR(CopyTxt)
                    ELSE
                      CopyTxt := 'COPY';

                end;

                trigger OnPreDataItem()
                begin
                    NoLoops := 1 + ABS(NoCopies) + Customer."Invoice Copies";
                    IF NoLoops <= 0 THEN
                      NoLoops := 1;
                    CopyNo := 0;
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
                
                /*IF "Shipment Date" = 0D THEN
                  CLEAR(ShipmentTxt)
                ELSE
                  ShipmentTxt := 'Shipment Date';*/
                
                
                CustomerAddr[1] := "Bill-to Name";
                CustomerAddr[2] := "Bill-to Name 2";
                CustomerAddr[3] := "Bill-to Address";
                CustomerAddr[4] := "Bill-to Address 2";
                /*CustomerAddr[5] := "Del.Add. 3";*/
                /*CustomerAddr[6] := "P.O.Box";*/
                CustomerAddr[7] := "Bill-to City";
                CustomerAddr[8] := "Bill-to Contact";
                
                COMPRESSARRAY(CustomerAddr);
                PrintBottom := FALSE;

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

    trigger OnPreReport()
    begin
        CompanyData.GET;
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
        TotalNet: Decimal;
        VATLiable: Decimal;
        TotalGross: Decimal;
        Delivery: Record "10";
        Payment: Record "3";
        CustomerAddr: array [8] of Text[45];
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
        PICKING_LIST__SERVICE_ORDER_PARTS_CaptionLbl: Label 'PICKING LIST (SERVICE ORDER PARTS)';
        Order_No__CaptionLbl: Label 'Order No.:';
        Date_CaptionLbl: Label 'Date:';
        Customer_No__CaptionLbl: Label 'Customer No.:';
        Your_Ref__CaptionLbl: Label 'Your Ref.:';
        Page_No__CaptionLbl: Label 'Page No.:';
        Part_No_CaptionLbl: Label 'Part No.';
        Stock_LocationCaptionLbl: Label 'Stock Location';
        Bin_LocationCaptionLbl: Label 'Bin Location';
        DescriptionCaptionLbl: Label 'Description';
        QuantityCaptionLbl: Label 'Quantity';
        VariantCaptionLbl: Label 'Variant';
        Manager_s_Approval_CaptionLbl: Label 'Manager''s Approval:';
        Storemanager_Approval_CaptionLbl: Label 'Storemanager Approval:';
        Received_By_CaptionLbl: Label 'Received By:';
}

