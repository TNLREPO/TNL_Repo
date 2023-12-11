report 50406 "Sales Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SalesTest.rdlc';

    dataset
    {
        dataitem(DataItem1497; Table50171)
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
            column(Sales_Test__Serial_No__; "Serial No.")
            {
            }
            column(Sales_TestCaption; Sales_TestCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sales_Test__Serial_No__Caption; FIELDCAPTION("Serial No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                //ItemLedgEntry.SETCURRENTKEY("Serial No.");
                ItemLedgEntry.SETRANGE("Serial No.", "Sales Test"."Serial No.");
                IF ItemLedgEntry.FINDLAST THEN BEGIN
                    "Sales Test"."Sales Date" := ItemLedgEntry."Posting Date";
                    "Sales Test"."Sales Amount" := ItemLedgEntry."Sales Amount (Actual)";
                    "Sales Test"."Dealer No." := ItemLedgEntry."Source No.";
                    IF CustRec.GET(ItemLedgEntry."Source No.") THEN
                        "Sales Test"."Dealer Name" := CustRec.Name;
                    "Sales Test"."Purchased Date" := ItemLedgEntry."Purchase Date";
                    "Sales Test"."Item No." := ItemLedgEntry."Item No.";
                    ItemRec.GET(ItemLedgEntry."Item No.");
                    "Sales Test"."Model No." := ItemRec."Model No.";
                    "Sales Test".MODIFY;
                END;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Serial No.");
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
        ItemRec: Record 27;
        CustRec: Record 18;
        Sales_TestCaptionLbl: Label 'Sales Test';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

