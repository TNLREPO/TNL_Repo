report 50383 "Delivery Test"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DeliveryTest.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50116)
        {

            trigger OnAfterGetRecord()
            begin

                IF VehicleDelivery.GET("Delivery Test".Chassis) THEN BEGIN
                    "Delivery Test".Delivered := VehicleDelivery.Delivered;
                    "Delivery Test"."Delivery Date" := VehicleDelivery."Delivery Date";
                    "Delivery Test".MODIFY;
                END;
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
        VehicleDelivery: Record "50056";
}

