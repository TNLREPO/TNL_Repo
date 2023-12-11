report 50169 "Service History"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ServiceHistory.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table70034)
        {
            RequestFilterFields = "Vehicle Registration No.";
            column(No_CustomerOrderHeaderX; "Customer Order HeaderX"."No.")
            {
            }
            column(OperationCode_CustomerOrderHeaderX; "Customer Order HeaderX"."Operation Code")
            {
            }
            column(OdometerReading_CustomerOrderHeaderX; "Customer Order HeaderX"."Odometer Reading")
            {
            }
            column(ActualDeliveryDate_CustomerOrderHeaderX; "Customer Order HeaderX"."Actual Delivery Date")
            {
            }
            column(DateDelivered_CustomerOrderHeaderX; "Customer Order HeaderX"."Date Delivered")
            {
            }
            column(CustNo; CustNo)
            {
            }
            column(CustName; CustName)
            {
            }
            column(VehicleRegNo; VehicleRegNo)
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF ServiceItem.GET("Vehicle Registration No.") THEN BEGIN
                    CustNo := ServiceItem."Customer No.";
                    ServiceItem.CALCFIELDS(Name);
                    CustName := ServiceItem.Name;
                    VehicleRegNo := ServiceItem."No.";
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
        ServiceItem: Record "5940";
        CustNo: Code[20];
        CustName: Text[150];
        VehicleRegNo: Code[20];
}

