report 50158 "Stock of Vehicles - 2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockofVehicles2.rdlc';

    dataset
    {
        dataitem(DataItem1; Table32)
        {
            DataItemTableView = SORTING (Serial No.)
                                WHERE (Remaining Quantity=CONST(1));
            RequestFilterFields = "Item No.", "Location Code", "Global Dimension 1 Code", "Global Dimension 2 Code";
            column(SerialNo_ItemLedgerEntry; "Item Ledger Entry"."Serial No.")
            {
            }
            column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
            {
            }
            column(PostingDate_ItemLedgerEntry; "Item Ledger Entry"."Posting Date")
            {
            }
            column(Description_ItemLedgerEntry; "Item Ledger Entry".Description)
            {
            }
            column(LocationCode_ItemLedgerEntry; "Item Ledger Entry"."Location Code")
            {
            }
            column(Quantity_ItemLedgerEntry; "Item Ledger Entry".Quantity)
            {
            }
            column(CostAmountActual_ItemLedgerEntry; "Item Ledger Entry"."Cost Amount (Actual)")
            {
            }
            column(Descrptn; Descrptn)
            {
            }
            column(xCompanyName; xCompanyName)
            {
            }

            trigger OnAfterGetRecord()
            begin
                xCompanyName := CompanyInfo.Name;

                Descrptn := '';
                Item.GET("Item No.");
                Descrptn := Item.Description;
                IF Item."Inventory Posting Group" <> 'N_CARS' THEN
                    CurrReport.SKIP;
            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.GET;
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
        Item: Record 27;
        Descrptn: Text[50];
        CompanyInfo: Record "79";
        xCompanyName: Text[50];
}

