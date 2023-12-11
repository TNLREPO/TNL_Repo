report 50613 "VehicleUnder Repair"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VehicleUnderRepair.rdlc';

    dataset
    {
        dataitem(DataItem1000000011; Table32)
        {
            DataItemTableView = SORTING (Document No., Document Type, Document Line No.)
                                WHERE (Document No.=FILTER(TCOF*),
                                      Location Code=FILTER(114SER));
            RequestFilterFields = "Posting Date";
            column(DocNum;"Item Ledger Entry"."Document No.")
            {
            }
            column(ItemNo_ItemLedgerEntry;"Item Ledger Entry"."Item No.")
            {
            }
            column(Description_ItemLedgerEntry;"Item Ledger Entry".Description)
            {
            }
            column(Quantity_ItemLedgerEntry;"Item Ledger Entry".Quantity)
            {
            }
            dataitem(DataItem1000000000;Table5900)
            {
                DataItemLink = No.=FIELD(Document No.);
                column(OrderDate_ServiceHeader;"Service Header"."Order Date")
                {
                }
                column(Chassis_ServiceHeader;"Service Header".Chassis)
                {
                }
                column(Model_ServiceHeader;"Service Header".Model)
                {
                }
                column(OdometerReadingReception_ServiceHeader;"Service Header"."Odometer Reading Reception")
                {
                }
                column(VehicleRegistrationNo_ServiceHeader;"Service Header"."Vehicle Registration No.")
                {
                }
                column(No_ServiceHeader;"Service Header"."No.")
                {
                }
            }
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

