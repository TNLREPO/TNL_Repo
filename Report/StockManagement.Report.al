report 50140 "Stock Management"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockManagement.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (Inventory Posting Group)
                                WHERE (Inventory Posting Group=CONST(N_PARTS));
            RequestFilterFields = "No.","Inventory Posting Group";
            column(FORMAT_TODAY_0_4_;FORMAT(TODAY,0,4))
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(USERID;USERID)
            {
            }
            column(Item__Inventory_Posting_Group_;"Inventory Posting Group")
            {
            }
            column(Item__No__;"No.")
            {
            }
            column(Item_Description;Description)
            {
            }
            column(Item__Net_Change_;"Net Change")
            {
                DecimalPlaces = 0:0;
            }
            column(Item__Qty__on_Purch__Order_;"Qty. on Purch. Order")
            {
            }
            column(Item__Qty__on_Sales_Order_;"Qty. on Sales Order")
            {
            }
            column(LastSalesDate;LastSalesDate)
            {
            }
            column(purchReq__MIP_Sales__;purchReq."MIP(Sales)")
            {
                DecimalPlaces = 0:0;
            }
            column(SOQ;SOQ)
            {
                DecimalPlaces = 1:1;
            }
            column(Avsales;Avsales)
            {
                DecimalPlaces = 1:1;
            }
            column(purchReq__Total_Sales_Last_12M_;purchReq."Total Sales Last 12M")
            {
                DecimalPlaces = 0:0;
            }
            column(LastPurchDate;LastPurchDate)
            {
            }
            column(Item__Unit_Cost_;"Unit Cost")
            {
            }
            column(SalFrq;SalFrq)
            {
            }
            column(ItemCaption;ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption;FIELDCAPTION("No."))
            {
            }
            column(Item_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Item__Net_Change_Caption;Item__Net_Change_CaptionLbl)
            {
            }
            column(Item__Qty__on_Purch__Order_Caption;Item__Qty__on_Purch__Order_CaptionLbl)
            {
            }
            column(Item__Qty__on_Sales_Order_Caption;FIELDCAPTION("Qty. on Sales Order"))
            {
            }
            column(LastSalesDateCaption;LastSalesDateCaptionLbl)
            {
            }
            column(purchReq__MIP_Sales__Caption;purchReq__MIP_Sales__CaptionLbl)
            {
            }
            column(SOQCaption;SOQCaptionLbl)
            {
            }
            column(AvsalesCaption;AvsalesCaptionLbl)
            {
            }
            column(purchReq__Total_Sales_Last_12M_Caption;purchReq__Total_Sales_Last_12M_CaptionLbl)
            {
            }
            column(LastPurchDateCaption;LastPurchDateCaptionLbl)
            {
            }
            column(Item__Unit_Cost_Caption;FIELDCAPTION("Unit Cost"))
            {
            }
            column(SalFrqCaption;SalFrqCaptionLbl)
            {
            }
            column(Item__Inventory_Posting_Group_Caption;FIELDCAPTION("Inventory Posting Group"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                MIP := 0;
                SOQ := 0;
                Ldemd := 0;
                LSales:= 0;
                Msale := 0;
                OnHand := 0;
                OnsOrder := 0;
                MIP := 0;
                Avsales := 0;
                OnPurchOrder := 0;

                Itementry.RESET;
                //Itementry.SETCURRENTKEY("Item No.","Posting Date","Entry Type");
                Itementry.SETCURRENTKEY("Entry Type","Item No.","Variant Code","Drop Shipment","Location Code","Posting Date");
                Itementry.SETRANGE(Itementry."Item No.","No.");
                Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Purchase);
                IF Itementry.FIND('+') THEN
                   LastPurchDate := Itementry."Posting Date"
                   ELSE
                   LastPurchDate := 0D;
                Itementry.SETRANGE(Itementry."Item No.","No.");
                Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Sale);
                IF Itementry.FIND('+') THEN
                   LastSalesDate := Itementry."Posting Date"
                   ELSE
                   LastSalesDate := 0D;
                   Notra := 0;
                   TQS := 0;
                Itementry.RESET;
                //Itementry.SETCURRENTKEY("Item No.","Location Code","Variant Code","Posting Date");
                Itementry.SETCURRENTKEY("Entry Type","Item No.","Variant Code","Drop Shipment","Location Code","Posting Date");
                IF Item."Use Item Setup" THEN
                BEGIN
                   StockOutPeriod := "Phase-Out  Period";
                   StockOutTran   := "Phase-Out Transaction";
                   StockInPeriod  := "Phase-In  Period";
                   StockInTran    := "Phase-In Transaction";
                   SlwPeriod      := "Slow Moving Period";
                   ObsPeriod      := "Obsolete Period";
                   MaxPeriod      := "Maximum Period";
                   LeadTime       := "Lead Time Period";
                   PeriodUnit     := "Period Unit";
                   safetystore    := "Safety Stock of Lead Time";
                   ReOrPeriod     := "Lead Time Period" + "Order Cycle" + "Safety Stock of Lead Time";
                   ReoPoint       := "Lead Time Period" + "Safety Stock of Lead Time"
                 END
                 ELSE
                BEGIN
                   IF Invgroup.GET("Inventory Posting Group") THEN
                   BEGIN
                     StockOutPeriod:= Invgroup."Phase out  Period";
                     StockOutTran  := Invgroup."Phase out Transaction";
                     StockInPeriod := Invgroup."Phase in  Period";
                     StockInTran   := Invgroup."Stock in Transaction";
                     SlwPeriod     := Invgroup."Slow Moving Period";
                     ObsPeriod     := Invgroup."Obsolete Period";
                     ReOrPeriod    := ((Invgroup."Lead Time" + Invgroup."Order Cycle" + Invgroup."Safety Stock of Lead Time")/30);
                     MaxPeriod     := Invgroup."Maximum Stock Period";
                     LeadTime      := Invgroup."Lead Time";
                     PeriodUnit    := Invgroup."Period Unit";
                     safetystore   := Invgroup."Safety Stock of Lead Time";
                     ReoPoint      := Invgroup."Lead Time" + Invgroup."Safety Stock of Lead Time";
                    END;
                    END;
                  CASE "Perfomance Status" OF
                     "Perfomance Status"::"Phase-In": BEGIN
                                           consdate := CALCDATE((StockOutPeriod),repdate);
                                           Itementry.SETRANGE(Itementry."Item No.","No.");
                                           Itementry.SETRANGE(Itementry."Posting Date",consdate,repdate);
                                           Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Sale);
                                           IF Itementry.FIND('-') THEN BEGIN
                                              Notra := Itementry.COUNT;
                                              Itementry.CALCSUMS(Itementry."Invoiced Quantity");
                                              TQS := Itementry."Invoiced Quantity";
                                            END;
                                            IF Notra < StockOutTran THEN
                                             BEGIN
                                              "Perfomance Status" := "Perfomance Status"::"Phase-Out";
                                              "Last Status Change Date" := repdate;
                                             END;
                                           END;
                     "Perfomance Status"::"Phase-Out":BEGIN
                                           consdate := CALCDATE(StockInPeriod,repdate);
                                           Itementry.SETRANGE(Itementry."Item No.","No.");
                                           Itementry.SETRANGE(Itementry."Posting Date",consdate,repdate);
                                           Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Sale);
                                           IF Itementry.FIND('-') THEN BEGIN
                                             Notra := Itementry.COUNT;
                                             Itementry.CALCSUMS(Itementry."Invoiced Quantity");
                                             TQS := Itementry."Invoiced Quantity";
                                            END;
                                             IF Notra >= StockInTran THEN
                                             BEGIN
                                              "Perfomance Status" := "Perfomance Status"::"Phase-In";
                                              Item."Last Status Change Date" := repdate;
                                             END
                                             ELSE
                                             BEGIN
                                                consdate := CALCDATE(SlwPeriod,repdate);
                                                IF consdate >= "Last Status Change Date" THEN
                                                BEGIN
                                                  "Perfomance Status" := "Perfomance Status"::"Slow Moving";
                                                  "Last Status Change Date" := repdate;
                                                END;
                                             END;
                                           END;
                     "Perfomance Status"::"Slow Moving": BEGIN
                                           consdate := CALCDATE(StockInPeriod,repdate);
                                           Itementry.SETRANGE(Itementry."Item No.","No.");
                                           Itementry.SETRANGE(Itementry."Posting Date",consdate,repdate);
                                           Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Sale);
                                           IF Itementry.FIND('-') THEN BEGIN
                                             Notra := Itementry.COUNT;
                                              Itementry.CALCSUMS(Itementry."Invoiced Quantity");
                                              TQS := Itementry."Invoiced Quantity";
                                            END;

                                             IF Notra >= StockInTran THEN
                                             BEGIN
                                              "Perfomance Status" := "Perfomance Status"::"Phase-In";
                                              "Last Status Change Date" := repdate;
                                             END
                                             ELSE
                                             BEGIN
                                                consdate := CALCDATE(ObsPeriod,repdate);
                                                IF consdate >= "Last Status Change Date" THEN
                                                BEGIN
                                                  "Perfomance Status" := "Perfomance Status"::Obsolete;
                                                  "Last Status Change Date" := repdate;
                                                END;
                                             END;
                                          END;
                     "Perfomance Status"::Obsolete: BEGIN
                                           consdate := CALCDATE(StockInPeriod,repdate);
                                           Itementry.SETRANGE(Itementry."Item No.","No.");
                                           Itementry.SETRANGE(Itementry."Posting Date",consdate,repdate);
                                           Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Sale);
                                           IF Itementry.FIND('-') THEN BEGIN
                                             Notra := Itementry.COUNT;
                                              Itementry.CALCSUMS(Itementry."Invoiced Quantity");
                                              TQS := Itementry."Invoiced Quantity";
                                            END;
                                             IF Notra >= StockInTran THEN
                                             BEGIN
                                               ConCount := 0;
                                               consdate := CALCDATE(StockInPeriod,repdate);
                                               WHILE edate < repdate DO
                                               BEGIN
                                               edate := CALCDATE('+1M',consdate);
                                               Itementry.SETRANGE(Itementry."Posting Date",consdate,edate);
                                               IF Itementry.FIND('-') THEN
                                                 ConCount := ConCount + 1;
                                               END;
                                               IF ConCount > 1 THEN
                                               BEGIN
                                                 "Perfomance Status" := "Perfomance Status"::"Phase-In";
                                                 "Last Status Change Date" := repdate;
                                               END;
                                             END;

                                       END;

                  END;
                  IF Activeonly THEN BEGIN
                     IF "Perfomance Status" = "Perfomance Status"::"Phase-In" THEN
                       CalSOQ(Item);
                  END
                  ELSE
                  CalSOQ(Item);
                  IF UpdateRec THEN BEGIN
                    "Maximum Inventory" := MIP;
                    "Reorder Quantity" := SOQ;
                    "Reorder Point" := ReoPointQty;
                    "Safety Stock Quantity" := safetystoreQty;
                   MODIFY;
                  END;
                  IF Item."Perfomance Status" <> Item."Perfomance Status"::Obsolete THEN
                  //IF ("Reorder Quantity" <> 0) THEN
                  BEGIN
                    CalSOQ(Item);
                    purchReq.INIT;
                    purchReq.VALIDATE(purchReq."Item No.","No.");
                    purchReq."SOQ (Sales)" :=  SOQ;
                    //purchReq."Ordered Qty" := "Reorder Quantity";
                    purchReq."Stock On Hand" := OnHand;
                    purchReq."Qty On Sales Order" := OnsOrder;
                    purchReq."Qty On Order" := OnPurchOrder;
                    purchReq."Transaction Date" := repdate;
                    Pbegin := CALCDATE('-1M + 1D',repdate);
                  SETFILTER("Date Filter",'%1..%2',Pbegin,repdate);
                  CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 1"  := Item."Sales (Qty.)";
                   purchReq."QD - 1" := Item."Qty Demanded";
                   purchReq."LQ - 1" := Item."Lost Sales Qty";
                   purchReq."Fr - 1" := Item."Freq Request";
                   purchReq."QS - 1" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 1";
                   Ldemd := Item."Qty Demanded";
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-2M',repdate);
                   Pend := CALCDATE('-1M',repdate);
                   SETFILTER("Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 2"  := Item."Sales (Qty.)";
                   purchReq."QD - 2" := Item."Qty Demanded";
                   purchReq."LQ - 2" := Item."Lost Sales Qty";
                   purchReq."Fr - 2" := Item."Freq Request";
                   purchReq."QS - 2" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 2";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";
                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-3M',repdate);
                   Pend := CALCDATE('-2M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 3"  := Item."Sales (Qty.)";
                   purchReq."QD - 3" := Item."Qty Demanded";
                   purchReq."LQ - 3" := Item."Lost Sales Qty";
                   purchReq."Fr - 3" := Item."Freq Request";
                   purchReq."QS - 3" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 3";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-4M',repdate);
                   Pend := CALCDATE('-3M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 4"  := Item."Sales (Qty.)";
                   purchReq."QD - 4" := Item."Qty Demanded";
                   purchReq."LQ - 4" := Item."Lost Sales Qty";
                   purchReq."Fr - 4" := Item."Freq Request";
                   purchReq."QS - 4" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 4";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";


                   Pbegin := CALCDATE('-5M',repdate);
                   Pend := CALCDATE('-4M',repdate);
                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 5"  := Item."Sales (Qty.)";
                   purchReq."QD - 5" := Item."Qty Demanded";
                   purchReq."LQ - 5" := Item."Lost Sales Qty";
                   purchReq."Fr - 5" := Item."Freq Request";
                   purchReq."QS - 5" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 5";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-6M',repdate);
                   Pend := CALCDATE('-5M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 6"  := Item."Sales (Qty.)";
                   purchReq."QD - 6" := Item."Qty Demanded";
                   purchReq."LQ - 6" := Item."Lost Sales Qty";
                   purchReq."Fr - 6" := Item."Freq Request";
                   purchReq."QS - 6" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 6";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-7M',repdate);
                   Pend := CALCDATE('-6M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 7"  := Item."Sales (Qty.)";
                   purchReq."QD - 7" := Item."Qty Demanded";
                   purchReq."LQ - 7" := Item."Lost Sales Qty";
                   purchReq."Fr - 7" := Item."Freq Request";
                   purchReq."QS - 7" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 7";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-8M',repdate);
                   Pend := CALCDATE('-7M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 8"  := Item."Sales (Qty.)";
                   purchReq."QD - 8" := Item."Qty Demanded";
                   purchReq."LQ - 8" := Item."Lost Sales Qty";
                   purchReq."Fr - 8" := Item."Freq Request";
                   purchReq."QS - 8" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 8";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-9M',repdate);
                   Pend := CALCDATE('-8M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 9"  := Item."Sales (Qty.)";
                   purchReq."QD - 9" := Item."Qty Demanded";
                   purchReq."LQ - 9" := Item."Lost Sales Qty";
                   purchReq."Fr - 9" := Item."Freq Request";
                   purchReq."QS - 9" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 9";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-10M',repdate);
                   Pend := CALCDATE('-9M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 10"  := Item."Sales (Qty.)";
                   purchReq."QD - 10" := Item."Qty Demanded";
                   purchReq."LQ - 10" := Item."Lost Sales Qty";
                   purchReq."Fr - 10" := Item."Freq Request";
                   purchReq."QS - 10" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 10";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-11M',repdate);
                   Pend := CALCDATE('-10M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 11"  := Item."Sales (Qty.)";
                   purchReq."QD - 11" := Item."Qty Demanded";
                   purchReq."LQ - 11" := Item."Lost Sales Qty";
                   purchReq."Fr - 11" := Item."Freq Request";
                   purchReq."QS - 11" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 11";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";

                   Pbegin := CALCDATE('-12M',repdate);
                   Pend := CALCDATE('-11M',repdate);

                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,Pend);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");
                   purchReq."N - 12"  := Item."Sales (Qty.)";
                   purchReq."QD - 12" := Item."Qty Demanded";
                   purchReq."LQ - 12" := Item."Lost Sales Qty";
                   purchReq."Fr - 12" := Item."Freq Request";
                   purchReq."QS - 12" := Item."Qty Supplied";
                   purchReq."Total Sales Last 12M" := purchReq."Total Sales Last 12M"+ purchReq."N - 12";

                   IF Item."Qty Demanded" > Ldemd THEN
                   Ldemd := Item."Qty Demanded";

                   IF Item."Sales (Qty.)" > Msale THEN
                   Msale := Item."Sales (Qty.)";


                   IF Item."Sales (Qty.)" > LSales THEN
                   LSales := Item."Sales (Qty.)";
                   Pbegin := CALCDATE('-12M',repdate);
                   Item.SETFILTER(Item."Date Filter",'%1..%2',Pbegin,repdate);
                   CALCFIELDS("Sales (Qty.)","Qty Demanded","Lost Sales Qty","Freq Request","Qty Supplied");

                   IF "Qty Demanded" <> 0 THEN  BEGIN
                       purchReq."Average Demand"   := "Qty Demanded"/12;
                       purchReq."SSD Period":= (0.95 * Ldemd - purchReq."Average Demand")/purchReq."Average Demand";
                    END;
                    IF Item."Qty Supplied" > 0 THEN
                        purchReq."Average Supplied" := "Qty Supplied"/12;

                   IF Item."Sales (Qty.)" <> 0 THEN BEGIN
                     purchReq.VALIDATE(purchReq."Average Sales",(Item."Sales (Qty.)"/ 12));
                     purchReq."SSS Period":= (0.95 * Msale - purchReq."Average Sales")/purchReq."Average Sales";
                     END;
                   IF  "Lost Sales Qty" <> 0 THEN
                       purchReq."Average Lost Sales" := "Lost Sales Qty"/12;


                  purchReq."MIP(Demand)"   := purchReq."Average Demand" * (ReOrPeriod + purchReq."SSD Period");
                  purchReq."MIP(Sales)"    :=  purchReq."Average Sales"  *  (ReOrPeriod + purchReq."SSS Period");
                  purchReq."MIP(Supplied)" := purchReq."Average Supplied" * (ReOrPeriod + purchReq."SSD Period");
                    SETFILTER("Date Filter",'..%1',repdate);
                    CALCFIELDS(Inventory,"Net Change","Qty. on Purch. Order","Qty. on Sales Order","Qty Supplied");
                    purchReq."SOQ (Demand)"  := (purchReq."MIP(Demand)" - "Net Change" + "Qty. on Sales Order");
                    purchReq."SOQ (Sales)"   := (purchReq."MIP(Sales)" - "Net Change" + "Qty. on Sales Order");
                    purchReq."SOQ (Supplied)":= (purchReq."MIP(Supplied)"- "Net Change" + "Qty. on Sales Order");
                    IF Considered THEN BEGIN
                        purchReq."SOQ (Demand)"  := purchReq."SOQ (Demand)" - "Qty. on Purch. Order";
                        purchReq."SOQ (Sales)"   := purchReq."SOQ (Sales)" -purchReq."Qty On Order";
                        purchReq."SOQ (Supplied)":= purchReq."SOQ (Supplied)" - purchReq."Qty On Order";
                        //purchReq."Ordered Qty" := purchReq."Reorder Quantity";
                    END;
                    //IF purchReq."SOQ (Demand)" - purchReq."SOQ (Sales)" > 0 THEN
                    purchReq."SOQ (Lost Sales)" := purchReq."SOQ (Demand)" - purchReq."SOQ (Sales)";

                   IF NOT purchReq.INSERT THEN purchReq.MODIFY;
                 END;

                  SalFrq := Notra;
                  Itementry.SETRANGE(Itementry."Posting Date",consdate,repdate);
                  Itementry.SETRANGE(Itementry."Entry Type",Itementry."Entry Type"::Sale);
                  IF Itementry.FIND('-') THEN BEGIN
                     Itementry.CALCSUMS(Itementry."Invoiced Quantity");
                     TQS := -Itementry."Invoiced Quantity";
                  END;
                IF Item."Perfomance Status" <> Item."Perfomance Status"::Obsolete THEN;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Inventory Posting Group");
                //Itementry.SETCURRENTKEY("Item No.","Location Code","Variant Code","Posting Date");
                Itementry.SETCURRENTKEY("Entry Type","Item No.","Variant Code","Drop Shipment","Location Code","Posting Date");
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(repdate;repdate)
                {
                    Caption = 'Base Date';
                }
                field(UpdateRec;UpdateRec)
                {
                    Caption = 'Update Item Record';
                }
                field(Considered;Considered)
                {
                    Caption = 'Qty on Purchase Order';
                }
                field(UseSales;UseSales)
                {
                    Caption = 'Actual Sales to SSD';
                }
                field(Activeonly;Activeonly)
                {
                    Caption = 'Active Stock Only';
                }
                field(ExportToExcel;ExportToExcel)
                {
                    Caption = 'Export to Excel';
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
        celing: Record "50029";
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        Invgroup: Record "94";
        consdate: Date;
        Itementry: Record "32";
        repdate: Date;
        Notra: Integer;
        Avsales: Decimal;
        bedate: Date;
        UpdateRec: Boolean;
        purchReq: Record "50028";
        "Per Item": Boolean;
        StockOutPeriod: DateFormula;
        StockOutTran: Integer;
        StockInPeriod: DateFormula;
        StockInTran: Integer;
        ObsPeriod: DateFormula;
        SlwPeriod: DateFormula;
        ReOrPeriod: Decimal;
        MaxPeriod: Decimal;
        LeadTime: Decimal;
        PeriodUnit: Option Day,Weeks,Month,Year;
        Considered: Boolean;
        LastSalesDate: Date;
        LastPurchDate: Date;
        Activeonly: Boolean;
        MIP: Decimal;
        MIPMAD: Decimal;
        AVEDED: Decimal;
        SOQ: Decimal;
        TQS: Decimal;
        TQD: Decimal;
        safetystore: Decimal;
        safetystoreQty: Decimal;
        ReoPoint: Decimal;
        ReoPointQty: Decimal;
        "=== Excel related Var begin": Integer;
        PeriodLength: DateFormula;
        PeriodEnding: Date;
        PeriodStarting: Date;
        PeriodDays: Integer;
        StockCoverMonth: Decimal;
        ItemCostMgt: Codeunit "5804";
        CalculateStdCost: Codeunit "5812";
        AverageCostLCY: Decimal;
        AverageCostACY: Decimal;
        ItemRec: Record "27";
        OnOrder: Decimal;
        ExportToExcel: Boolean;
        "==============": Integer;
        EXc: Integer;
        EXr: Integer;
        gFontSize: Integer;
        XlApp: Automation ;
        XlWorkBook: Automation ;
        XlWorkSheet: Automation ;
        XlWorksheets: Automation ;
        XlRange: Automation ;
        Bold: Boolean;
        Italic: Boolean;
        Underline: Boolean;
        Region: Code[10];
        Period: Date;
        c: Integer;
        i: Integer;
        j: Integer;
        nr: Integer;
        ItemLedgerEntry: Record "32";
        "----------------------": Integer;
        TxtC: array [2] of Code[10];
        K: Integer;
        model: Record "50014";
        SalFrq: Integer;
        ConCount: Integer;
        CountOk: Boolean;
        edate: Date;
        Pbegin: Date;
        Pend: Date;
        PartReq: Record "50095";
        Ldemd: Decimal;
        Msale: Decimal;
        SSD: Decimal;
        OnHand: Decimal;
        OnsOrder: Decimal;
        OnPurchOrder: Decimal;
        LSales: Decimal;
        UseSales: Boolean;
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Item__Net_Change_CaptionLbl: Label 'On Hand';
        Item__Qty__on_Purch__Order_CaptionLbl: Label 'On Order';
        LastSalesDateCaptionLbl: Label 'Last Sales Date';
        purchReq__MIP_Sales__CaptionLbl: Label 'Max Inventory Position';
        SOQCaptionLbl: Label 'Suggested Order Qty';
        AvsalesCaptionLbl: Label 'Mthly. Ave. Demand';
        purchReq__Total_Sales_Last_12M_CaptionLbl: Label 'Total Qty Sold';
        LastPurchDateCaptionLbl: Label 'Last Purch. Date';
        SalFrqCaptionLbl: Label 'Sales Frequency';

    [Scope('Internal')]
    procedure CalSOQ(itemRec: Record "27")
    begin
          //Calculate Maximum Inventory
          WITH itemRec DO
          BEGIN
          bedate := CALCDATE(('-'+ FORMAT(MaxPeriod)+COPYSTR(FORMAT(PeriodUnit),1,1)),repdate);
          SETFILTER("Date Filter",'%1..%2',bedate,repdate);
          CALCFIELDS("Sales (Qty.)","Negative Adjmt. (Qty.)",Inventory,"Qty. on Purch. Order","Qty. on Sales Order");
          CALCFIELDS("Qty Demanded","Lost Sales Qty","Freq Request");
          TQS := "Sales (Qty.)";
          TQD := "Qty Demanded";
          IF MaxPeriod <> 0 THEN
          Avsales := ROUND("Sales (Qty.)"/12,0.001);
          IF Avsales > 0 THEN BEGIN
            MIP := Avsales * ReOrPeriod;
            ReoPointQty := ReoPoint * Avsales;
            safetystoreQty := safetystore * Avsales;
            SETFILTER("Date Filter",'..%1',repdate);
            CALCFIELDS(Inventory,"Net Change","Qty. on Purch. Order","Qty. on Sales Order");
            SOQ := (MIP - "Net Change" + "Qty. on Sales Order");
            OnHand := Item."Net Change";
            OnsOrder := Item."Qty. on Sales Order";;
            OnPurchOrder:= Item."Qty. on Purch. Order";

            IF Considered THEN
               SOQ := SOQ - "Qty. on Purch. Order";
          END
          ELSE
          BEGIN
            MIP := 0;
            "Reorder Point" := 0;
            SOQ := 0;
          END;
          END;
    end;
}

