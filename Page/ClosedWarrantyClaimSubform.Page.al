page 50169 "Closed Warranty Claim Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = List;
    SourceTable = Table50039;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Claim Type"; "Claim Type")
                {
                }
                field("Claim No."; "Claim No.")
                {
                    Visible = false;
                }
                field("Vehicle identification Number"; "Vehicle identification Number")
                {
                    Visible = false;
                }
                field("Line No."; "Line No.")
                {
                    Visible = false;
                }
                field(Model; Model)
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Shelf No."; "Shelf No.")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Branch Code"; "Branch Code")
                {
                }
                field("Dealer Code"; "Dealer Code")
                {
                    Visible = false;
                }
                field("Claim Date"; "Claim Date")
                {
                    Visible = false;
                }
                field("Variant Code"; "Variant Code")
                {
                }
                field(Location; Location)
                {
                }
                field("Materia Claimed Before"; "Materia Claimed Before")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field(Amount; Amount)
                {
                }
                field("TNL Approved"; "TNL Approved")
                {
                }
                field("Issue to Dealer"; "Issue to Dealer")
                {
                }
                field("TNL Approved Date"; "TNL Approved Date")
                {
                }
                field("Issue to Dealer Date"; "Issue to Dealer Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

