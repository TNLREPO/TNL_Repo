page 80052 "Customer Order List Delivered"
{
    CardPageID = "Customer Order Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70034;
    SourceTableView = WHERE (Delivered = CONST (Yes));

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
                field("Date Delivered"; "Date Delivered")
                {
                }
                field("Time Delivered"; "Time Delivered")
                {
                }
                field("QC Result"; "QC Result")
                {
                }
                field("QC Comment"; "QC Comment")
                {
                }
                field("Job Classification"; "Job Classification")
                {
                }
                field("P.S.F.U. (Plan) Date"; "P.S.F.U. (Plan) Date")
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

    var
        COFRec: Record "70034";
}

