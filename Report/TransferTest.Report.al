report 50416 "Transfer Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TransferTest.rdlc';

    dataset
    {
        dataitem(DataItem8023; Table50175)
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
            column(Transfer_Test__Serial_No__; "Serial No.")
            {
            }
            column(Transfer_TestCaption; Transfer_TestCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Transfer_Test__Serial_No__Caption; FIELDCAPTION("Serial No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*ItemLedgEntry.SETCURRENTKEY("Entry No.");
                ItemLedgEntry.SETRANGE("Serial No.","Transfer Test"."Serial No.");
                IF ItemLedgEntry.FINDLAST THEN
                  IF ItemLedgEntry."Location Code" = "Transfer Test"."Location Code" THEN BEGIN
                  "Transfer Test"."Not Transferred" := TRUE;
                  "Transfer Test".MODIFY;
                END;
                */

                VRI.SETCURRENTKEY("Item Serial No.");
                VRI.SETRANGE("Item Serial No.", "Transfer Test"."Serial No.");
                IF VRI.FINDFIRST THEN BEGIN
                    VRI.Transferred := FALSE;
                    VRI.MODIFY;
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
        VRI: Record "50058";
        Transfer_TestCaptionLbl: Label 'Transfer Test';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

