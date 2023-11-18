page 80049 "PSFU Treated"
{
    AutoSplitKey = true;
    CardPageID = "PSFU Card";
    DelayedInsert = true;
    Editable = false;
    PageType = List;
    SourceTable = Table70040;
    SourceTableView = WHERE (Done = CONST (Yes),
                            Service Location=FILTER(120ISO));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Index No.";"Index No.")
                {
                }
                field("Call Due Date";"Call Due Date")
                {
                }
                field("Customer No.";"Customer No.")
                {
                }
                field("Customer Name";"Customer Name")
                {
                }
                field("Vehicle No.";"Vehicle No.")
                {
                }
                field(Brand;Brand)
                {
                }
                field(Model;Model)
                {
                }
                field("Make of the Vehicle";"Make of the Vehicle")
                {
                }
                field("Job Card No.";"Job Card No.")
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
                field("E-Mail";"E-Mail")
                {
                }
                field("Driver's Name";"Driver's Name")
                {
                }
                field("Driver's Phone (Mobile)";"Driver's Phone (Mobile)")
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

    trigger OnOpenPage()
    begin
        IF COFRec.GET("COF No.") THEN BEGIN
          "Delivery Date" := COFRec."Date Delivered";
          "Vehicle No." := COFRec."Vehicle Registration No.";
          Model := COFRec."Model Name";
          "Delivery Time" :=  COFRec."Time Delivered";

        END;
    end;

    var
        COFRec: Record "70034";
}

