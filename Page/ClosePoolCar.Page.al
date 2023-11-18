page 50599 "Close Pool Car"
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
                    Editable = false;
                }
                field("Request No."; "Request No.")
                {
                    Editable = false;
                }
                field("Registration No."; "Registration No.")
                {
                    Editable = false;
                }
                field("Model Name"; "Model Name")
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
                field("Requester Name"; "Requester Name")
                {
                    Editable = false;
                }
                field(Remark; Remark)
                {
                }
                field("Actual Return Date"; "Actual Return Date")
                {
                    Caption = 'Actual Return Date';
                    Editable = true;
                }
                field("Actual Return Time"; "Actual Return Time")
                {
                }
            }
            group(Return)
            {
                field("Return Location1"; "Return Location1")
                {
                    Caption = 'Return Location';
                }
                field("Initial Mileage"; "Initial Mileage")
                {
                }
                field("Mileage on Return"; "Mileage on Return")
                {
                }
                field("Mileage Covered"; "Mileage Covered")
                {
                    Editable = false;
                }
                field("Security Officer"; "Security Officer")
                {
                }
                field("Return Location2"; "Return Location2")
                {
                    Caption = 'Return Location';
                    Editable = ReturnLocation2;
                }
                field("Mileage on Return2"; "Mileage on Return2")
                {
                    Caption = 'Mileage on Return';
                    Editable = MileageOnReturn2;
                }
                field("Mileage in Transit"; "Mileage in Transit")
                {
                    Editable = false;
                }
                field(Status; Status)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
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
                        REPORT.RUNMODAL(50440, TRUE, TRUE, POOLAREC);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF "Take-off Location" <> "Return Location1" THEN BEGIN
            ReturnLocation2 := TRUE;
            MileageOnReturn2 := TRUE;
        END;
    end;

    trigger OnOpenPage()
    begin
        IF "Take-off Location" <> "Return Location1" THEN BEGIN
            ReturnLocation2 := TRUE;
            MileageOnReturn2 := TRUE;
        END;
    end;

    var
        POOLAREC: Record "70003";
        ReturnLocation2: Boolean;
        MileageOnReturn2: Boolean;
}

