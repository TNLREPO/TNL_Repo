report 50399 "Service Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ServiceTest.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Serial No.);
            RequestFilterFields = "Serial No.";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(Item_Ledger_Entry__Entry_No__; "Entry No.")
            {
            }
            column(IntegerCaption; IntegerCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Entry_No__Caption; FIELDCAPTION("Entry No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                ServTest.SETCURRENTKEY("Serial No.");
                ServTest.SETRANGE(ServTest."Serial No.", "Item Ledger Entry"."Serial No.");
                IF ServTest.FINDLAST THEN BEGIN
                    REPEAT
                        ServTest."Customer No." := "Item Ledger Entry"."Source No.";
                        ServTest.Date := "Item Ledger Entry"."Posting Date";
                        IF CustRec.GET("Item Ledger Entry"."Source No.") THEN
                            ServTest."Customer Name" := CustRec.Name;
                        IF VendRec.GET("Item Ledger Entry"."Source No.") THEN
                            ServTest."Customer Name" := VendRec.Name;
                        ServTest.MODIFY;
                    UNTIL ServTest.NEXT = 0;
                END;
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        ItemLedgEntry: Record 32;
        ServTest: Record "50166";
        CustRec: Record 18;
        VendRec: Record "23";
        IntegerCaptionLbl: Label 'Integer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

