report 50436 "Pre-Owned  Way bill!"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PreOwnedWaybill.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table110)
        {
            column(SelltoCustomerNo_SalesShipmentHeader; "Sales Shipment Header"."Sell-to Customer No.")
            {
            }
            column(No_SalesShipmentHeader; "Sales Shipment Header"."No.")
            {
            }
            column(BilltoCustomerNo_SalesShipmentHeader; "Sales Shipment Header"."Bill-to Customer No.")
            {
            }
            column(BilltoName_SalesShipmentHeader; "Sales Shipment Header"."Bill-to Name")
            {
            }
            column(BilltoName2_SalesShipmentHeader; "Sales Shipment Header"."Bill-to Name 2")
            {
            }
            column(BilltoAddress_SalesShipmentHeader; "Sales Shipment Header"."Bill-to Address")
            {
            }
            column(BilltoAddress2_SalesShipmentHeader; "Sales Shipment Header"."Bill-to Address 2")
            {
            }
            column(BilltoCity_SalesShipmentHeader; "Sales Shipment Header"."Bill-to City")
            {
            }
            column(BilltoContact_SalesShipmentHeader; "Sales Shipment Header"."Bill-to Contact")
            {
            }
            column(YourReference_SalesShipmentHeader; "Sales Shipment Header"."Your Reference")
            {
            }
            column(ShiptoCode_SalesShipmentHeader; "Sales Shipment Header"."Ship-to Code")
            {
            }
            column(ShiptoName_SalesShipmentHeader; "Sales Shipment Header"."Ship-to Name")
            {
            }
            column(ShiptoName2_SalesShipmentHeader; "Sales Shipment Header"."Ship-to Name 2")
            {
            }
            column(ShiptoAddress_SalesShipmentHeader; "Sales Shipment Header"."Ship-to Address")
            {
            }
            column(ShiptoAddress2_SalesShipmentHeader; "Sales Shipment Header"."Ship-to Address 2")
            {
            }
            column(ShiptoCity_SalesShipmentHeader; "Sales Shipment Header"."Ship-to City")
            {
            }
            column(ShiptoContact_SalesShipmentHeader; "Sales Shipment Header"."Ship-to Contact")
            {
            }
            column(OrderDate_SalesShipmentHeader; "Sales Shipment Header"."Order Date")
            {
            }
            column(PostingDate_SalesShipmentHeader; "Sales Shipment Header"."Posting Date")
            {
            }
            column(ShipmentDate_SalesShipmentHeader; "Sales Shipment Header"."Shipment Date")
            {
            }
            column(PostingDescription_SalesShipmentHeader; "Sales Shipment Header"."Posting Description")
            {
            }
            column(PaymentTermsCode_SalesShipmentHeader; "Sales Shipment Header"."Payment Terms Code")
            {
            }
            column(DueDate_SalesShipmentHeader; "Sales Shipment Header"."Due Date")
            {
            }
            column(PaymentDiscount_SalesShipmentHeader; "Sales Shipment Header"."Payment Discount %")
            {
            }
            column(SalesPerson_Name; SalesPerson.Name)
            {
            }
            column(PmtDiscountDate_SalesShipmentHeader; "Sales Shipment Header"."Pmt. Discount Date")
            {
            }
            column(ShipmentMethodCode_SalesShipmentHeader; "Sales Shipment Header"."Shipment Method Code")
            {
            }
            column(OrderNo_SalesShipmentHeader; "Sales Shipment Header"."Order No.")
            {
            }
            column(LocationCode_SalesShipmentHeader; "Sales Shipment Header"."Location Code")
            {
            }
            column(ShortcutDimension2Code_SalesShipmentHeader; "Sales Shipment Header"."Shortcut Dimension 2 Code")
            {
            }
            column(ShortcutDimension1Code_SalesShipmentHeader; "Sales Shipment Header"."Shortcut Dimension 1 Code")
            {
            }
            dataitem(DataItem1000000029; Table111)
            {
                DataItemLink = Document No.=FIELD(No.);
                column(SelltoCustomerNo_SalesShipmentLine; "Sales Shipment Line"."Sell-to Customer No.")
                {
                }
                column(DocumentNo_SalesShipmentLine; "Sales Shipment Line"."Document No.")
                {
                }
                column(LineNo_SalesShipmentLine; "Sales Shipment Line"."Line No.")
                {
                }
                column(Quantity_SalesShipmentLine; "Sales Shipment Line".Quantity)
                {
                }
                column(Type_SalesShipmentLine; "Sales Shipment Line".Type)
                {
                }
                column(QtyShippedNotInvoiced_SalesShipmentLine; "Sales Shipment Line"."Qty. Shipped Not Invoiced")
                {
                }
                column(No_SalesShipmentLine; "Sales Shipment Line"."No.")
                {
                }
                column(PostingGroup_SalesShipmentLine; "Sales Shipment Line"."Posting Group")
                {
                }
                column(LocationCode_SalesShipmentLine; "Sales Shipment Line"."Location Code")
                {
                }
                column(ShipmentDate_SalesShipmentLine; "Sales Shipment Line"."Shipment Date")
                {
                }
                column(Description_SalesShipmentLine; "Sales Shipment Line".Description)
                {
                }
                column(Description2_SalesShipmentLine; "Sales Shipment Line"."Description 2")
                {
                }
                column(UnitofMeasure_SalesShipmentLine; "Sales Shipment Line"."Unit of Measure")
                {
                }
                column(Colour_SalesShipmentLine; "Sales Shipment Line".Colour)
                {
                }
                column(YearofProduction_SalesShipmentLine; "Sales Shipment Line"."Year of Production")
                {
                }
                column(EstimatedMileage_SalesShipmentLine; "Sales Shipment Line"."Estimated Mileage")
                {
                }
                dataitem(DataItem1000000046; Table32)
                {
                    DataItemLink = Document No.=FIELD(Document No.),
                                   Source No.=FIELD(Sell-to Customer No.),
                                   Item No.=FIELD(No.),
                                   Document Line No.=FIELD(Line No.);
                    column(SerialNo_ItemLedgerEntry;"Item Ledger Entry"."Serial No.")
                    {
                    }
                    column(EngineNo_ItemLedgerEntry;"Item Ledger Entry"."Engine No.")
                    {
                    }
                    column(KeyNo_ItemLedgerEntry;"Item Ledger Entry"."Key No.")
                    {
                    }
                    column(ExteriorColourName_ItemLedgerEntry;"Item Ledger Entry"."Exterior Colour Name")
                    {
                    }
                    column(InventoryPostingGroup_ItemLedgerEntry;"Item Ledger Entry"."Inventory Posting Group")
                    {
                    }
                    column(Quantity_ItemLedgerEntry;"Item Ledger Entry".Quantity)
                    {
                    }
                }
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


                CustomerAddr[1] := "Bill-to Name";
                CustomerAddr[2] := "Bill-to Name 2";
                CustomerAddr[3] := COPYSTR("Bill-to Address",1,30);
                CustomerAddr[4] := COPYSTR("Bill-to Address 2",1,30);

                COMPRESSARRAY(CustomerAddr);
                PrintBottom := FALSE;

                IF DepRec.GET("Sales Shipment Header"."Shortcut Dimension 1 Code") THEN;
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

    var
        binlocvar: Code[20];
        itemRec: Record "27";
        "VehicleNo.": Code[20];
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
        N_PARTS: Text[20];
        CustomerAddr: array [8] of Text[30];
        SalesPerson: Record "13";
        OrderNoTxt: Text[20];
        SalesPersonTxt: Text[20];
        ReferenceTxt: Text[15];
        CompanyData: Record "79";
        PrintBottom: Boolean;
        MoreLines: Boolean;
        NoCopies: Integer;
        NoLoops: Integer;
        CopyNo: Integer;
        CopyTxt: Text[20];
        Customer: Record "18";
        PrintPiclist: Codeunit "229";
        ShipmentTxt: Text[20];
        Library: Codeunit "50003";
        ValidDate: Date;
}

