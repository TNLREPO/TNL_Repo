report 50386 "Purchase Date Analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseDateAnalysis.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (No.)
                                WHERE (Inventory Posting Group=CONST(N_CARS));
            RequestFilterFields = "Date Filter";
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
            column(Item__No__;"No.")
            {
            }
            column(Item_Description;Description)
            {
            }
            column(Item__Net_Change_;"Net Change")
            {
            }
            column(Item__Net_Change__Control1000000000;"Net Change")
            {
            }
            column(Vehicle_Purchase_DateCaption;Vehicle_Purchase_DateCaptionLbl)
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
            column(Item__Net_Change_Caption;FIELDCAPTION("Net Change"))
            {
            }
            dataitem(DataItem7209;Table32)
            {
                DataItemLink = Item No.=FIELD(No.);
                DataItemTableView = SORTING(Purchase Date)
                                    ORDER(Ascending)
                                    WHERE(Remaining Quantity=FILTER(<>0));
                column(Item_Ledger_Entry__Serial_No__;"Serial No.")
                {
                }
                column(Item_Ledger_Entry__Purchase_Date_;"Purchase Date")
                {
                }
                column(SN;SN)
                {
                }
                column(Item_Ledger_Entry__Exterior_Colour_Name_;"Exterior Colour Name")
                {
                }
                column(Item_Ledger_Entry_Entry_No_;"Entry No.")
                {
                }
                column(Item_Ledger_Entry_Item_No_;"Item No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    SN +=1;
                end;

                trigger OnPostDataItem()
                begin
                    SN := 0;
                end;

                trigger OnPreDataItem()
                begin
                    SN := 0;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF Item."Net Change" = 0 THEN
                  CurrReport.SKIP;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("No.");
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
        TotalFor: Label 'Total for ';
        SN: Integer;
        Vehicle_Purchase_DateCaptionLbl: Label 'Vehicle Purchase Date';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

