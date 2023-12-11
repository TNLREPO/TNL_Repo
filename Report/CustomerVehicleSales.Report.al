report 50328 "Customer Vehicle Sales"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerVehicleSales.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Entry Type, Source No., Chasis Number)
                                WHERE (Entry Type=CONST(Sale),
                                      Inventory Posting Group=CONST(N_CARS));
            RequestFilterFields = "Item No.","Source No.","Posting Date";
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
            column(Item_Ledger_Entry__Entry_Type_;"Entry Type")
            {
            }
            column(Item_Ledger_Entry__Source_No__;"Source No.")
            {
            }
            column(custrec_Name;custrec.Name)
            {
            }
            column(Item_Ledger_Entry__Item_No__;"Item No.")
            {
            }
            column(Item_Ledger_Entry__Serial_No__;"Serial No.")
            {
            }
            column(Item_Ledger_Entry__Exterior_Colour_Name_;"Exterior Colour Name")
            {
            }
            column(Item_Ledger_Entry__Engine_No__;"Engine No.")
            {
            }
            column(Item_Ledger_Entry__Key_No__;"Key No.")
            {
            }
            column(Item_Ledger_Entry__Posting_Date_;"Posting Date")
            {
            }
            column(Item_Ledger_Entry__Document_No__;"Document No.")
            {
            }
            column(Item_Ledger_Entry_Description;Description)
            {
            }
            column(Item_Ledger_Entry_Quantity;Quantity)
            {
            }
            column(TotalFor___Source_No__;TotalFor +"Source No.")
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000050;Quantity)
            {
            }
            column(custrec_Name_Control1000000007;custrec.Name)
            {
            }
            column(TotalFor___FIELDCAPTION__Entry_Type__;TotalFor + FIELDCAPTION("Entry Type"))
            {
            }
            column(Item_Ledger_Entry_Quantity_Control1000000052;Quantity)
            {
            }
            column(Customer_Vehicle_SalesCaption;Customer_Vehicle_SalesCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item_Ledger_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(Item_Ledger_Entry__Serial_No__Caption;FIELDCAPTION("Serial No."))
            {
            }
            column(Item_Ledger_Entry__Exterior_Colour_Name_Caption;FIELDCAPTION("Exterior Colour Name"))
            {
            }
            column(Item_Ledger_Entry__Engine_No__Caption;FIELDCAPTION("Engine No."))
            {
            }
            column(Item_Ledger_Entry__Key_No__Caption;FIELDCAPTION("Key No."))
            {
            }
            column(Item_Ledger_Entry__Posting_Date_Caption;FIELDCAPTION("Posting Date"))
            {
            }
            column(Item_Ledger_Entry__Document_No__Caption;FIELDCAPTION("Document No."))
            {
            }
            column(Item_Ledger_Entry_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Item_Ledger_Entry_QuantityCaption;FIELDCAPTION(Quantity))
            {
            }
            column(Item_Ledger_Entry__Entry_Type_Caption;FIELDCAPTION("Entry Type"))
            {
            }
            column(Item_Ledger_Entry__Source_No__Caption;FIELDCAPTION("Source No."))
            {
            }
            column(Item_Ledger_Entry_Entry_No_;"Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF custrec.GET("Item Ledger Entry"."Source No.") THEN;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Source No.");
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
        custrec: Record "18";
        Customer_Vehicle_SalesCaptionLbl: Label 'Customer/Vehicle Sales';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

