report 50407 "Update Sales"
{
    DefaultLayout = RDLC;
    RDLCLayout = './UpdateSales.rdlc';

    dataset
    {
        dataitem(DataItem2891; Table50058)
        {
            DataItemTableView = SORTING (Item Serial No.);
            RequestFilterFields = "VRI Code";
            column(VRI_Table__VRI_Code_; "VRI Code")
            {
            }
            column(VRI_Table__Item_Serial_No__; "Item Serial No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItemLedgEntry.SETCURRENTKEY("Entry Type", "Serial No.");
                ItemLedgEntry.SETRANGE("Entry Type", ItemLedgEntry."Entry Type"::Sale);
                ItemLedgEntry.SETRANGE("Serial No.", "VRI Table"."Item Serial No.");
                IF ItemLedgEntry.FINDLAST THEN BEGIN
                    IF ItemLedgEntry."Document Type" = ItemLedgEntry."Document Type"::"Sales Shipment" THEN
                        "VRI Table".Sold := TRUE;
                    "VRI Table".MODIFY;
                END;

                ItemLedgEntry2.SETCURRENTKEY("Entry Type", "Serial No.");
                ItemLedgEntry2.SETRANGE("Entry Type", ItemLedgEntry2."Entry Type"::Transfer);
                ItemLedgEntry2.SETRANGE("Serial No.", "VRI Table"."Item Serial No.");
                IF ItemLedgEntry2.FINDLAST THEN BEGIN
                    IF ItemLedgEntry2."Document Type" = ItemLedgEntry2."Document Type"::"Transfer Receipt" THEN
                        IF ItemLedgEntry2."Location Code" <> "VRI Table"."VRI Location" THEN
                            "VRI Table".Transferred := TRUE;
                    "VRI Table".MODIFY;
                END;
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE('Sold vehicles have been updated!');
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("VRI Code");
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
        ItemLedgEntry2: Record 32;
}

