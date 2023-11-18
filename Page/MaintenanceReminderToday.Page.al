page 80039 "Maintenance Reminder Today"
{
    CardPageID = "Maintenance Reminder Card";
    PageType = List;
    SourceTable = Table70033;
    SourceTableView = WHERE (Maintenance = CONST (Yes));

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
                field("Next Call Date"; "Next Call Date")
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
                field("Days Before Due Date"; "Days Before Due Date")
                {
                }
                field(Maintenance; Maintenance)
                {
                }
                field(Comment; Comment)
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
        SETRANGE("Next Call Date", TODAY);
    end;

    var
        COFRec: Record "70034";
}

