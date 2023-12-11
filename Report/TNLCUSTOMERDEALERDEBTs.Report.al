report 50610 "TNL CUSTOMER DEALER DEBTs"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TNLCUSTOMERDEALERDEBTs.rdlc';

    dataset
    {
        dataitem(DataItem1000000016; Table21)
        {
            DataItemTableView = WHERE (Customer No.=FILTER(TDP*|TCO*));
            RequestFilterFields = "Customer No.","Posting Date";
            column(PostingDate_CustLedgerEntry;"Cust. Ledger Entry"."Posting Date")
            {
            }
            column(DocumentType_CustLedgerEntry;"Cust. Ledger Entry"."Document Type")
            {
            }
            column(RemainingAmtLCY_CustLedgerEntry;"Cust. Ledger Entry"."Remaining Amt. (LCY)")
            {
            }
            column(CustName;CustName)
            {
            }
            column(Period_1;Period[1])
            {
            }
            column(Period_2;Period[2])
            {
            }
            column(Period_3;Period[3])
            {
            }
            column(Period_4;Period[4])
            {
            }
            column(Period_5;Period[5])
            {
            }
            column(Period_6;Period[6])
            {
            }
            column(Period_7;Period[7])
            {
            }
            column(Period_8;Period[8])
            {
            }
            column(Period_9;Period[9])
            {
            }
            column(NoOfDays;NoOfDays)
            {
            }
            column(City;City)
            {
            }
            column(CustomerNo_CustLedgerEntry;"Cust. Ledger Entry"."Customer No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Customer.GET("Customer No.");
                CustName := Customer.Name;
                City := Customer.City;

                RefDate := (TODAY);

                Period[1] := 0;
                Period[2] := 0;
                Period[3] := 0;
                Period[4] := 0;
                Period[5] := 0;
                Period[6] := 0;
                Period[7] := 0;
                Period[8] := 0;
                Period[9] := 0;


                NoOfDays := RefDate - "Posting Date";



                IF (NoOfDays <16) THEN
                  Period[1] := "Remaining Amt. (LCY)";

                IF (NoOfDays >15 ) AND (NoOfDays < 31) THEN
                  Period[2] := "Remaining Amt. (LCY)";

                IF (NoOfDays  >30) AND (NoOfDays < 46) THEN
                 // Period[3] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                 Period[3] := "Remaining Amt. (LCY)";

                IF (NoOfDays > 45) AND (NoOfDays < 53) THEN
                 // Period[4] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                  Period[4] := "Remaining Amt. (LCY)";

                IF (NoOfDays > 52) AND (NoOfDays < 61) THEN
                // // Period[4] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                  Period[5] := "Remaining Amt. (LCY)";

                IF (NoOfDays > 60) THEN
                 // Period[5] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                    Period[6] := "Remaining Amt. (LCY)";

                IF (NoOfDays < 2 )  THEN
                 // Period[5] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                    Period[7] := "Remaining Amt. (LCY)";

                IF (NoOfDays >0 ) AND (NoOfDays < 4 )THEN
                 // Period[5] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                    Period[8] := "Remaining Amt. (LCY)";
                IF (NoOfDays >0 ) AND (NoOfDays < 8 )THEN
                 // Period[5] := "Cust. Ledger Entry"."Remaining Amt. (LCY)";
                    Period[9] := "Remaining Amt. (LCY)";
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
        Period: array [9] of Decimal;
        Customer: Record "18";
        CustName: Text;
        RefDate: Date;
        NoOfDays: Integer;
        City: Text;
}

