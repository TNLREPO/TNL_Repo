pageextension 50017 "Purchase Order Subform Ext" extends "Purchase Order Subform"
{
    actions
    {
        /* addafter(OrderTracking)
        {

            action(ImportBOL)
            {
                ApplicationArea = All;
                Caption = 'Import BOL';
                Image = Document;
                ToolTip = 'This function imports bill of laden for vehicles.';

                trigger OnAction()
                begin
                    XMLPORT.RUN(50068, FALSE, TRUE);
                end;
            }
        } */
    }
}
