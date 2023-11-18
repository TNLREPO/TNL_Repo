page 50598 "Pool Car Availability Subform"
{
    Editable = false;
    PageType = ListPart;
    SourceTable = Table70004;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Registration No."; "Registration No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Driver Name"; "Driver Name")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Check Availability")
            {
                Image = Check;

                trigger OnAction()
                begin
                    CheckAvailability;
                end;
            }
        }
    }
}

