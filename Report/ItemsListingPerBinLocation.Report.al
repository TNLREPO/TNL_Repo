report 50104 "Items Listing Per Bin Location"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemsListingPerBinLocation.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            CalcFields = Inventory;
            DataItemTableView = SORTING (Shelf No.);
            RequestFilterFields = "Shelf No.", "Inventory Posting Group", "Location Filter", Inventory;
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
            column(itemf; itemf)
            {
            }
            column(Item__Shelf_No__; "Shelf No.")
            {
            }
            column(Item__Shelf_No___Control1000000008; "Shelf No.")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item_Inventory; Inventory)
            {
            }
            column(Item__Shelf_No___Control1000000021; "Shelf No.")
            {
            }
            column(Item__Unit_Cost_; "Unit Cost")
            {
            }
            column(Item__Unit_Price_; "Unit Price")
            {
            }
            column(serial; serial)
            {
            }
            column(Item__Shelf_No___Control1000000019; "Shelf No.")
            {
            }
            column(Item_Inventory_Control1000000020; Inventory)
            {
            }
            column(Item_Listing_Per_Bin_LocationCaption; Item_Listing_Per_Bin_LocationCaptionLbl)
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
            column(Item_InventoryCaption; FIELDCAPTION(Inventory))
            {
            }
            column(Item__Shelf_No___Control1000000021Caption; FIELDCAPTION("Shelf No."))
            {
            }
            column(Item__Unit_Cost_Caption; FIELDCAPTION("Unit Cost"))
            {
            }
            column(Item__Unit_Price_Caption; FIELDCAPTION("Unit Price"))
            {
            }
            column(S_No_Caption; S_No_CaptionLbl)
            {
            }
            column(Item__Shelf_No__Caption; FIELDCAPTION("Shelf No."))
            {
            }
            column(Item__Shelf_No___Control1000000008Caption; FIELDCAPTION("Shelf No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CALCFIELDS(Item.Inventory);

                BinInv := BinInv + Item.Inventory;
                Inv := Item.Inventory;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Shelf No.");

                CurrReport.CREATETOTALS(BinInv);
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

    trigger OnPreReport()
    begin
        itemf := Item.GETFILTERS;
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        LineOutPut: Option All,"Not Zero",Zero,"None";
        BinOutPut: Option All,"Not Zero",Zero;
        ShowIt: Boolean;
        BinInv: Decimal;
        Inv: Decimal;
        serial: Integer;
        itemf: Text[250];
        Item_Listing_Per_Bin_LocationCaptionLbl: Label 'Item Listing Per Bin Location';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        S_No_CaptionLbl: Label 'S/No.';
}

