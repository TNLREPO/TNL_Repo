report 50030 "Date Correction_2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DateCorrection2.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table32)
        {
            DataItemTableView = SORTING (Document No., Document Type, Document Line No.);
            RequestFilterFields = "Document No.", "Inventory Posting Group", "Posting Date";
            column(DocumentNo_ItemLedgerEntry; "Item Ledger Entry"."Document No.")
            {
            }
            column(PostingDate_ItemLedgerEntry; "Item Ledger Entry"."Posting Date")
            {
            }
            column(InventoryPostingGroup_ItemLedgerEntry; "Item Ledger Entry"."Inventory Posting Group")
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Item Ledger Entry"."Posting Date" := 010118D;
                "Item Ledger Entry"."Document Date" := 010118D;
                "Item Ledger Entry".MODIFY;
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
}

