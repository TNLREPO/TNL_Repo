page 50238 "New Service Appointment"
{
    CardPageID = "Service Appointment Mgt. Card";
    PageType = List;
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
                field("Next Call Date."; "Next Call Date.")
                {
                }
                field("Expected Reception Date"; "Expected Reception Date")
                {
                }
                field("Service Due Projected Date"; "Service Due Projected Date")
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
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50323;
            }
            action("Generate Schedule")
            {
                Caption = 'Generate Schedule';
                Image = "Action";
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
        SETRANGE("Next Call Date.", TODAY);
    end;
}

