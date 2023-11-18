page 80007 "Customer Order Subform"
{
    AutoSplitKey = true;
    Caption = 'Parts and Labour';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = Table70036;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Customer Class"; "Customer Class")
                {
                }
                field("Additional Jobs"; "Additional Jobs")
                {
                }
                field("Job Type"; "Job Type")
                {
                }
                field("Sent to Parts"; "Sent to Parts")
                {
                    Editable = false;
                }
                field("Part Collected"; "Part Collected")
                {
                }
                field("Job Category"; "Job Category")
                {
                }
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                    Importance = Promoted;
                }
                field(Description; Description)
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                }
                field("Quantity Available"; "Quantity Available")
                {
                }
                field("Quantity Requested"; "Quantity Requested")
                {
                }
                field("Skip Zero Qty"; "Skip Zero Qty")
                {
                }
                field("Labour Hour"; "Labour Hour")
                {
                }
                field("Quantity Received"; "Quantity Received")
                {
                    Editable = true;
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Editable = "Unit CostEditable";
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Discount %"; "Discount %")
                {
                }
                field("Line Discount Amount"; "Line Discount Amount")
                {
                    Editable = false;
                }
                field(Amount; Amount)
                {
                }
                field("Amount Inc. VAT"; "Amount Inc. VAT")
                {
                }
                field("Stock Status"; "Stock Status")
                {
                }
                field("PR Raised"; "PR Raised")
                {
                }
                field("On Part Order"; "On Part Order")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Operation Code"; "Operation Code")
                {
                }
                field("Model Description"; "Model Description")
                {
                }
                field("Variant Code"; "Variant Code")
                {
                    Visible = false;
                }
                field("VAT Category"; "VAT Category")
                {
                }
                field("VAT Amount"; "VAT Amount")
                {
                    Editable = false;
                }
                field(Difference; Difference)
                {
                }
                field(Stock; Stock)
                {
                }
                field(EDA; EDA)
                {
                }
                field(ETA; ETA)
                {
                }
                field("Shipment Status"; "Shipment Status")
                {
                }
                field(Reason; Reason)
                {
                }
                field("Duration in Hrs"; "Duration in Hrs")
                {
                }
                field("Dealer Hourly Rate"; "Dealer Hourly Rate")
                {
                }
                field("Flat Rate"; "Flat Rate")
                {
                }
                field("FR Amount"; "FR Amount")
                {
                }
                field("FR VAT Amount"; "FR VAT Amount")
                {
                }
                field("FR Amount Inc VAT"; "FR Amount Inc VAT")
                {
                }
                field(Confirmed; Confirmed)
                {
                }
                field("Confirmed by"; "Confirmed by")
                {
                }
                field("Bin/Shelf No."; "Bin/Shelf No.")
                {
                }
                field("Document No."; "Document No.")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(GetSubstitute)
            {
                Caption = 'Get Substitute';
                Image = Replan;

                trigger OnAction()
                begin
                    ItemSubstitution.SETRANGE("No.", "No.");
                    ItemSubstitution.SETRANGE("Variant Code", "Variant Code");

                    IF PAGE.RUNMODAL(5718, ItemSubstitution) = ACTION::LookupOK THEN BEGIN
                        VALIDATE("No.", ItemSubstitution."Substitute No.");
                        VALIDATE("Variant Code", ItemSubstitution."Variant Code");
                        MODIFY;
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        OnAfterGetCurrRecord;
    end;

    var
        [InDataSet]
        "Unit CostEditable": Boolean;
        AfterDiscount: Decimal;
        ItemSubstitution: Record "5715";

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        IF "No." = 'SUBLET' THEN
            "Unit CostEditable" := TRUE ELSE
            "Unit CostEditable" := FALSE;
    end;
}

