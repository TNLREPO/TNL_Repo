page 50597 "Pool Car Allocation Card"
{
    PageType = Card;
    SourceTable = Table70003;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Allocation No."; "Allocation No.")
                {
                }
                field("Allocator Name"; "Allocator Name")
                {
                    Editable = false;
                }
                field("Request No."; "Request No.")
                {
                }
                field("Requester Name"; "Requester Name")
                {
                    Editable = false;
                }
                field(Purpose; Purpose)
                {
                    Caption = 'Request Type';
                    Editable = false;
                }
                field(Reason; Reason)
                {
                    Editable = false;
                }
                field(Destination; Destination)
                {
                    Editable = false;
                }
                field("Take-off Location"; "Take-off Location")
                {
                    Editable = false;
                }
                field("Pickup Date"; "Pickup Date")
                {
                    Editable = false;
                }
                field("Return Date"; "Return Date")
                {
                    Editable = false;
                }
                field("Expected Hours"; "Expected Hours")
                {
                    Editable = false;
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Security Officer"; "Security Officer")
                {
                }
                field("Return Time"; "Return Time")
                {
                }
                field("Actual Hours"; "Actual Hours")
                {
                }
                field("Pickup Time"; "Pickup Time")
                {
                }
                field("Actual Return Date"; "Actual Return Date")
                {
                }
                field("Actual Return Time"; "Actual Return Time")
                {
                }
                field("Model Name"; "Model Name")
                {
                    Editable = false;
                }
                field("Driver Name"; "Driver Name")
                {
                }
                field(Allocate; Allocate)
                {
                }
                field("Allocation Date"; "Allocation Date")
                {
                    Editable = false;
                }
            }
            part(Lines; 50598)
            {
                Caption = 'Lines';
                SubPageLink = Document No.=FIELD(Allocation No.);
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Print)
            {
                Image = Print;
                Promoted = true;
                PromotedCategory = "Report";

                trigger OnAction()
                begin
                    POOLAREC.SETRANGE(POOLAREC."Allocation No.", "Allocation No.");
                    IF POOLAREC.FINDFIRST THEN
                        REPORT.RUNMODAL(50434, TRUE, TRUE, POOLAREC);
                end;
            }
        }
    }

    var
        POOLAREC: Record "70003";
}

