report 50314 "Stock Age Movement"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockAgeMovement.rdlc';

    dataset
    {
        dataitem(DataItem1; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(TodayFormatted; FORMAT(TODAY, 0, 4))
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
            column(Line181; Line181)
            {
            }
            column(Line365; Line365)
            {
            }
            column(Line730; Line730)
            {
            }
            column(Line1095; Line1095)
            {
            }
            column(Line1460; Line1460)
            {
            }
            column(Line1825; Line1825)
            {
            }
            column(Qty181; Qty181)
            {
            }
            column(Qty365; Qty365)
            {
            }
            column(Qty730; Qty730)
            {
            }
            column(Qty1095; Qty1095)
            {
            }
            column(Qty1460; Qty1460)
            {
            }
            column(Qty1825; Qty1825)
            {
            }
            column(Value181; Value181)
            {
            }
            column(Value365; Value365)
            {
            }
            column(Value730; Value730)
            {
            }
            column(Value1095; Value1095)
            {
            }
            column(Value1460; Value1460)
            {
            }
            column(Value1825; Value1825)
            {
            }
            column(TotalValue; TotalValue)
            {
            }

            trigger OnAfterGetRecord()
            var
                ItemLedgEntry: Record 32;
            begin



                Line730 := 0;

                Date181 := CALCDATE('-181D', TODAY);
                Date365 := CALCDATE('-365D', TODAY);
                Date730 := CALCDATE('-730D', TODAY);
                Date1095 := CALCDATE('-1095D', TODAY);
                Date1460 := CALCDATE('-1460D', TODAY);
                Date1825 := CALCDATE('-1825D', TODAY);


                //0-181 days
                ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                ItemLedgEntry.SETRANGE(Open, TRUE);
                ItemLedgEntry.SETRANGE("Posting Date", Date181, TODAY);
                ItemLedgEntry.SETFILTER("Inventory Posting Group", '%1|%2|%3|%4', 'N_PART', 'ACCESSORY', 'BNP', 'N_PARTCONS');
                IF ItemLedgEntry.FINDSET THEN BEGIN
                    Line181 := ItemLedgEntry.COUNT;
                    REPEAT
                        Qty181 := Qty181 + ItemLedgEntry."Remaining Quantity";
                        ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                        Value181 := Value181 + ItemLedgEntry."Cost Amount (Actual)";
                    UNTIL ItemLedgEntry.NEXT = 0;
                END;

                //182-365 days
                ItemLedgEntry.RESET;
                ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                ItemLedgEntry.SETRANGE(Open, TRUE);
                ItemLedgEntry.SETRANGE("Posting Date", Date365, Date181 - 1);
                //ItemLedgEntry.SETFILTER("Inventory Posting Group",'<>%1','N_CARS');
                ItemLedgEntry.SETFILTER("Inventory Posting Group", '%1|%2|%3|%4', 'N_PART', 'ACCESSORY', 'BNP', 'N_PARTCONS');
                IF ItemLedgEntry.FINDSET THEN BEGIN
                    Line365 := ItemLedgEntry.COUNT;
                    REPEAT
                        Qty365 := Qty365 + ItemLedgEntry."Remaining Quantity";
                        ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                        Value365 := Value365 + ItemLedgEntry."Cost Amount (Actual)";
                    UNTIL ItemLedgEntry.NEXT = 0;
                END;

                //366-730 days
                ItemLedgEntry.RESET;
                ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                ItemLedgEntry.SETRANGE(Open, TRUE);
                ItemLedgEntry.SETRANGE("Posting Date", Date730, Date365 - 1);
                //ItemLedgEntry.SETFILTER("Inventory Posting Group",'<>%1','N_CARS');
                ItemLedgEntry.SETFILTER("Inventory Posting Group", '%1|%2|%3|%4', 'N_PART', 'ACCESSORY', 'BNP', 'N_PARTCONS');
                IF ItemLedgEntry.FINDSET THEN BEGIN
                    Line730 := ItemLedgEntry.COUNT;
                    REPEAT
                        Qty730 := Qty730 + ItemLedgEntry."Remaining Quantity";
                        ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                        Value730 := Value730 + ItemLedgEntry."Cost Amount (Actual)";
                    UNTIL ItemLedgEntry.NEXT = 0;
                END;

                //731-1095 days
                ItemLedgEntry.RESET;
                ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                ItemLedgEntry.SETRANGE(Open, TRUE);
                ItemLedgEntry.SETRANGE("Posting Date", Date1095, Date730 - 1);
                ItemLedgEntry.SETFILTER("Inventory Posting Group", '<>%1', 'N_CARS');
                IF ItemLedgEntry.FINDSET THEN BEGIN
                    Line1095 := ItemLedgEntry.COUNT;
                    REPEAT
                        Qty1095 := Qty1095 + ItemLedgEntry."Remaining Quantity";
                        ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                        Value1095 := Value1095 + ItemLedgEntry."Cost Amount (Actual)";
                    UNTIL ItemLedgEntry.NEXT = 0;
                END;

                //1096-1460 days
                ItemLedgEntry.RESET;
                ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                ItemLedgEntry.SETRANGE(Open, TRUE);
                ItemLedgEntry.SETRANGE("Posting Date", Date1460, Date1095 - 1);
                //ItemLedgEntry.SETFILTER("Inventory Posting Group",'<>%1','N_CARS');
                ItemLedgEntry.SETFILTER("Inventory Posting Group", '%1|%2|%3|%4', 'N_PART', 'ACCESSORY', 'BNP', 'N_PARTCONS');

                IF ItemLedgEntry.FINDSET THEN BEGIN
                    Line1460 := ItemLedgEntry.COUNT;
                    REPEAT
                        Qty1460 := Qty1460 + ItemLedgEntry."Remaining Quantity";
                        ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                        Value1460 := Value1460 + ItemLedgEntry."Cost Amount (Actual)";
                    UNTIL ItemLedgEntry.NEXT = 0;
                END;

                //1461-1825 days
                ItemLedgEntry.RESET;
                ItemLedgEntry.SETCURRENTKEY("Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date");
                ItemLedgEntry.SETRANGE(Open, TRUE);
                ItemLedgEntry.SETRANGE("Posting Date", Date1825, Date1460 - 1);
                //ItemLedgEntry.SETFILTER("Inventory Posting Group",'<>%1','N_CARS');
                ItemLedgEntry.SETFILTER("Inventory Posting Group", '%1|%2|%3|%4', 'N_PART', 'ACCESSORY', 'BNP', 'N_PARTCONS');
                IF ItemLedgEntry.FINDSET THEN BEGIN
                    Line1825 := ItemLedgEntry.COUNT;
                    REPEAT
                        Qty1825 := Qty1825 + ItemLedgEntry."Remaining Quantity";
                        ItemLedgEntry.CALCFIELDS("Cost Amount (Actual)");
                        Value1825 := Value1825 + ItemLedgEntry."Cost Amount (Actual)";
                    UNTIL ItemLedgEntry.NEXT = 0;
                END;

                TotalValue := Value181 + Value365 + Value730 + Value1095 + Value1460 + Value1825;
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
        Line181: Decimal;
        Text002: Label 'Enter the ending date';
        Line365: Decimal;
        Line730: Decimal;
        Line1095: Decimal;
        Line1460: Decimal;
        Line1825: Decimal;
        Qty181: Decimal;
        Qty365: Decimal;
        Qty730: Decimal;
        Qty1095: Decimal;
        Qty1460: Decimal;
        Qty1825: Decimal;
        Value181: Decimal;
        Value365: Decimal;
        Value730: Decimal;
        Value1095: Decimal;
        Value1460: Decimal;
        Value1825: Decimal;
        Date181: Date;
        Date365: Date;
        Date730: Date;
        Date1095: Date;
        Date1460: Date;
        Date1825: Date;
        TotalValue: Decimal;
}

