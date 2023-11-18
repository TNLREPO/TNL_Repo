page 70083 "Job Entry Walk In List"
{
    CardPageID = "Job Entry Walk In Card";
    PageType = List;
    SourceTable = Table50114;
    SourceTableView = WHERE (Next Call Date.=FILTER(<>''),
                            Walk-In=CONST(Yes),
                            Customer's Requests=CONST(Walk-In),
                            For Appt Confirmation=CONST(No));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Service Item";"Service Item")
                {
                }
                field("Chasis No.";"Chasis No.")
                {
                }
                field("Service Code";"Service Code")
                {
                }
                field(Description;Description)
                {
                }
                field("Job Details";"Job Details")
                {
                }
                field("Next Call Date.";"Next Call Date.")
                {
                }
                field("Expected Reception Date";"Expected Reception Date")
                {
                }
                field("Service Due Projected Date";"Service Due Projected Date")
                {
                }
                field("Customer Order Form No.";"Customer Order Form No.")
                {
                }
                field("Customer's Requests";"Customer's Requests")
                {
                }
                field("Call Type";"Call Type")
                {
                }
                field("Walk-In";"Walk-In")
                {
                }
                field("General Repair";"General Repair")
                {
                }
                field("Service Date";"Service Date")
                {
                }
                field("Service Due Kilometer";"Service Due Kilometer")
                {
                }
                field("Serviced Kilometer";"Serviced Kilometer")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Print Appointment Customer List")
            {
                Caption = 'Print Appointment Customer List';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50323;
            }
            action("Generate Schedule")
            {
                Caption = 'Generate Schedule';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Genschedu
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        SETRANGE("Next Call Date.",TODAY);
        "Customer's Requests" := 1;
    end;
}

