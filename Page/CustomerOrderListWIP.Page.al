page 80043 "Customer Order List WIP"
{
    CardPageID = "Customer Order Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70034;
    SourceTableView = WHERE (Delivered = CONST (No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field("Reception Date"; "Reception Date")
                {
                }
                field("Reception Time"; "Reception Time")
                {
                }
                field("Reception Type"; "Reception Type")
                {
                }
                field("Job Type2"; "Job Type2")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field(Brand; Brand)
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Parts Ordered Date"; "Parts Ordered Date")
                {
                }
                field("Parts Ordered Time"; "Parts Ordered Time")
                {
                }
                field(Stage; Stage)
                {
                }
                field(Maintenance2; Maintenance2)
                {
                    Caption = 'Maintenance';
                }
                field("General Repair"; "General Repair")
                {
                }
                field("Diag/Est"; "Diag/Est")
                {
                    Caption = 'Diagnosis/Estimate';
                }
                field(Internal; Internal)
                {
                }
                field(Warranty; Warranty)
                {
                }
                field("B & P"; "B & P")
                {
                }
                field("Customer Waiting"; "Customer Waiting")
                {
                }
                field("Repeat Repair"; "Repeat Repair")
                {
                }
                field("Service Advisor's Name"; "Service Advisor's Name")
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("Service Location"; "Service Location")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Estimate Card")
            {
            }
            action(Card)
            {
                Image = Process;

                trigger OnAction()
                begin

                    IF Appointment = Appointment::"1" THEN BEGIN
                        COFRec.SETRANGE(COFRec."No.", "No.");
                        IF COFRec.FIND('-') THEN
                            PAGE.RUNMODAL(50393, COFRec)
                    END ELSE BEGIN
                        COFRec.SETRANGE(COFRec."No.", "No.");
                        IF COFRec.FIND('-') THEN
                            PAGE.RUNMODAL(70079, COFRec)
                    END;
                end;
            }
        }
    }

    trigger OnDeleteRecord(): Boolean
    begin
        ERROR('You cannot delete this record');
    end;

    var
        COFRec: Record "70034";
}

