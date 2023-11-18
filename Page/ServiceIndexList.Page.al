page 50245 "Service Index List"
{
    AutoSplitKey = true;
    CardPageID = "Post Followup Tracking Sheet";
    DelayedInsert = true;
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50045;
    SourceTableView = WHERE (Done = CONST (No));

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
                field("Invoice Date"; "Invoice Date")
                {
                }
                field(Completed; Completed)
                {
                }
                field(Done; Done)
                {
                }
                field("Fix it right"; "Fix it right")
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
                field("Call Due Date"; "Call Due Date")
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

