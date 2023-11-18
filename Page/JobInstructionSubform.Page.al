page 80012 "Job Instruction Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = Table70036;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Additional Jobs"; "Additional Jobs")
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Quantity Requested"; "Quantity Requested")
                {
                }
                field(Results; Results)
                {
                }
                field("Stock Status"; "Stock Status")
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

