page 80052 "Customer Order List Delivered"
{
    CardPageID = "Customer Order Card";
    Editable = false;
    PageType = List;
    SourceTable = "Customer Order HeaderX";
    SourceTableView = WHERE(Delivered = filter(true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field("Reception Date"; Rec."Reception Date")
                {
                }
                field("Reception Time"; Rec."Reception Time")
                {
                }
                field("Reception Type"; Rec."Reception Type")
                {
                }
                field("Job Type2"; Rec."Job Type2")
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field(Brand; Rec.Brand)
                {
                }
                field("Model Name"; Rec."Model Name")
                {
                }
                field("Vehicle Registration No."; Rec."Vehicle Registration No.")
                {
                }
                field("Parts Ordered Date"; Rec."Parts Ordered Date")
                {
                }
                field("Parts Ordered Time"; Rec."Parts Ordered Time")
                {
                }
                field(Stage; Rec.Stage)
                {
                }
                field(Maintenance2; Rec.Maintenance2)
                {
                    Caption = 'Maintenance';
                }
                field("General Repair"; Rec."General Repair")
                {
                }
                field("Diag/Est"; Rec."Diag/Est")
                {
                    Caption = 'Diagnosis/Estimate';
                }
                field(Internal; Rec.Internal)
                {
                }
                field(Warranty; Rec.Warranty)
                {
                }
                field("B & P"; Rec."B & P")
                {
                }
                field("Customer Waiting"; Rec."Customer Waiting")
                {
                }
                field("Repeat Repair"; Rec."Repeat Repair")
                {
                }
                field("Date Delivered"; Rec."Date Delivered")
                {
                }
                field("Time Delivered"; Rec."Time Delivered")
                {
                }
                field("QC Result"; Rec."QC Result")
                {
                }
                field("QC Comment"; Rec."QC Comment")
                {
                }
                field("Job Classification"; Rec."Job Classification")
                {
                }
                field("P.S.F.U. (Plan) Date"; Rec."P.S.F.U. (Plan) Date")
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

                    IF Rec.Appointment = Rec.Appointment::"1" THEN BEGIN
                        COFRec.SETRANGE(COFRec."No.", Rec."No.");
                        IF COFRec.FIND('-') THEN
                            PAGE.RUNMODAL(50393, COFRec)
                    END ELSE BEGIN
                        COFRec.SETRANGE(COFRec."No.", Rec."No.");
                        IF COFRec.FIND('-') THEN
                            PAGE.RUNMODAL(70079, COFRec)
                    END;
                end;
            }
        }
    }

    var
        COFRec: Record 70034;
}

