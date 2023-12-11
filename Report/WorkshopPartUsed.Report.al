report 50090 "Workshop Part Used"
{
    DefaultLayout = RDLC;
    RDLCLayout = './WorkshopPartUsed.rdlc';
    EnableHyperlinks = true;

    dataset
    {
        dataitem(DataItem10; Table27)
        {
            DataItemTableView = WHERE (Item Category Code=FILTER(PART));
            column(No_Item;Item."No.")
            {
            }
            column(Description_Item;Item.Description)
            {
            }
            column(Start_Date;StartDate)
            {
            }
            column(End_Date;EndDate)
            {
            }
            column(Quantity_Used;QuantityUsed)
            {
            }
            column(Cost_Amount;CostAmount)
            {
            }

            trigger OnAfterGetRecord()
            begin
                ItemLedgerEntry.SETRANGE("Item No.","No.");
                ItemLedgerEntry.SETRANGE("Posting Date",StartDate,EndDate);
                ItemLedgerEntry.SETRANGE("Location Code",LocationFilter);
                ItemLedgerEntry.SETRANGE("Document Type",ItemLedgerEntry."Document Type"::"Service Invoice");
                ItemLedgerEntry.SETFILTER(Quantity,'<>%1',0);

                IF ItemLedgerEntry.FINDFIRST THEN BEGIN

                QuantityUsed := 0;
                CostAmount := 0;

                  REPEAT
                    ItemLedgerEntry.CALCFIELDS("Cost Amount (Actual)");
                    CostAmount += ItemLedgerEntry."Cost Amount (Actual)";
                    QuantityUsed += ItemLedgerEntry.Quantity;

                  UNTIL ItemLedgerEntry.NEXT = 0;
                END;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Start Date";StartDate)
                {
                }
                field("End Date";EndDate)
                {
                }
                field(Location;LocationFilter)
                {
                    TableRelation = Location;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        QuantityUsed: Decimal;
        StartDate: Date;
        EndDate: Date;
        ItemLedgerEntry: Record "32";
        ItemLedgerEntry2: Record "32";
        ItemNo: Code[40];
        ItemName: Text[50];
        LocationFilter: Code[30];
        CostAmount: Decimal;
}

