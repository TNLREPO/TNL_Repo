page 50245 "Service Index List"
{
    AutoSplitKey = true;
    CardPageID = "Post Followup Tracking Sheet";
    DelayedInsert = true;
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Service Index";
    SourceTableView = WHERE(Done = FILTER(false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Index No."; Rec."Index No.")
                {
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                }
                field("Invoice Date"; Rec."Invoice Date")
                {
                }
                field(Completed; Rec.Completed)
                {
                }
                field(Done; Rec.Done)
                {
                }
                field("Fix it right"; Rec."Fix it right")
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Contact Person"; Rec."Contact Person")
                {
                }
                field("Contact Position"; Rec."Contact Position")
                {
                }
                field("Contact Phone No."; Rec."Contact Phone No.")
                {
                }
                field("Contact Mobile Phone"; Rec."Contact Mobile Phone")
                {
                }
                field("Vehicle No."; Rec."Vehicle No.")
                {
                }
                field(Model; Rec.Model)
                {
                }
                field("Make of the Vehicle"; Rec."Make of the Vehicle")
                {
                }
                field("Job Card No."; Rec."Job Card No.")
                {
                }
                field("Responsible Supervisor"; Rec."Responsible Supervisor")
                {
                }
                field("Call Due Date"; Rec."Call Due Date")
                {
                }
                field(Called; Rec.Called)
                {
                }
                field("Call Response"; Rec."Call Response")
                {
                }
                field("Repeat Call 1"; Rec."Repeat Call 1")
                {
                }
                field("Repeat Call 2"; Rec."Repeat Call 2")
                {
                }
                field("Repeat Call 3"; Rec."Repeat Call 3")
                {
                }
                field("Repeat Call 1 Date"; Rec."Repeat Call 1 Date")
                {
                }
                field("Repeat Call 2 Date"; Rec."Repeat Call 2 Date")
                {
                }
                field("Repeat Call 3 Date"; Rec."Repeat Call 3 Date")
                {
                }
                field("Call 1 Response"; Rec."Call 1 Response")
                {
                }
                field("Call 2 Response"; Rec."Call 2 Response")
                {
                }
                field("Call 3 Response"; Rec."Call 3 Response")
                {
                }
                field(Action; Rec.Action)
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

