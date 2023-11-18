page 70072 "PSFU Questionnnaire List"
{
    AutoSplitKey = true;
    CardPageID = "PSFU Questionnaire Card";
    DelayedInsert = true;
    Editable = false;
    PageType = List;
    SourceTable = Table50045;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Index No."; "Index No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("Call Due Date"; "Call Due Date")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Contact Person"; "Contact Person")
                {
                }
                field("Contact Position"; "Contact Position")
                {
                }
                field("Contact Phone No."; "Contact Phone No.")
                {
                }
                field("Contact Mobile Phone"; "Contact Mobile Phone")
                {
                }
                field("Vehicle No."; "Vehicle No.")
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
                field("Driver's Name"; "Driver's Name")
                {
                }
                field("Driver's Phone (Mobile)"; "Driver's Phone (Mobile)")
                {
                }
                field(Model; Model)
                {
                }
                field("Make of the Vehicle"; "Make of the Vehicle")
                {
                }
                field("Job Card No."; "Job Card No.")
                {
                }
                field("Responsible Supervisor"; "Responsible Supervisor")
                {
                }
                field(Called; Called)
                {
                }
                field("Call Response"; "Call Response")
                {
                }
                field("Repeat Call 1"; "Repeat Call 1")
                {
                }
                field("Repeat Call 2"; "Repeat Call 2")
                {
                }
                field("Repeat Call 3"; "Repeat Call 3")
                {
                }
                field("Repeat Call 1 Date"; "Repeat Call 1 Date")
                {
                }
                field("Repeat Call 2 Date"; "Repeat Call 2 Date")
                {
                }
                field("Repeat Call 3 Date"; "Repeat Call 3 Date")
                {
                }
                field("Call 1 Response"; "Call 1 Response")
                {
                }
                field("Call 2 Response"; "Call 2 Response")
                {
                }
                field("Call 3 Response"; "Call 3 Response")
                {
                }
                field(Action; Action)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

