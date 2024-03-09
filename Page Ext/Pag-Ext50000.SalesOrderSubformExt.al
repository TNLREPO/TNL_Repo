pageextension 50000 "Sales Order Subform Ext" extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Price")
        {
            Editable = false;
        }

        addafter("Location Code")
        {
            field(Accessory; Rec.Accessory)
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}
