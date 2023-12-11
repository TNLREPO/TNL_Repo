report 50364 "Update Purchase Date"
{
    DefaultLayout = RDLC;
    RDLCLayout = './UpdatePurchaseDate.rdlc';

    dataset
    {
        dataitem(DataItem7209; Table32)
        {
            DataItemTableView = SORTING (Entry No.);
            RequestFilterFields = "Posting Date", "Serial No.";
            column(Item_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Item_Ledger_Entry__Serial_No__; "Serial No.")
            {
            }
            column(Item_Ledger_Entry__Purchase_Date_; "Purchase Date")
            {
            }
            column(Item_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItemLedgEntry.SETRANGE("Serial No.", "Item Ledger Entry"."Serial No.");
                IF ItemLedgEntry.FINDFIRST THEN BEGIN
                    "Item Ledger Entry"."Purchase Date" := ItemLedgEntry."Posting Date";
                    "Item Ledger Entry"."Exterior Colour Name" := ItemLedgEntry."Exterior Colour Name";
                    "Item Ledger Entry"."Exterior Colour Code" := ItemLedgEntry."Exterior Colour Code";
                    "Item Ledger Entry"."Engine No." := ItemLedgEntry."Engine No.";
                    "Item Ledger Entry"."Key No." := ItemLedgEntry."Key No.";
                    "Item Ledger Entry".MODIFY;
                END;
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE('Update completed!');
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Entry No.");
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
}

