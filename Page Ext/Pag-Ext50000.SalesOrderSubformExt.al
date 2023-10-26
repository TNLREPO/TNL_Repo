pageextension 50000 "Sales Order Subform Ext" extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Price")
        {
            Editable = false;
        }
    }
}
