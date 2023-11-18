page 80008 "Service Index List-Treated"
{
    AutoSplitKey = true;
    CardPageID = "PSFU Card";
    DelayedInsert = true;
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table70040;
    SourceTableView = WHERE (Done = CONST (Yes),
                            Call Due Date=FILTER(01/01/23..));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Index No.";"Index No.")
                {
                }
                field("COF No.";"COF No.")
                {
                }
                field("Vehicle No.";"Vehicle No.")
                {
                }
                field("Customer No.";"Customer No.")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field("Delivery Date";"Delivery Date")
                {
                }
                field("Call Due Date";"Call Due Date")
                {
                }
                field(Model;Model)
                {
                }
                field("Make of the Vehicle";"Make of the Vehicle")
                {
                }
                field(Completed;Completed)
                {
                }
                field("PSFU Actual Date";"PSFU Actual Date")
                {
                }
                field("PSFU Actual Time";"PSFU Actual Time")
                {
                }
                field("PSFU Staff Name";"PSFU Staff Name")
                {
                }
                field(Done;Done)
                {
                }
                field("Fix it right";"Fix it right")
                {
                }
                field("Contact Person";"Contact Person")
                {
                }
                field("Contact Position";"Contact Position")
                {
                }
                field("Contact Phone No.";"Contact Phone No.")
                {
                }
                field("Contact Mobile Phone";"Contact Mobile Phone")
                {
                }
                field("Job Card No.";"Job Card No.")
                {
                }
                field("Responsible Supervisor";"Responsible Supervisor")
                {
                }
                field(Called;Called)
                {
                }
                field("Call Response";"Call Response")
                {
                }
                field("Repeat Call 1";"Repeat Call 1")
                {
                }
                field("Repeat Call 2";"Repeat Call 2")
                {
                }
                field("Repeat Call 3";"Repeat Call 3")
                {
                }
                field("Repeat Call 1 Date";"Repeat Call 1 Date")
                {
                }
                field("Repeat Call 2 Date";"Repeat Call 2 Date")
                {
                }
                field("Repeat Call 3 Date";"Repeat Call 3 Date")
                {
                }
                field("Call 1 Response";"Call 1 Response")
                {
                }
                field("Call 2 Response";"Call 2 Response")
                {
                }
                field("Call 3 Response";"Call 3 Response")
                {
                }
                field(Action;Action)
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

