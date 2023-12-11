report 50615 "Vehcle Undr. Repair"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VehcleUndrRepair.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5900)
        {
            DataItemTableView = SORTING (Document Type, No.)
                                WHERE (Posted = FILTER (Yes),
                                      Document Type=FILTER(Order));
            RequestFilterFields = "Posting Date";
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
            dataitem(DataItem1000000006;Table5902)
            {
                DataItemLink = Document No.=FIELD(No.);
                DataItemTableView = WHERE(Location Code=FILTER(114SER),
                                          Quantity=FILTER(>0),
                                          Document Type=CONST(Order),
                                          Posted=CONST(Yes));
                column(No_ServiceLine;"Service Line"."No.")
                {
                }
                column(Description_ServiceLine;"Service Line".Description)
                {
                }
                column(Quantity_ServiceLine;"Service Line".Quantity)
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

