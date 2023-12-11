report 50620 "Flash Report TNL"
{
    DefaultLayout = RDLC;
    RDLCLayout = './FlashReportTNL.rdlc';
    Caption = 'Flash Report TNL';

    dataset
    {
        dataitem(DataItem1000000000; Table18)
        {
            DataItemTableView = WHERE (No.=FILTER(TDP00001..TDP99999|TCO00001..TCO99999));
            column(No_Customer;Customer."No.")
            {
            }
            column(Name_Customer;Customer.Name)
            {
            }
            column(Overduevalues;Overduevalues)
            {
            }
            column(Startdate;Startdate)
            {
            }
            column(Enddate;Enddate)
            {
            }
            column(LocationCode_Customer;Customer."Location Code")
            {
            }
            column(SalesAmtline;SalesAmtline)
            {
            }
            column(PickinglistValue;PickinglistValue)
            {
            }
            column(Paymentrecieved;Paymentrecieved)
            {
            }
            column(OrderValue;OrderValue)
            {
            }

            trigger OnAfterGetRecord()
            begin
                DetailedCustLedgEntry.SETRANGE("Customer No.","No.");
                DetailedCustLedgEntry.SETRANGE("Posting Date",Startdate,Enddate);
                DetailedCustLedgEntry.SETRANGE("Initial Entry Due Date",Startdate,Enddate);
                DetailedCustLedgEntry.SETRANGE("Initial Entry Global Dim. 1",Customer."Global Dimension 1 Filter");
                DetailedCustLedgEntry.SETRANGE("Initial Entry Global Dim. 2",Customer."Global Dimension 2 Filter");
                DetailedCustLedgEntry.SETRANGE("Currency Code",Customer."Currency Filter");
                Overduevalues := 0.0;
                IF DetailedCustLedgEntry.FIND('-') THEN  BEGIN
                  DetailedCustLedgEntry.CALCSUMS("Amount (LCY)");
                  Overduevalues := DetailedCustLedgEntry."Amount (LCY)";
                END;
                OrderValue := 0.0;
                PickinglistValue := 0.0;
                SalesAmtline := 0.0;
                SalesLine.SETRANGE("Sell-to Customer No.","No.");
                SalesLine.SETRANGE("Posting Date",Startdate,Enddate);
                Items.SETRANGE("No.",SalesLine."No.");
                Items.GET(SalesLine."No.");
                IF SalesLine.FIND('-') THEN BEGIN
                  SalesLine.CALCSUMS("Line Amount");
                  SalesAmtline := SalesLine."Line Amount";
                  SalesLine.CALCSUMS("Quantity Demanded");
                  PickinglistValue := SalesLine."Quantity Demanded";
                  Items.CALCSUMS("Unit Cost");
                  OrderValue := SalesLine."Quantity Demanded" * Items."Unit Cost";
                END;

                Paymentrecieved := 0.0;
                CustLedgerEntry.SETRANGE("Customer No.","No.");
                CustLedgerEntry.SETRANGE("Posting Date",Startdate,Enddate);
                CustLedgerEntry.SETFILTER("Document Type",'<>%1',Documnettype::"Credit Memo");
                IF CustLedgerEntry.FIND ('-') THEN BEGIN
                  CustLedgerEntry.CALCFIELDS("Credit Amount");
                  Paymentrecieved := ABS(CustLedgerEntry."Credit Amount");
                END;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                field(Startdate;Startdate)
                {
                    Caption = 'Start Date';
                }
                field(Enddate;Enddate)
                {
                    Caption = 'End Date';
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        SalesShipmentLine: Record "111";
        SalesLine: Record "37";
        CustLedgerEntry: Record "21";
        DetailedCustLedgEntry: Record "379";
        Overduevalues: Decimal;
        Startdate: Date;
        Enddate: Date;
        SalesAmtline: Decimal;
        PickinglistValue: Decimal;
        Documnettype: Option ,"Credit Memo";
        Paymentrecieved: Decimal;
        Items: Record "27";
        OrderValue: Integer;
}

