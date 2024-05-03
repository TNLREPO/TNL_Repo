pageextension 50017 "Purchase Order Subform Ext" extends "Purchase Order Subform"
{
    layout
    {
        modify("Line No.")
        {
            Editable = false;
        }

        addafter("Unit Cost (LCY)")
        {

            field("Year of Production"; Rec."Year of Production")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }

        addafter("Location Code")
        {
            field("Color Group"; Rec."Color Group")
            {
                ApplicationArea = All;
                Visible = true;
            }

            field(Colour; Rec.Colour)
            {
                ApplicationArea = All;
                Visible = true;
            }

            field("Colour Description"; Rec."Colour Description")
            {
                ApplicationArea = All;
                Visible = true;
                Editable = false;
            }


        }

    }
}