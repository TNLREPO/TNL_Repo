report 50393 "Item Age Detail"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemAgeDetail.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (Inventory Posting Group);
            RequestFilterFields = "Inventory Posting Group", "Stock Date", "Item Category Code", "Creation Date";
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
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Last_Date_Modified_; "Last Date Modified")
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(Item__Item_Category_Code_; "Item Category Code")
            {
            }
            column(Item__Stock_Date_; "Stock Date")
            {
            }
            column(Item__Part_Category_; "Part Category")
            {
            }
            column(Item__Creation_Date_; "Creation Date")
            {
            }
            column(Item__Unit_Price_; "Unit Price")
            {
            }
            column(Item__Model_No__; "Model No.")
            {
            }
            column(TotalFor___FIELDCAPTION__Inventory_Posting_Group__; TotalFor + FIELDCAPTION("Inventory Posting Group"))
            {
            }
            column(Item__Unit_Price__Control1000000041; "Unit Price")
            {
            }
            column(Item_Inventory_Control1000000042; Inventory)
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Item_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Item__Unit_Price_Caption; FIELDCAPTION("Unit Price"))
            {
            }
            column(Item__Last_Date_Modified_Caption; FIELDCAPTION("Last Date Modified"))
            {
            }
            column(Item_InventoryCaption; FIELDCAPTION(Inventory))
            {
            }
            column(Item__Item_Category_Code_Caption; FIELDCAPTION("Item Category Code"))
            {
            }
            column(Item__Stock_Date_Caption; FIELDCAPTION("Stock Date"))
            {
            }
            column(Item__Part_Category_Caption; FIELDCAPTION("Part Category"))
            {
            }
            column(Item__Creation_Date_Caption; FIELDCAPTION("Creation Date"))
            {
            }
            column(Item__Model_No__Caption; FIELDCAPTION("Model No."))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FIELDCAPTION("Inventory Posting Group"))
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Inventory Posting Group");
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
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

