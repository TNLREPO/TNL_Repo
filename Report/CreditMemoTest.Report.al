report 50388 "Credit Memo Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CreditMemoTest.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Entry No.);
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
            column(Item_Ledger_EntryCaption; Item_Ledger_EntryCaptionLbl)
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
                DeliveryTest.SETCURRENTKEY(Chassis);
                DeliveryTest.SETRANGE(Chassis, "Item Ledger Entry"."Serial No.");
                IF DeliveryTest.FINDLAST THEN BEGIN
                    DeliveryTest."Document Type" := "Item Ledger Entry"."Document Type";
                    DeliveryTest.MODIFY;
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
        DeliveryTest: Record "50116";
        Item_Ledger_EntryCaptionLbl: Label 'Item Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

