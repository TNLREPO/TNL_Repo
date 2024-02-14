pageextension 50007 "User Setup Ext" extends "User Setup"
{
    layout
    {
        addafter(Email)
        {
            field(Name; Rec.Name)
            {
                ApplicationArea = All;
            }
            field(Initials; Rec.Initials)
            {
                ApplicationArea = All;
            }
            field("Department Filter"; Rec."Department Filter")
            {
                ApplicationArea = All;
            }

        }
    }
}
