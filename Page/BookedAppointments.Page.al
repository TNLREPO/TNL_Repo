page 80003 "Booked Appointments"
{
    CardPageID = "Appointment Booking Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70033;
    SourceTableView = WHERE (Appointment Status=CONST(Received Appointment));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Appointment No."; "Appointment No.")
                {
                }
                field("Service Item"; "Service Item")
                {
                }
                field("Operation Code"; "Operation Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Service Due Date"; "Service Due Date")
                {
                }
                field("Agreed Date"; "Agreed Date")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Appointment Status"; "Appointment Status")
                {
                }
                field("Days Before Due Date"; "Days Before Due Date")
                {
                }
                field("COF No."; "COF No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

