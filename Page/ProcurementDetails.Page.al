page 70121 "Procurement Details"
{
    PageType = List;
    SourceTable = "Procurement Line Detail";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; Rec."Document Type")
                {
                    Visible = false;
                }
                field("Document No."; Rec."Document No.")
                {
                    Visible = true;
                }
                field("Capex Line No."; Rec."Capex Line No.")
                {
                    Visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    Visible = false;
                }
                field("S/N"; Rec."S/N")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        Procurement: Record 70007;
        EditVendorDetails: Boolean;
        ProcurementHeader: Record 70008;
}

