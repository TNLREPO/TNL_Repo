page 50332 "COF Job Instruction Item"
{
    AutoSplitKey = true;
    Caption = 'Job Instruction Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = Table50122;

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
                field("Line Type"; "Line Type")
                {
                }
                field("For Sublet"; "For Sublet")
                {
                }
                field("Sublet Code"; "Sublet Code")
                {
                }
                field("Job Type"; "Job Type")
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Editable = "Unit CostEditable";
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field(Amount; Amount)
                {
                }
                field("PR Raised"; "PR Raised")
                {
                }
                field("On Part Order"; "On Part Order")
                {
                }
                field("Stock Status"; "Stock Status")
                {
                }
                field(Results; Results)
                {
                }
                field("Sublet Order No."; "Sublet Order No.")
                {
                }
                field("Sublet Line No."; "Sublet Line No.")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Description"; "Model Description")
                {
                }
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                    Visible = false;
                }
                field("Operation Code"; "Operation Code")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field(Variant; Variant)
                {
                    Visible = false;
                }
                field("Dealer Hourly Rate"; "Dealer Hourly Rate")
                {
                }
                field("Duration in Hrs"; "Duration in Hrs")
                {
                }
                field("Available Quantity"; "Available Quantity")
                {
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
            }
        }
    }

    actions
    {
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
        CustOrderLine: Record 50122;
        CustOrderRec: Record 50119;
        [InDataSet]
        "Unit CostEditable": Boolean;

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        IF "No." = 'SUBLET' THEN
            "Unit CostEditable" := TRUE ELSE
            "Unit CostEditable" := FALSE;
    end;
}

