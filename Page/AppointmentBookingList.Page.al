page 80005 "Appointment Booking List"
{
    CardPageID = "Appointment Booking Card";
    PageType = List;
    SourceTable = "Service AppointmentsX";
    SourceTableView = WHERE("Call Type" = filter('Appointment'));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Appointment No."; Rec."Appointment No.")
                {
                }
                field("Service Item"; Rec."Service Item")
                {
                }
                field("Operation Code"; Rec."Operation Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Service Due Date"; Rec."Service Due Date")
                {
                }
                field("Agreed Date"; Rec."Agreed Date")
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Days Before Due Date"; Rec."Days Before Due Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

