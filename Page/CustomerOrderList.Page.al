page 70074 "Customer Order List"
{
    CardPageID = "COF for Preparation";
    PageType = List;
    SourceTable = Table50119;
    SourceTableView = WHERE (Delivered = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer Order Form No."; "Customer Order Form No.")
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
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("General Repair"; "General Repair")
                {
                }
                field(Maintenance2; Maintenance2)
                {
                    Caption = 'Maintenance';
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

                    IF "Customer's Requests" = "Customer's Requests"::"Walk-In" THEN BEGIN
                        COFRec.SETRANGE(COFRec."Customer Order Form No.", "Customer Order Form No.");
                        IF COFRec.FIND('-') THEN
                            PAGE.RUNMODAL(50393, COFRec)
                    END ELSE BEGIN
                        COFRec.SETRANGE(COFRec."Customer Order Form No.", "Customer Order Form No.");
                        IF COFRec.FIND('-') THEN
                            PAGE.RUNMODAL(70079, COFRec)
                    END;
                end;
            }
        }
    }

    var
        COFRec: Record 50119;
}

