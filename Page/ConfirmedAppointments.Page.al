page 50159 "Confirmed Appointments."
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50114;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Service Item"; "Service Item")
                {
                }
                field("Service Code"; "Service Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Service Due Projected Date"; "Service Due Projected Date")
                {
                }
                field("Service Date"; "Service Date")
                {
                }
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                    LookupPageID = "Awaiting Payment Confirmations";
                }
                field("Customer Order Form Date"; "Customer Order Form Date")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Appointment Status"; "Appointment Status")
                {
                }
                field("Technician Code"; "Technician Code")
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        SETRANGE("Appointment Status", "Appointment Status"::Approved);
    end;
}

