report 50271 "Stock Aging"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockAging.rdlc';

    dataset
    {
        dataitem(DataItem3667; Table50136)
        {
            DataItemTableView = SORTING (Chassis No.);
            RequestFilterFields = "Chassis No.";
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
            column(Stock_Aging__Chassis_No__; "Chassis No.")
            {
            }
            column(Stock_Aging_Cost; Cost)
            {
            }
            column(Stock_AgingCaption; Stock_AgingCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                ILE.SETCURRENTKEY("Entry Type", "Serial No.");
                ILE.SETRANGE(ILE."Entry Type", ILE."Entry Type"::Purchase);
                ILE.SETRANGE(ILE."Serial No.", "Stock Aging"."Chassis No.");
                IF ILE.FINDFIRST THEN BEGIN
                    ILE.CALCFIELDS("Cost Amount (Actual)");
                    "Stock Aging".Cost := ILE."Cost Amount (Actual)";
                    "Stock Aging".MODIFY;
                END;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Chassis No.");
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
        ILE: Record 32;
        StockAging: Record "50136";
        Stock_AgingCaptionLbl: Label 'Stock Aging';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

