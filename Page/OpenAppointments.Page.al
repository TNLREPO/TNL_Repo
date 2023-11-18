page 80037 "Open Appointments"
{
    CardPageID = "Appointment Card";
    PageType = List;
    SourceTable = Table70033;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Appointment No."; "Appointment No.")
                {
                }
                field("Call Type"; "Call Type")
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
                field("Appointment Status"; "Appointment Status")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Days Before Due Date"; "Days Before Due Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

